package max.service;

import java.util.List;

import sy.pageModel.DataGrid;
import sy.pageModel.PageHelper;
import sy.pageModel.Tree;

import max.model.Moption;
import max.pageModel.Coordinate;
import max.pageModel.Option;
import max.pageModel.Size;

/**
 * 選項Service
 * 
 * @author 建龍
 * 
 */
public interface OptionServiceI {
	
	/**
	 * 獲得選項樹(添加、編輯 : 選擇上級選項)
	 * 
	 * @param pid 父節點ID
	 * @return 子節點樹
	 */
	public List<Tree> getChildrenTree(String pid);
	
	/**
	 * 獲得選項樹(添加、編輯 : 選擇上級選項)
	 * 
	 * @param typeId 選項類型
	 * @return 父節點樹
	 */
	public List<Tree> getParentTree(String typeId);
	
	/**
	 * 獲得選項樹列表，子節點
	 * 
	 * @param pid 父節點ID
	 * @return 子節點列表
	 */
	public List<Option> getChildrenTreeGrid(String pid);
	
	/**
	 * 獲得選項樹列表，頂層父節點
	 * 
	 * @param typeId 選項類型
	 * @return  父節點列表
	 */
	public List<Option> getParentTreeGrid(String typeId, Integer status);

	/**
	 * 添加選項
	 * 
	 * @param resource
	 * @param sessionInfo
	 */
	public Moption add(Option option);

	/**
	 * 删除選項
	 * 
	 * @param id
	 */
	public void delete(String id);

	/**
	 * 修改選項
	 * 
	 * @param option
	 * @return 
	 */
	public Moption edit(Option option);

	/**
	 * 獲得一個選項
	 * 
	 * @param id
	 * @return
	 */
	public Option get(String id);
	
	/**
	 * 改變選項狀態	0:開放，1:關閉
	 * 
	 * @param id
	 * @return
	 */
	public Moption changeState(String id, int status);
	
	/**
	 * 獲取選項數據表格
	 * 
	 * @param 
	 * @return
	 */
	public DataGrid dataGrid(Option option, PageHelper ph);

	/**
	 * 添加選項-襪子顏色(帶參數-座標和色卡 :mcoordinate)
	 * 
	 * @param option
	 * @param coordinate
	 */
	public void add(Option option, Coordinate coordinate);
	
	/**
	 * 修改選項-襪子顏色(帶參數-座標和色卡 :mcoordinate)
	 * 
	 * @param option
	 * @param coordinate
	 */
	public void edit(Option option, Coordinate coordinate);

	/**
	 * 根據父ID
	 * 取得正常銷售的選項
	 * @param pid 父ID
	 * @return
	 */
	public List<Option> getOptionsOnSale(String pid);

	/**
	 * 取得選項底下的所有尺寸
	 * @param id
	 * @return
	 */
	public List<Size> getSizes(String id);

}
