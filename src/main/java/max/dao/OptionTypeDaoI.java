package max.dao;

import max.model.Moptiontype;
import sy.dao.BaseDaoI;

/**
 * 選項類型資料庫操作類
 * 
 * @author 建龍
 * 
 */
public interface OptionTypeDaoI extends BaseDaoI<Moptiontype> {

	/**
	 * 通過ID獲得選項類型
	 * 
	 * @param id
	 * @return
	 */
	public Moptiontype getById(String id);

}
