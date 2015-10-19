package max.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import max.factory.BuySafeFactory;
import max.pageModel.BuySafe;
import max.pageModel.Discount;
import max.pageModel.Goods;
import max.pageModel.Option;
import max.pageModel.Order;
import max.pageModel.Recipient;
import max.service.DiscountServiceI;
import max.service.HomeServiceI;
import max.service.OptionServiceI;
import max.util.DiscountUtil;
import max.util.UuidUtils;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import sy.controller.BaseController;
import sy.pageModel.Json;
import sy.pageModel.SessionInfo;
import sy.pageModel.User;
import sy.service.UserServiceI;
import sy.util.ConfigUtil;
import sy.util.IpUtil;

/**
 * 客製化頁面控制器
 * 
 * @author 建龍
 * 
 */
@Controller
@RequestMapping("/homeController")
public class HomeController extends BaseController {
	
	@Autowired
	private UserServiceI userService;
	
	@Autowired
	private OptionServiceI optionService;
	
	@Autowired
	private DiscountServiceI discountService;
	
	@Autowired
	private HomeServiceI homeService;
	
	private Discount like;
	private Discount full;
	private Discount shipment;
	
	/**
	 * 開始客製化頁面
	 * ***********************舊版畫面使用，暫時廢置!*************************
	 * @param request
	 * @return
	 */
	@RequestMapping("/startPage")
	public String startPage(HttpSession session, HttpServletRequest request) {
		
		Order order = null;
		order = (Order) session.getAttribute("order");
		if (order == null) {
			order = new Order();
			session.setAttribute("order", order);
		}
		
		List<Option> l = optionService.getParentTreeGrid("0",0);
		request.setAttribute("options", l);
		List<Option> e = optionService.getParentTreeGrid("4",0);
		request.setAttribute("embroiderys", e);
		List<Option> p = optionService.getParentTreeGrid("6",0);
		request.setAttribute("packings", p);
		
		like = discountService.get("0");
		request.setAttribute("like", like);
		full = discountService.get("1");
		request.setAttribute("full", full);
		shipment = discountService.get("2");
		request.setAttribute("shipment", shipment);
		
		//加載頁面圖片(作品參考、問與答、尺寸對照表、電繡範例)
		Discount worksImage = discountService.get("101");
		request.setAttribute("worksImage", worksImage);
		Discount qaImage = discountService.get("102");
		request.setAttribute("qaImage", qaImage);
		Discount sizeImage = discountService.get("103");
		request.setAttribute("sizeImage", sizeImage);
		Discount embroideryImage = discountService.get("104");
		request.setAttribute("embroideryImage", embroideryImage);
		
		return "main/page";
	}
	
	/**
	 * 館內操操登錄
	 * 
	 * @param User
	 *            用戶對像
	 * @param request
	 * @return
	 */
	@RequestMapping("/login")
	public String login(User user, HttpSession session, HttpServletRequest request) {
		if(user.getName() == null || user.getName().trim().equalsIgnoreCase("")) {
			request.setAttribute("message", "請輸入帳號!");
			return "index";
		} else if (user.getPwd() == null || user.getPwd().trim().equalsIgnoreCase("")) {
			request.setAttribute("message", "請輸入密碼!");
			return "index";
		}
		User u = userService.login(user);
		if (u == null) {
			request.setAttribute("message", "用戶名或密碼錯誤!");
			return "index";	//頁面跳轉回登錄頁面
		}
		
		SessionInfo sessionInfo = new SessionInfo();
		BeanUtils.copyProperties(u, sessionInfo);
		sessionInfo.setIp(IpUtil.getIpAddr(request));
		sessionInfo.setResourceList(userService.resourceList(u.getId()));
		session.setAttribute(ConfigUtil.getSessionInfoName(), sessionInfo);
	
		return "redirect:/homeController/startMainPage";
	}
	
