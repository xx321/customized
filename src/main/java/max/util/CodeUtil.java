package max.util;

import java.util.Date;

public class CodeUtil {

	/**
	 * 回傳一個時間+序號的code(訂單編號)
	 * @param createDate 2015年5月19日
	 * @param count 16
	 * @return "20150519017" - 遞增 1
	 */
	public static String getOrderCode(Date createDate,Integer count) {
		String orderCode = "";
		orderCode += DateUtil.date2Str(createDate, DateUtil.yyyyMMdd);
		orderCode += String.format("%03d", count+1);
		return orderCode;
	}

}