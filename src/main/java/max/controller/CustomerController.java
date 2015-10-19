package max.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import max.pageModel.Customer;
import max.service.CustomerServiceI;
import max.util.UuidUtils;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import sy.controller.BaseController;
import sy.pageModel.DataGrid;
import sy.pageModel.Json;
import sy.pageModel.PageHelper;
import sy.pageModel.SessionInfo;
import sy.util.ConfigUtil;

/**
 * 客戶控制器
 * 
 * @author 建龍
 * 
 */
@Controller
@RequestMapping("/customerController")
public class CustomerController extends BaseController {
	
	@Autowired
	private CustomerServiceI customerService;
	
	/**
	 * 會員登錄
	 * 
	 * @param customer
	 *            會員對像
	 * @param request
	 * @return
	 */
	@RequestMapping("/login")
	public String login(Customer customer, HttpSession session, HttpServletRequest request) {
		if(customer.getAccount() == null || customer.getAccount().trim().equalsIgnoreCase("")) {
			request.setAttribute("message", "請輸入帳號!");
			return "index";
		} else if (customer.getPwd() == null || customer.getPwd().trim().equalsIgnoreCase("")) {
			request.setAttribute("message", "請輸入密碼!");
			return "index";
		}
		Customer c = customerService.login(customer);
		if (c == null) {
			request.setAttribute("message", "用戶名或密碼錯誤!");
			return "index";	//頁面跳轉回登錄頁面
		}
		session.setAttribute("customer", c);
	
		return "redirect:/homeController/startPage";
	}
	
	/**
	 * 會員注册
	 * 
	 * @param customer
	 *            會員對像
	 * @return
	 */
	@ResponseBody
	@RequestMapping("/reg")
	public Json reg(Customer customer) {
		Json j = new Json();
		try {
			customerService.reg(customer);
			j.setSuccess(true);
			j.setMsg("註冊成功！");
			j.setObj(customer);
		} catch (Exception e) {
			// e.printStackTrace();
			j.setMsg(e.getMessage());
		}
		return j;
	}
	
	/**
	 * 跳轉到會員管理頁面
	 * 
	 * @return
	 */
	@RequestMapping("/manager")
	public String manager() {
		return "/backstage/customer";
	}
	
	/**
	 * 獲取會員數據表格
	 * 
	 * @param 
	 * @return
	 */
	@RequestMapping("/dataGrid")
	@ResponseBody
	public DataGrid dataGrid(Customer csutomer, PageHelper ph) {
		return customerService.dataGrid(csutomer, ph);
	}
	
	/**
	 * 跳轉到添加會員頁面
	 * 
	 * @param request
	 * @return
	 */
	@RequestMapping("/addPage")
	public String addPage(HttpServletRequest request) {
		Customer c = new Customer();
		c.setId(UuidUtils.compressedUuid());
		request.setAttribute("customer", c);
		return "/backstage/customerAdd";
	}
	
	/**
	 * 添加會員
	 * 
	 * @return
	 */
	@RequestMapping("/add")
	@ResponseBody
	public Json add(Customer customer) {
		Json j = new Json();
		try {
			customerService.add(customer);
			j.setSuccess(true);
			j.setMsg("添加成功！");
			j.setObj(customer);
		} catch (Exception e) {
			// e.printStackTrace();
			j.setMsg(e.getMessage());
		}
		return j;
	}
	
	/**
	 * 跳轉到會員修改頁面
	 * 
	 * @return
	 */
	@RequestMapping("/editPage")
	public String editPage(HttpServletRequest request, String id) {
		Customer c = customerService.get(id);
		request.setAttribute("customer", c);
		return "/backstage/customerEdit";
	}
	
	/**
	 * 修改會員
	 * 
	 * @param user
	 * @return
	 */
	@RequestMapping("/edit")
	@ResponseBody
	public Json edit(Customer customer) {
		Json j = new Json();
		try {
			customerService.edit(customer);
			j.setSuccess(true);
			j.setMsg("编輯成功！");
			j.setObj(customer);
		} catch (Exception e) {
			// e.printStackTrace();
			j.setMsg(e.getMessage());
		}
		return j;
	}
	
	/**
	 * 删除會員
	 * 
	 * @param id
	 * @return
	 */
	@RequestMapping("/delete")
	@ResponseBody
	public Json delete(String id, HttpSession session) {
		SessionInfo sessionInfo = (SessionInfo) session.getAttribute(ConfigUtil.getSessionInfoName());
		Json j = new Json();
		if (id != null && !id.equalsIgnoreCase(sessionInfo.getId())) {// 不能删除自己
			customerService.delete(id);
		}
		j.setMsg("刪除成功！");
		j.setSuccess(true);
		return j;
	}
	
	/**
	 * 批量删除會員
	 * 
	 * @param ids
	 *            ('0','1','2')
	 * @return
	 */
	@RequestMapping("/batchDelete")
	@ResponseBody
	public Json batchDelete(String ids, HttpSession session) {
		Json j = new Json();
		if (ids != null && ids.length() > 0) {
			for (String id : ids.split(",")) {
				if (id != null) {
					this.delete(id, session);
				}
			}
		}
		j.setMsg("批量刪除成功！");
		j.setSuccess(true);
		return j;
	}
	
	/**
	 * 跳转到编辑會員密码页面
	 * 
	 * @param id
	 * @param request
	 * @return
	 */
	@RequestMapping("/editPwdPage")
	public String editPwdPage(String id, HttpServletRequest request) {
		Customer c = customerService.get(id);
		request.setAttribute("customer", c);
		return "/backstage/customerEditPwd";
	}
	
	/**
	 * 编辑會員密码
	 * 
	 * @param user
	 * @return
	 */
	@RequestMapping("/editPwd")
	@ResponseBody
	public Json editPwd(Customer customer) {
		Json j = new Json();
		customerService.editPwd(customer);
		j.setSuccess(true);
		j.setMsg("编輯成功！");
		return j;
	}
}
