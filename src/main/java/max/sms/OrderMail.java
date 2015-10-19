package max.sms;

import java.util.HashMap;
import java.util.Map;

import max.pageModel.Order;
import max.util.DateUtil;

public class OrderMail {
	
	/**
	 * 取得訂單信件中模版的參數變數(dateMap)
	 * @param order
	 * @return
	 */
	public static Map<String, Object> getDateMap(Order order) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("code", order.getCode());
		map.put("createDate", DateUtil.date2Str(order.getCreateDate(), DateUtil.datetimeFormat));
		map.put("shipDate", DateUtil.date2Str(DateUtil.addDay(order.getCreateDate(), 3), DateUtil.date_sdf));
		map.put("totalAmount", order.getTotalAmount());
		
		map.put("goodsList", order.getGoodses());
		return map;
	}
}