	/**
	 * 開始客製化頁面
	 * @param request
	 * @return
	 */
	@RequestMapping("/startMainPage")
	public String startMainPage(HttpSession session, HttpServletRequest request) {
		
		Order order = null;
		order = (Order) session.getAttribute("order");
		if (order == null) {
			order = new Order();
			session.setAttribute("order", order);
		}
		
		List<Option> l = optionService.getParentTreeGrid("0",0);
		request.setAttribute("options", l);
		List<Option> e = optionService.getParentTreeGrid("4",0);
		request.setAttribute("embroiderys", e);
		List<Option> p = optionService.getParentTreeGrid("6",0);
		request.setAttribute("packings", p);
		
		like = discountService.get("0");
		request.setAttribute("like", like);
		full = discountService.get("1");
		request.setAttribute("full", full);
		shipment = discountService.get("2");
		request.setAttribute("shipment", shipment);
		
		//加載頁面圖片(作品參考、問與答、尺寸對照表、電繡範例)
		Discount worksImage = discountService.get("101");
		request.setAttribute("worksImage", worksImage);
		Discount qaImage = discountService.get("102");
		request.setAttribute("qaImage", qaImage);
		Discount sizeImage = discountService.get("103");
		request.setAttribute("sizeImage", sizeImage);
		Discount embroideryImage = discountService.get("104");
		request.setAttribute("embroideryImage", embroideryImage);

		
		request.setAttribute("finish", false);
		
		return "main/mainPage";
	}
	
	/**
	 * 開始客製化頁面
	 * @param request
	 * @return
	 */
	@RequestMapping("/finishMainPage")
	public String finishMainPage(HttpSession session, HttpServletRequest request) {
		
		Order order = null;
		order = (Order) session.getAttribute("order");
		if (order == null) {
			order = new Order();
			session.setAttribute("order", order);
		}
		
		
//		List<Option> l = optionService.getParentTreeGrid("0",0);
//		request.setAttribute("options", l);
//		List<Option> e = optionService.getParentTreeGrid("4",0);
//		request.setAttribute("embroiderys", e);
//		List<Option> p = optionService.getParentTreeGrid("6",0);
//		request.setAttribute("packings", p);
		
		request.setAttribute("finish", true);
		
		return "main/mainPage";
	}
	
	/**
	 * 取得父選項
	 * 
	 * @param pid 父ID
	 * @return
	 */
	@RequestMapping("/getParentOptions")
	@ResponseBody
	public Json getParentOptions(String pid) {
		Json j = new Json();
		j.setSuccess(true);
		j.setMsg("加載成功！");
		j.setObj(optionService.getParentTreeGrid(pid,0));
		return j;
	}
	
	/**
	 * 取得子選項
	 * 
	 * @param pid 父ID
	 * @return
	 */
	@RequestMapping("/getOptions")
	@ResponseBody
	public Json getOptions(String pid) {
		Json j = new Json();
		j.setSuccess(true);
		j.setMsg("加載成功！");
		j.setObj(optionService.getOptionsOnSale(pid));
		return j;
	}
	
	/**
	 * 取得尺寸
	 * 
	 * @param pid 父ID
	 * @return
	 */
	@RequestMapping("/getSizes")
	@ResponseBody
	public Json getSizes(String id) {
		Json j = new Json();
		j.setSuccess(true);
		j.setMsg("加載成功！");
		j.setObj(optionService.getSizes(id));
		return j;
	}
	
	/**
	 * 取得購物車商品
	 * 
	 * @param pid 父ID
	 * @return
	 */
	@RequestMapping("/getSessionGoodses")
	@ResponseBody
	public Json getSessionGoodses(HttpSession session) {
		Json j = new Json();
		Order order = (Order) session.getAttribute("order");
		if (order != null) {
			j.setSuccess(true);
			j.setMsg("加載成功！");
			j.setObj(order.getGoodses());
		} else {
			j.setSuccess(false);
			j.setMsg("加載失敗！");
		}
		return j;
	}
	
	/**
	 * 取得購物車商品
	 * 
	 * @param pid 父ID
	 * @return
	 */
	@RequestMapping("/deleteGoods")
	@ResponseBody
	public Json deleteGoods(HttpSession session, String id) {
		Json j = new Json();
		Order order = (Order) session.getAttribute("order");
		if (order != null && order.getGoodses() != null) {
			Goods goods = null;
			for (Goods g : order.getGoodses()) {
				if (g.getId().equals(id))
					goods = g;
			}
			if (goods != null)
				order.getGoodses().remove(goods);
			j.setSuccess(true);
			j.setMsg("刪除成功！");
		} else {
			j.setSuccess(false);
			j.setMsg("刪除失敗！");
		}
		return j;
	}
	
