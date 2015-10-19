package max.service.impl;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import max.dao.GoodsDaoI;
import max.dao.OptionDaoI;
import max.dao.OrderDaoI;
import max.dao.RecipientDaoI;
import max.dao.StockDaoI;
import max.model.Mgoods;
import max.model.Moption;
import max.model.Morder;
import max.model.Mrecipient;
import max.pageModel.Goods;
import max.pageModel.Order;
import max.pageModel.Recipient;
import max.service.OrderServiceI;
import max.util.CodeUtil;
import max.util.DateUtil;
import max.util.MyBeanUtils;
import max.util.UuidUtils;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import sy.pageModel.DataGrid;
import sy.pageModel.PageHelper;

@Service
public class OrderServiceImpl implements OrderServiceI {

	@Autowired
	private OrderDaoI orderDao;
	
	@Autowired
	private OptionDaoI optionDao;
	
	@Autowired
	private GoodsDaoI goodsDao;
	
	@Autowired
	private RecipientDaoI recipientDao;
	
	@Autowired
	private StockDaoI stockDao;
	
	@Override
	public DataGrid dataGrid(Order order, PageHelper ph) {
		DataGrid dg = new DataGrid();
		Map<String, Object> params = new HashMap<String, Object>();
		
		String hql = "from Morder m ";
		String joinHql = " left join fetch m.mcustomer c join fetch m.mrecipient r ";
		String whereHql = whereHql(order, params);
		String orderHql = orderHql(ph);
		
		List<Morder> l = orderDao.find(hql + joinHql + whereHql + orderHql, params, ph.getPage(), ph.getRows());
		List<Order> ol = new ArrayList<Order>();
		
		if (l != null && l.size() >0) {
			for (Morder m : l) {
				Order o = new Order();
				MyBeanUtils.copyProperties(m, o);
				ol.add(o);
			}
		}
		
		dg.setRows(ol);
		dg.setTotal(orderDao.count("select count(*) " + hql + "left join m.mcustomer c left join m.mrecipient r " + whereHql, params));
		return dg;
	}
	
	private String whereHql(Order order, Map<String, Object> params) {
		String whereHql = "";
		if (order != null) {
			whereHql += " where 1=1 ";
			if (order.getRecipientName() != null && !order.getRecipientName().equalsIgnoreCase("")) {
				whereHql += " and r.name like :rname";
				params.put("rname", "%%" + order.getRecipientName() + "%%");
			}
			if (order.getRecipientPhone() != null && !order.getRecipientPhone().equalsIgnoreCase("")) {
				whereHql += " and r.phone = :rphone";
				params.put("rphone", order.getRecipientPhone());
			}
			if (order.getState() != null) {
				if (order.getState().intValue() == 3) {
					whereHql += " and m.state in (3,-1,-2)";
				} else {
					whereHql += " and m.state = :state";
					params.put("state", order.getState());
				}
			}
		}
		return whereHql;
	}
	
	private String orderHql(PageHelper ph) {
		String orderString = "";
		if (ph.getSort() != null && ph.getOrder() != null) {
			orderString = " order by m." + ph.getSort() + " " + ph.getOrder();
		}
		return orderString;
	}

	@Override
	public boolean checkout(String id) {
		Morder m = orderDao.get(Morder.class, id);
		if (m!=null) {
			m.setCheckoutDate(new Date());
			m.setState(1);
			return true;
		}
		return false;
	}
	
	@Override
	public void working(String id) {
		Morder m = orderDao.get(Morder.class, id);
		if (m!=null) {
			m.setWorkingDate(new Date());
			m.setState(2);
		}
	}
	
	@Override
	public void ship(String id) {
		Morder m = orderDao.get(Morder.class, id);
		if (m!=null) {
			m.setShipDate(new Date());
			m.setState(3);
		}
	}

