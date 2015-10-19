package max.service;

import max.pageModel.Goods;
import sy.pageModel.DataGrid;
import sy.pageModel.PageHelper;

/**
 * 商品服務
 * 
 * @author 建龍
 * 
 */
public interface GoodsServiceI {
	
	/**
	 * 獲取商品數據表格
	 * 
	 * @param csutomer
	 * @return
	 */
	DataGrid dataGrid(Goods goods, PageHelper ph);

}
