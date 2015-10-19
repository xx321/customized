package max.controller;

import max.pageModel.Goods;
import max.service.GoodsServiceI;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import sy.controller.BaseController;
import sy.pageModel.DataGrid;
import sy.pageModel.PageHelper;

/**
 * 商品控制器
 * 
 * @author 建龍
 * 
 */
@Controller
@RequestMapping("/goodsController")
public class GoodsController extends BaseController {

	@Autowired
	private GoodsServiceI goodsService;

	/**
	 * 獲取商品數據表格
	 * 
	 * @param 
	 * @return
	 */
	@RequestMapping("/dataGrid")
	@ResponseBody
	public DataGrid dataGrid(Goods goods, PageHelper ph) {
		return goodsService.dataGrid(goods, ph);
	}
	
	/**
	 * 獲取商品數據表格
	 * 
	 * @param 
	 * @return
	 */
	@RequestMapping("/dataGridByOrderId")
	@ResponseBody
	public DataGrid dataGridByOrderId(Goods goods, PageHelper ph) {
		if (goods.getOrderId() != null && !goods.getOrderId().equalsIgnoreCase(""))
			return goodsService.dataGrid(goods, ph);
		return new DataGrid();
	}
}
