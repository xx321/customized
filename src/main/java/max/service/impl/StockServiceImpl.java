package max.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import max.dao.StockDaoI;
import max.model.MoptionMsize;
import max.model.modelKey.MoptionMsizeId;
import max.pageModel.Goods;
import max.pageModel.OptionMsize;
import max.pageModel.Order;
import max.service.StockServiceI;
import max.util.MyBeanUtils;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import sy.pageModel.DataGrid;
import sy.pageModel.PageHelper;

@Service
public class StockServiceImpl implements StockServiceI {
	
	@Autowired
	private StockDaoI stockDao;
	
	@Override
	public DataGrid dataGrid(OptionMsize optionMsize, PageHelper ph) {
		DataGrid dg = new DataGrid();
		List<OptionMsize> ol = new ArrayList<OptionMsize>();
		Map<String, Object> params = new HashMap<String, Object>();
		String hql = " from MoptionMsize m ";
		List<MoptionMsize> l = stockDao.find(hql + whereHql(optionMsize, params) + orderHql(ph), params, ph.getPage(), ph.getRows());
		if (l != null && l.size() > 0) {
			for (MoptionMsize m : l) {
				OptionMsize o = new OptionMsize();
				MyBeanUtils.copyProperties(m, o);
				ol.add(o);
			}
		}
		dg.setRows(ol);
		dg.setTotal(stockDao.count("select count(*) " + hql + whereHql(optionMsize, params), params));
		return dg;
	}

	private String whereHql(OptionMsize optionMsize, Map<String, Object> params) {
		String whereHql = "";
		if (optionMsize != null) {
			whereHql += " where 1=1 ";
			if (optionMsize.getQuantity() != null) {
				whereHql += " and m.quantity < :quantity";
				params.put("quantity", optionMsize.getQuantity());
			}
			
			// TODO Auto-generated method stub 未完成!
			
		}
		return whereHql;
	}

	private String orderHql(PageHelper ph) {
		String orderString = "";
		if (ph.getSort() != null && ph.getOrder() != null) {
			if (ph.getSort().equals("optionName")) {
				ph.setSort("id.moptionId");
			}
			orderString = " order by m." + ph.getSort() + " " + ph.getOrder();
			// TODO Auto-generated method stub 未完成!
		}		
		return orderString;
	}

	@Override
	public OptionMsize get(String optionId, String sizeId) {
		MoptionMsizeId id = new MoptionMsizeId(optionId, sizeId);
		MoptionMsize m = stockDao.get(MoptionMsize.class, id);
		OptionMsize o = new OptionMsize();
		if (m!=null) {
			MyBeanUtils.copyProperties(m, o);
		}
		return o;
	}

	@Override
	public void edit(OptionMsize optionMsize) {
		MoptionMsizeId id = new MoptionMsizeId(optionMsize.getOptionId(), optionMsize.getSizeId());
		MoptionMsize m = stockDao.get(MoptionMsize.class, id);
		if (m!=null) {
			m.setQuantity(optionMsize.getQuantity());
		}
	}

	@Override
	public void edit(Order order) throws Exception {
		if(order.getGoodses() != null && order.getGoodses().size() > 0) {		
			for (Goods goods : order.getGoodses()) {
				MoptionMsizeId id = new MoptionMsizeId(goods.getT3Id(),goods.getStockSizeId());
				MoptionMsize m = stockDao.get(MoptionMsize.class, id);
				if (m!=null) {
					if (m.getQuantity() - goods.getQuantity() < 0)
						throw new RuntimeException();
					m.setQuantity(m.getQuantity()-goods.getQuantity());
				}
			}
		}
	}

}
