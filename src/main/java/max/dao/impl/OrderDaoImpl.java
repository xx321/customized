package max.dao.impl;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import max.dao.OrderDaoI;
import max.model.Morder;
import max.util.DateUtil;

import org.springframework.stereotype.Repository;

import sy.dao.impl.BaseDaoImpl;

@Repository
public class OrderDaoImpl extends BaseDaoImpl<Morder> implements OrderDaoI {

	@Override
	public Integer countByCreateDate(Date createDate) {
		// TODO Auto-generated method stub	
		//將日期時間，轉換成 : yyyyMMdd 00:00:00
		Date createDateStart = DateUtil.str2Date(DateUtil.date2Str(createDate, DateUtil.yyyyMMdd), DateUtil.yyyyMMdd);
		Date createDateEnd = DateUtil.addDay(createDateStart, 1);
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("createDateStart",createDateStart);
		params.put("createDateEnd",createDateEnd);
		
		Long count = this.count("select count(*) from Morder m where m.createDate >= :createDateStart and m.createDate < :createDateEnd", params);
		return count.intValue();
	}

}
