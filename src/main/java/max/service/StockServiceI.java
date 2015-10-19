package max.service;

import max.pageModel.OptionMsize;
import max.pageModel.Order;
import sy.pageModel.DataGrid;
import sy.pageModel.PageHelper;

/**
 * 庫存服務
 * 
 * @author 建龍
 * 
 */
public interface StockServiceI {
	
	/**
	 * 獲取庫存數據表格
	 * @param optionMsize 參數	
	 * @param ph 分頁幫助類
	 * @return
	 */
	DataGrid dataGrid(OptionMsize optionMsize, PageHelper ph);
	
	/**
	 * 獲得一個庫存類
	 * @param optionId
	 * @param sizeId
	 * @return
	 */
	OptionMsize get(String optionId, String sizeId);

	/**
	 * 修改庫存
	 * @param optionMsize
	 */
	void edit(OptionMsize optionMsize);

	/**
	 * 根據訂單-更新庫存數
	 * @param order
	 * @throws Exception 
	 */
	void edit(Order order) throws Exception;
}
