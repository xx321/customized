package max.controller;

import max.pageModel.Order;
import max.service.OrderServiceI;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import sy.controller.BaseController;
import sy.pageModel.DataGrid;
import sy.pageModel.Json;
import sy.pageModel.PageHelper;

/**
 * 訂單控制器
 * 
 * @author 建龍
 * 
 */
@Controller
@RequestMapping("/orderController")
public class OrderController extends BaseController {

	@Autowired
	private OrderServiceI orderService;
	
	/**
	 * 跳轉到結帳櫃台頁面
	 * 
	 * @return
	 */
	@RequestMapping("/checkout")
	public String checkout() {
		return "/backstage/orderCheckout";
	}
	
	/**
	 * 跳轉到加工櫃台頁面
	 * 
	 * @return
	 */
	@RequestMapping("/working")
	public String working() {
		return "/backstage/orderWorking";
	}
	
	/**
	 * 跳轉到出貨櫃台頁面
	 * 
	 * @return
	 */
	@RequestMapping("/ship")
	public String ship() {
		return "/backstage/orderShip";
	}
	
	/**
	 * 跳轉到訂單管理頁面
	 * 
	 * @return
	 */
	@RequestMapping("/manager")
	public String manager() {
		return "/backstage/orderManager";
	}
	
	/**
	 * 獲取訂單數據表格
	 * 
	 * @param 
	 * @return
	 */
	@RequestMapping("/dataGrid")
	@ResponseBody
	public DataGrid dataGrid(Order order, PageHelper ph) {
		return orderService.dataGrid(order, ph);
	}
	
	/**
	 * 獲取結帳櫃台數據表格
	 * 
	 * @param 
	 * @return
	 */
	@RequestMapping("/checkoutDataGrid")
	@ResponseBody
	public DataGrid checkoutDataGrid(Order order, PageHelper ph) {
		order.setState(0);
		return orderService.dataGrid(order, ph);
	}
	
	/**
	 * 獲取加工櫃台數據表格
	 * 
	 * @param 
	 * @return
	 */
	@RequestMapping("/workingDataGrid")
	@ResponseBody
	public DataGrid workingDataGrid(Order order, PageHelper ph) {
		order.setState(1);
		return orderService.dataGrid(order, ph);
	}
	
	/**
	 * 獲取出貨櫃台數據表格
	 * 
	 * @param 
	 * @return
	 */
	@RequestMapping("/shipDataGrid")
	@ResponseBody
	public DataGrid shipDataGrid(Order order, PageHelper ph) {
		order.setState(2);
		return orderService.dataGrid(order, ph);
	}
	
	/**
	 * 獲取單據管理數據表格
	 * 
	 * @param 
	 * @return
	 */
	@RequestMapping("/managerDataGrid")
	@ResponseBody
	public DataGrid managerDataGrid(Order order, PageHelper ph) {
		order.setState(3);
		return orderService.dataGrid(order, ph);
	}
	
	/**
	 * 取得訂單訊息
	 * 
	 * @param id 單據id
	 * @return
	 */
	@RequestMapping("/getOrder")
	@ResponseBody
	public Json getOrder(String id) {
		Json j = new Json();
		Order o = orderService.get(id);
		j.setSuccess(true);
		j.setObj(o);
		j.setMsg("取得訂單！");
		return j;
	}
	
	/**
	 * 單據結帳
	 * 
	 * @param id 單據id
	 * @return
	 */
	@RequestMapping("/checkoutOK")
	@ResponseBody
	public Json checkoutOK(String id) {
		Json j = new Json();
		orderService.checkout(id);
		j.setSuccess(true);
		j.setMsg("結帳完成！");
		return j;
	}
	
	/**
	 * 單據加工
	 * 
	 * @param id 單據id
	 * @return
	 */
	@RequestMapping("/workingOK")
	@ResponseBody
	public Json workingOK(String id) {
		Json j = new Json();
		orderService.working(id);
		j.setSuccess(true);
		j.setMsg("加工完成！");
		return j;
	}
	
	/**
	 * 單據出貨
	 * 
	 * @param id 單據id
	 * @return
	 */
	@RequestMapping("/shipOK")
	@ResponseBody
	public Json shipOK(String id) {
		Json j = new Json();
		orderService.ship(id);
		j.setSuccess(true);
		j.setMsg("出貨完成！");
		return j;
	}
	
	/**
	 * 訂單作廢
	 * 
	 * @param id
	 * @return
	 */
	@RequestMapping("/invalid")
	@ResponseBody
	public Json invalid(String id) {
		Json j = new Json();
		orderService.invalid(id);
		j.setSuccess(true);
		j.setMsg("作廢完成！");
		return j;
	}
	
}
