package max.dao;

import max.model.Mcustomer;
import sy.dao.BaseDaoI;

/**
 * 客戶類型資料庫操作類
 * 
 * @author 建龍
 * 
 */
public interface CustomerDaoI extends BaseDaoI<Mcustomer> {
	
	/**
	 * 通過ID獲得客戶對像
	 * 
	 * @param id
	 * @return
	 */
	public Mcustomer getById(String id);
	
}
