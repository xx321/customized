package max.controller;

import javax.servlet.http.HttpServletRequest;

import max.pageModel.Discount;
import max.service.DiscountServiceI;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import sy.controller.BaseController;
import sy.pageModel.Json;

/**
 * 折扣控制器
 * 
 * @author 建龍
 * 
 */
@Controller
@RequestMapping("/discountController")
public class DiscountController extends BaseController {

	@Autowired
	private DiscountServiceI discountService;
	
	/**
	 * 跳轉同品折扣
	 * 
	 * @return
	 */
	@RequestMapping("/managerLike")
	public String managerLike(HttpServletRequest request) {
		request.setAttribute("choose", 0);
		return "/backstage/discount";
	}
	
	/**
	 * 跳轉滿額折扣
	 * 
	 * @return
	 */
	@RequestMapping("/managerFull")
	public String managerFull(HttpServletRequest request) {
		request.setAttribute("choose", 1);
		return "/backstage/discount";
	}
	
	/**
	 * 跳轉運費折扣
	 * 
	 * @return
	 */
	@RequestMapping("/managerShipment")
	public String managerShipment(HttpServletRequest request) {
		request.setAttribute("choose", 2);
		return "/backstage/discount";
	}
	
	/**
	 * 跳轉到同品折扣設定編輯頁面
	 * 
	 * @return
	 */
	@RequestMapping("/editLikePage")
	public String editLikePage(HttpServletRequest request) {
		Discount d = discountService.get("0");
		request.setAttribute("discount", d);
		return "/backstage/discountLike";
	}
	
	/**
	 * 跳轉到滿額折扣設定編輯頁面
	 * 
	 * @return
	 */
	@RequestMapping("/editFullPage")
	public String editFullPage(HttpServletRequest request) {
		Discount d = discountService.get("1");
		request.setAttribute("discount", d);
		return "/backstage/discountFull";
	}
	
	/**
	 * 跳轉到運費折扣設定編輯頁面
	 * 
	 * @return
	 */
	@RequestMapping("/editShipmentPage")
	public String editShipmentPage(HttpServletRequest request) {
		Discount d = discountService.get("2");
		request.setAttribute("discount", d);
		return "/backstage/discountShipment";
	}
	
	/**
	 * 編輯折扣參數
	 * 
	 * @param resource
	 * @return
	 */
	@RequestMapping("/edit")
	@ResponseBody
	public Json edit(Discount discount) {
		Json j = new Json();
		discountService.edit(discount);
		j.setSuccess(true);
		j.setMsg("编輯成功！");
		return j;
	}
	
	
	/**		以下為圖片置換	**/


	/**
	 * 跳轉作品參考
	 * 
	 * @return
	 */
	@RequestMapping("/managerWorks")
	public String managerWorks(HttpServletRequest request) {
		request.setAttribute("choose", 101);
		return "/backstage/discount";
	}
	
	/**
	 * 跳轉問與答
	 *
	 * @return
	 */
	@RequestMapping("/managerQA")
	public String managerQA(HttpServletRequest request) {
		request.setAttribute("choose", 102);
		return "/backstage/discount";
	}
	
	/**
	 * 跳轉尺寸對照表
	 * 
	 * @return
	 */
	@RequestMapping("/managerSize")
	public String managerSize(HttpServletRequest request) {
		request.setAttribute("choose", 103);
		return "/backstage/discount";
	}
	
	/**
	 * 跳轉電繡範例
	 * 
	 * @return
	 */
	@RequestMapping("/managerEmbroidery")
	public String managerEmbroidery(HttpServletRequest request) {
		request.setAttribute("choose", 104);
		return "/backstage/discount";
	}
	
	/**
	 * 跳轉到作品參考編輯頁面
	 * 
	 * @return
	 */
	@RequestMapping("/editWorksPage")
	public String editWorksPage(HttpServletRequest request) {
		Discount d = discountService.get("101");
		request.setAttribute("discount", d);
		return "/backstage/imageReplacement/works";
	}
	
	/**
	 * 跳轉到問與答編輯頁面
	 * 
	 * @return
	 */
	@RequestMapping("/editQAPage")
	public String editQAPage(HttpServletRequest request) {
		Discount d = discountService.get("102");
		request.setAttribute("discount", d);
		return "/backstage/imageReplacement/qa";
	}
	/**
	 * 跳轉到尺寸對照表編輯頁面
	 * 
	 * @return
	 */
	@RequestMapping("/editSizePage")
	public String editSizePage(HttpServletRequest request) {
		Discount d = discountService.get("103");
		request.setAttribute("discount", d);
		return "/backstage/imageReplacement/size";
	}
	
	/**
	 * 跳轉到電繡範例編輯頁面
	 * 
	 * @return
	 */
	@RequestMapping("/editEmbroideryPage")
	public String editEmbroideryPage(HttpServletRequest request) {
		Discount d = discountService.get("104");
		request.setAttribute("discount", d);
		return "/backstage/imageReplacement/embroidery";
	}

}