	@Override
	public Order add(Order order, Recipient recipient) {
		//根據傳送進來的參數設定訂單訊息
		Morder o = new Morder();	
		MyBeanUtils.copyProperties(order, o);
		//設定訂單編號 (yyyyMMdd001開始)
		String code = CodeUtil.getOrderCode(o.getCreateDate(), orderDao.countByCreateDate(o.getCreateDate()));
		o.setCode(code);
		//保在訂單中的收件人訊息
		Mrecipient r = new Mrecipient();
		r.setId(UuidUtils.compressedUuid());
		if (recipient != null)
			BeanUtils.copyProperties(recipient, r, new String[] { "id" });
		r.getMorders().add(o);
		o.setMrecipient(r);
		recipientDao.save(r);
		//保存訂單
		orderDao.save(o);		
		//保存訂單裡面的所有商品項目
		if (order.getGoodses() != null && order.getGoodses().size() > 0) {
			for (Goods goods : order.getGoodses()) {
				Mgoods g = new Mgoods();
				BeanUtils.copyProperties(goods, g);
				//對商品新增兩個欄位，用於取得庫存數量(顏色選項ID、尺寸ID)
				g.setStockOptionId(goods.getT3Id());
				g.setStockSizeId(goods.getStockSizeId());
				setOptions(g,goods);
				g.setMorder(o);
				o.getMgoodses().add(g);
				goodsDao.save(g);
			}
		}
		//根據訂單參數，設定頁面模型送回前台
		MyBeanUtils.copyProperties(o, order);
		order.getGoodses().clear();
		if (o.getMgoodses() != null && o.getMgoodses().size() >0) {
			for (Mgoods m : o.getMgoodses()) {
				Goods g = new Goods();
				MyBeanUtils.copyProperties(m, g);
				order.getGoodses().add(g);
			}		
		}
		return order;
	}
	
	private void setOptions(Mgoods g, Goods goods) {
		Moption m = null;
		if (goods.getT0Id() != null) {
			m = optionDao.get(Moption.class, goods.getT0Id());
			if (m != null)
				g.getMoptions().add(m);
		}
		if (goods.getT0Id() != null) {
			m = optionDao.get(Moption.class, goods.getT1Id());
			if (m != null)
				g.getMoptions().add(m);
		}
		if (goods.getT0Id() != null) {
			m = optionDao.get(Moption.class, goods.getT2Id());
			if (m != null)
				g.getMoptions().add(m);
		}
		if (goods.getT0Id() != null) {
			m = optionDao.get(Moption.class, goods.getT3Id());
			if (m != null)
				g.getMoptions().add(m);
		}
		if (goods.getT0Id() != null) {
			m = optionDao.get(Moption.class, goods.getT4Id());
			if (m != null)
				g.getMoptions().add(m);
		}
		if (goods.getT0Id() != null) {
			m = optionDao.get(Moption.class, goods.getT5Id());
			if (m != null)
				g.getMoptions().add(m);
		}
		if (goods.getT0Id() != null) {
			m = optionDao.get(Moption.class, goods.getT6Id());
			if (m != null)
				g.getMoptions().add(m);
		}
	}

	@Override
	public void invalidTask() {
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("createDate", DateUtil.addDay(new Date(), -3));
		List<Morder> l = orderDao.find("from Morder m where m.state = 0 and m.createDate < :createDate", params);
		if (l!=null && l.size()>0) {
			for (Morder order : l) {
				order.setState(new Integer(-2));
				stockDao.recovery(order);
			}
		}
	}

	@Override
	public void invalid(String id) {
		Morder order = orderDao.get(Morder.class, id);
		if (order!=null) {
			order.setState(new Integer(-1));
			stockDao.recovery(order);
		}	
	}

	@Override
	public Order get(String id) {
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("id", id);
		Morder order = orderDao.get("from Morder m left join fetch m.mgoodses where m.id=:id", params);
		
		Order o = new Order();
		if (order != null) {
			BeanUtils.copyProperties(order, o);
			o.setDeliveryDate(DateUtil.addDay(order.getCreateDate(), 3));
			if (order.getMgoodses().size()>0) {
				for (Mgoods m : order.getMgoodses()) {
					Goods g = new Goods();
					MyBeanUtils.copyProperties(m, g);
					o.getGoodses().add(g);
				}
			}
		}
		return o;
	}
}
