package max.service;

import max.pageModel.Size;
import sy.pageModel.DataGrid;
import sy.pageModel.PageHelper;

/**
 *  尺寸類型服務
 * 
 * @author 建龍
 * 
 */
public interface SizeServiceI {
	
	/**
	 * 尺寸的grid(添加、編輯 : 襪子顏色頁面使用)
	 * 
	 * @param ph
	 * @return
	 */
	DataGrid dataGrid(PageHelper ph);

	/**
	 * 添加尺寸
	 * @param size
	 */
	void add(Size size);

	/**
	 * 取得尺寸
	 * @param id
	 * @return
	 */
	Size get(String id);

	/**
	 * 編輯尺寸
	 * @param size
	 */
	void edit(Size size);
	
}
