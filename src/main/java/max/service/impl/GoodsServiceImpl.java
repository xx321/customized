package max.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import max.dao.GoodsDaoI;
import max.model.Mgoods;
import max.pageModel.Goods;
import max.service.GoodsServiceI;
import max.util.MyBeanUtils;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import sy.pageModel.DataGrid;
import sy.pageModel.PageHelper;

@Service
public class GoodsServiceImpl implements GoodsServiceI {

	@Autowired
	private GoodsDaoI goodsDao;
	
	@Override
	public DataGrid dataGrid(Goods goods, PageHelper ph) {
		DataGrid dg = new DataGrid();
		Map<String, Object> params = new HashMap<String, Object>();
		
		String hql = "from Mgoods m ";
		String joinHql = " left join fetch m.morder o ";
		String whereHql = whereHql(goods, params);
		String orderHql = orderHql(ph);

		List<Mgoods> l = goodsDao.find(hql + joinHql + whereHql + orderHql, params, ph.getPage(), ph.getRows());
		List<Goods> gl = new ArrayList<Goods>();
		
		if (l != null && l.size() >0) {
			for (Mgoods m : l) {
				Goods g = new Goods();
				MyBeanUtils.copyProperties(m, g);
				gl.add(g);
			}
		}
		
		dg.setRows(gl);
		dg.setTotal(goodsDao.count("select count(*) " + hql + " left join m.morder o " + whereHql, params));
		return dg;
	}

	private String whereHql(Goods goods, Map<String, Object> params) {
		String whereHql = "";
		if (goods != null) {
			whereHql += " where 1=1 ";
			if (goods.getOrderId() != null && !goods.getOrderId().equalsIgnoreCase("")) {
				whereHql += " and o.id = :oId";
				params.put("oId", goods.getOrderId());
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

}
