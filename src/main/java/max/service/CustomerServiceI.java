package max.service;

import max.pageModel.Customer;
import sy.pageModel.DataGrid;
import sy.pageModel.PageHelper;

/**
 * 客戶類型服務
 * 
 * @author 建龍
 * 
 */
public interface CustomerServiceI {
	
	/**
	 * 會員登錄
	 * 
	 * @param customer
	 * 				裏面包含登錄名和密碼
	 * @return 會員對像
	 */
	Customer login(Customer customer);
	
	/**
	 * 會員註册
	 * 
	 * @param customer
	 *            會員對像
	 * @throws Exception
	 */
	void reg(Customer customer) throws Exception;
	
	/**
	 * 獲取會員數據表格
	 * 
	 * @param csutomer
	 * @return
	 */
	DataGrid dataGrid(Customer csutomer, PageHelper ph);
	
	/**
	 * 添加會員
	 * 
	 * @param user
	 */
	void add(Customer customer) throws Exception;
	
	/**
	 * 獲得客戶對像
	 * 
	 * @param id
	 * @return
	 */
	Customer get(String id);
	
	/**
	 * 编辑會員
	 * 
	 * @param customer
	 */
	void edit(Customer customer) throws Exception;

	/**
	 * 删除會員
	 * 
	 * @param id
	 */
	void delete(String id);
	
	/**
	 * 编辑會員密码
	 * 
	 * @param user
	 */
	void editPwd(Customer customer);

}
