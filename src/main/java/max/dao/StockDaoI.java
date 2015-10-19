package max.dao;

import java.util.Map;

import max.model.MoptionMsize;
import max.model.Morder;
import max.pageModel.OptionMsize;
import sy.dao.BaseDaoI;

/**
 * 庫存資料庫操作類
 * 
 * @author 建龍
 * 
 */
public interface StockDaoI extends BaseDaoI<MoptionMsize> {

	/**
	 * 根據選項取得庫存數
	 * @param id
	 * @return
	 */
	Map<String, OptionMsize> findByOptionId(String id);

	/**
	 * 訂單作廢、取消，恢復庫存數量
	 * @param m
	 */
	void recovery(Morder order);
	
}
