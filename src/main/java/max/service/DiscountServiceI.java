package max.service;

import max.pageModel.Discount;

/**
 * 折扣類型服務
 * 
 * @author 建龍
 * 
 */
public interface DiscountServiceI {
	
	/**
	 * 獲得一個折扣參數
	 * 
	 * @param id
	 * @return
	 */
	Discount get(String id);
	
	/**
	 * 修改折扣參數
	 * 
	 * @param option
	 * @return 
	 */
	void edit(Discount discount);

}
