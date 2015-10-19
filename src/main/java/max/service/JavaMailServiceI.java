package max.service;

import max.pageModel.JavaMail;
import max.pageModel.Order;
import sy.pageModel.DataGrid;
import sy.pageModel.PageHelper;

/**
 * 郵件帳號類
 * 
 * @author 建龍
 * 
 */
public interface JavaMailServiceI {
	
	/**
	 * 獲取郵件帳號數據表格
	 * 
	 * @param javaMail
	 * @return
	 */
	DataGrid dataGrid(JavaMail javaMail, PageHelper ph);
	
	/**
	 * 添加郵件帳號
	 * 
	 * @param javaMail
	 */
	void add(JavaMail javaMail);
	
	/**
	 * 獲得郵件帳號
	 * 
	 * @param id
	 * @return
	 */
	JavaMail get(String id);
	
	/**
	 * 编辑郵件帳號
	 * 
	 * @param javaMail
	 */
	void edit(JavaMail javaMail);
	
	/**
	 * 取得預設的郵件帳號
	 * @param id
	 * @return
	 */
	JavaMail getPreset();

	/**
	 * 寄出完成訂單信件
	 * @param o
	 * @throws Exception 
	 */
	boolean sendOrderMail(Order o) throws Exception;

}
