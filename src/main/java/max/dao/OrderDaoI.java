package max.dao;

import java.util.Date;

import max.model.Morder;
import sy.dao.BaseDaoI;

/**
 * 訂單資料庫操作類
 * 
 * @author 建龍
 * 
 */
public interface OrderDaoI extends BaseDaoI<Morder> {

	/**
	 * 取得創建訂單當天已完成的訂單數(不包含當前創建的這筆)
	 * @param createTime
	 * @return
	 */
	Integer countByCreateDate(Date createDate);
}
