package max.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
//日期格式轉化，工具類
public class DateUtil {
	// 各种时间格式
	public static final SimpleDateFormat date_sdf = new SimpleDateFormat("yyyy-MM-dd");
	// 各种时间格式
	public static final SimpleDateFormat yyyyMMdd = new SimpleDateFormat("yyyyMMdd");
	// 各种时间格式
	public static final SimpleDateFormat date_sdf_wz = new SimpleDateFormat("yyyy年MM月dd日");
	
	public static final SimpleDateFormat time_sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
	
	public static final SimpleDateFormat yyyymmddhhmmss = new SimpleDateFormat("yyyyMMddHHmmss");
	
	public static final SimpleDateFormat short_time_sdf = new SimpleDateFormat("HH:mm");
	
	public static final  SimpleDateFormat datetimeFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	
	public static final  SimpleDateFormat dateforJsp = new SimpleDateFormat("yyyy/MM/dd");
	
	// 以毫秒表示的时间
//	private static final long DAY_IN_MILLIS = 24 * 3600 * 1000;
//	private static final long HOUR_IN_MILLIS = 3600 * 1000;
//	private static final long MINUTE_IN_MILLIS = 60 * 1000;
//	private static final long SECOND_IN_MILLIS = 1000;
	
	/**
	 * 当前日期
	 * 
	 * @return 系统当前时间
	 */
	public static Date getDate() {
		return new Date();
	}
	
	/**
	 * 字符串转换成日期
	 * @param str
	 * @param sdf
	 * @return
	 */
	public static Date str2Date(String str, SimpleDateFormat sdf) {
		if (null == str || "".equals(str)) {
			return null;
		}
		Date date = null;
		try {
			date = sdf.parse(str);
			return date;
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return null;
	}

	/**
	 * 日期转换为字符串
	 * 
	 * @param date
	 *            日期
	 * @param format
	 *            日期格式
	 * @return 字符串
	 */
	public static String date2Str(SimpleDateFormat date_sdf) {
		Date date=getDate();
		if (null == date) {
			return null;
		}
		return date_sdf.format(date);
	}
	/**
	 * 格式化时间
	 * @param data
	 * @param format
	 * @return
	 */
	public static String dataformat(String data,String format)
	{
		SimpleDateFormat sformat = new SimpleDateFormat(format);
		Date date=null;
		try {
			 date=sformat.parse(data);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return sformat.format(date);
	}
	/**
	 * 日期转换为字符串
	 * 
	 * @param date
	 *            日期
	 * @param format
	 *            日期格式
	 * @return 字符串
	 */
	public static String date2Str(Date date, SimpleDateFormat date_sdf) {
		if (null == date) {
			return null;
		}
		return date_sdf.format(date);
	}
	/**
	 * 日期转换为字符串
	 * 
	 * @param date
	 *            日期
	 * @param format
	 *            日期格式
	 * @return 字符串
	 */
	public static String getDate(String format) {
		Date date=new Date();
		SimpleDateFormat sdf = new SimpleDateFormat(format);
		return sdf.format(date);
	}

	public static Date addDay(Date date, int n) {
	      try {   
	            Calendar calendar = Calendar.getInstance();   
	            calendar.setTime(date);   
	            calendar.add(Calendar.DATE, n);//增加一天   
	            //cd.add(Calendar.MONTH, n);//增加一个月   
	  
	            return calendar.getTime();
	        } catch (Exception e) {   
	        	
	            return null;   
	        } 
	}
	
	public static void main(String[] args) {
		Date today = new Date();
		Date createTimeStart = DateUtil.str2Date(DateUtil.date2Str(today, DateUtil.yyyyMMdd), DateUtil.yyyyMMdd);
		
		System.out.println(DateUtil.date2Str(createTimeStart, datetimeFormat));
	}

}
