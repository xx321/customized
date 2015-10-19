package max.service;

import max.pageModel.Order;
import max.pageModel.Recipient;
import sy.pageModel.DataGrid;
import sy.pageModel.PageHelper;

/**
 * 訂單服務
 * 
 * @author 建龍
 * 
 */
public interface OrderServiceI {

	/**
	 * 獲取訂單數據表格
	 * 
	 * @param csutomer
	 * @return
	 */
	DataGrid dataGrid(Order order, PageHelper ph);

	/**
	 * 單據結帳
	 * 
	 * @param id 單據id
	 */
	boolean checkout(String id);
	
	/**
	 * 單據加工
	 * 
	 * @param id
	 */
	void working(String id);
	
	/**
	 * 單據出貨
	 * 
	 * @param id 單據id
	 */
	void ship(String id);

	/**
	 * 
	 * 添加客製化訂單
	 * @param order 前台session 保存的訂單(裡面包含goods集合參數)
	 * @param recipient 前台傳進來的收件人訊息
	 * @param customer 前台session 保存的客戶訊息
	 * @return 
	 */
	Order add(Order order, Recipient recipient);

	/**
	 * 每天定時晚間12點
	 * 掃描未結帳的訂單
	 * 進行作廢
	 */
	void invalidTask();

	/**
	 * 根據訂單編號，作廢訂單
	 * @param id
	 */
	void invalid(String id);

	/**
	 * 根據訂單編號，取得訂單訊息
	 * @param id
	 * @return
	 */
	Order get(String id);
}