	/**
	 * 編輯商品數量
	 * @param session
	 * @param id
	 * @return
	 */
	@RequestMapping("/editGoodsQuantity")
	@ResponseBody
	public Json editGoodsQuantity(HttpSession session, String id, String quantity) {
		Json j = new Json();
		Order order = (Order) session.getAttribute("order");
		if (order != null && order.getGoodses() != null) {
			Goods goods = null;
			for (Goods g : order.getGoodses()) {
				if (g.getId().equals(id))
					goods = g;
			}
			if (goods != null) {
				goods.setQuantity(Integer.parseInt(quantity));
				DiscountUtil.countLike(goods, like);
			}
			j.setSuccess(true);
			j.setMsg("編輯成功！");
		} else {
			j.setSuccess(false);
			j.setMsg("編輯失敗！");
		}
		return j;
	}
	
	/**
	 * 添加客製化商品
	 * 
	 * @return
	 */
	@RequestMapping("/addGoods")
	@ResponseBody
	public Json addGoods(HttpSession session, Goods goods) {
		Json j = new Json();
		Order order = (Order) session.getAttribute("order");
		goods.setId(UuidUtils.compressedUuid());
		if (order != null) {
			DiscountUtil.countLike(goods, like);
			order.getGoodses().add(goods);
			j.setSuccess(true);
			j.setMsg("添加成功！");
		} else {
			j.setSuccess(false);
			j.setMsg("添加失敗！");
		}
		return j;
	}
	
	/**
	 * 添加客製化訂單
	 * 
	 * @return
	 */
	@RequestMapping("/addOrder")
	@ResponseBody
	public Json addOrder(HttpSession session, Recipient recipient, Integer checkoutType) {
		Json j = new Json();
		Order order = (Order) session.getAttribute("order");
		try {
			order.setCheckoutType(checkoutType);
			DiscountUtil.countTotal(order);
			DiscountUtil.countFull(order, full);
			DiscountUtil.countShipment(order, shipment);
			
			order = homeService.add(order,recipient);
			j.setSuccess(true);
			j.setMsg("添加成功！");
			//傳入Order 取得BuySafeForm 類 ， 傳給前台準備做跳轉信用卡交易。
			j.setObj(BuySafeFactory.getBuySafeForm(order));
		} catch (Exception e) {
			j.setSuccess(false);
			j.setMsg("添加失敗！");
		}
		//如果登錄操作，表示人在現場，不必寄確認郵件
		//反之，session info 為空時，表示人不在現場，完成交易後，發送郵件。
		SessionInfo info = (SessionInfo) session.getAttribute(ConfigUtil.getSessionInfoName());
		if (info == null) {
			if (j.isSuccess()) {
				try {
					homeService.sendOrderMail(order);
				} catch (Exception e) {
					j.setSuccess(false);
					j.setMsg("郵件格式錯誤!<br/> 請重新操作 。");
				}	
			}
		}
		session.removeAttribute("order");
		return j;
	}
	
	/**
	 * 交易參數回傳接收
	 * 
	 * @return
	 */
	@RequestMapping("/paymentShow")
	public String paymentShow(HttpServletRequest request) {
		BuySafe buySafe = BuySafeFactory.getBuySafe(request);
		
		try {				
			Integer.parseInt(buySafe.getNote1());
			
			//判斷Note1 是否為數字(吳福洋官網Note1為數字主鍵)
			//如果是，頁面跳轉至吳福洋官網交易成功接收頁面。
			String url = BuySafeFactory.getUrl("redirect:http://金流系統指定url", buySafe);		
			return url;
		} catch (NumberFormatException e) {
		}
		
		//判斷紅陽回傳的檢查碼是否正確，並且回覆代碼 為 00 : 表示交易成功!
		//如果通過，單據進行結帳動作。
		boolean success = homeService.checkout(buySafe);
		
		//畫面的跳轉因該先判斷訂單單據是不是屬於吳福洋官網的，如果是直接跳吳福洋官網接收網址
		//判斷不是之後 才開始處理客製化網站的處理方法
		if (success) {			
			//成功，跳轉至成功交易頁面
			return "redirect:/homeController/finishMainPage";
		} else {
			return "redirect:交易失敗頁面url";
		}
	}
}
