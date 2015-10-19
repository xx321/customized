package max.service;

import max.pageModel.BuySafe;
import max.pageModel.Order;
import max.pageModel.Recipient;

/**
 * 首頁服務
 * 
 * @author 建龍
 * 
 */
public interface HomeServiceI {

	/**
	 * 
	 * 添加客製化訂單
	 * 並且在完成之後發出郵件通知客戶完成交易訊息
	 * 
	 * @param order 前台session 保存的訂單(裡面包含goods集合參數)
	 * @param recipient 前台傳進來的收件人訊息
	 * @param customer 前台session 保存的客戶訊息
	 * @return 
	 * @throws Exception 
	 */
	Order add(Order order, Recipient recipient) throws Exception;

	
	/**
	 *	判斷紅陽回傳的檢查碼是否正確，並且回覆代碼 為 00 : 表示交易成功!
	 *	如果通過，單據進行結帳動作。
	 * @param buySafe
	 * @return
	 */
	boolean checkout(BuySafe buySafe);

	/**
	 * 完成訂單，寄送確認郵件
	 * @param order
	 * @throws Exception 
	 */
	void sendOrderMail(Order order) throws Exception;
}
