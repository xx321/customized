package max.dao;

import java.util.List;

import max.model.Moption;
import sy.dao.BaseDaoI;

/**
 * 選項資料庫操作類
 * 
 * @author 建龍
 * 
 */
public interface OptionDaoI extends BaseDaoI<Moption> {

	/**
	 * @param pid 父節點ID
	 * @return 子節點列表
	 */
	List<Moption> findByPid(String pid);
	
	/**
	 * @param typeId 選項類型
	 * @return  父節點列表
	 */
	List<Moption> findListByTypdId(String typeId, Integer status);

}
