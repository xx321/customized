package max.controller;

import javax.servlet.http.HttpServletRequest;

import max.pageModel.JavaMail;
import max.service.JavaMailServiceI;
import max.util.UuidUtils;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import sy.controller.BaseController;
import sy.pageModel.DataGrid;
import sy.pageModel.Json;
import sy.pageModel.PageHelper;

/**
 * 郵件帳號控制器
 * @author 建龍
 * 
 */
@Controller
@RequestMapping("/javaMailController")
public class JavaMailController extends BaseController {

	@Autowired
	private JavaMailServiceI javaMailService;
	
	/**
	 * 跳轉到郵件帳號管理頁面
	 * 
	 * @return
	 */
	@RequestMapping("/manager")
	public String manager() {
		return "/backstage/javaMail";
	}
	
	/**
	 * 獲取郵件帳號數據表格
	 * 
	 * @param 
	 * @return
	 */
	@RequestMapping("/dataGrid")
	@ResponseBody
	public DataGrid dataGrid(JavaMail javaMail, PageHelper ph) {
		return javaMailService.dataGrid(javaMail, ph);
	}
	
	/**
	 * 跳轉到添加郵件帳號頁面
	 * 
	 * @param request
	 * @return
	 */
	@RequestMapping("/addPage")
	public String addPage(HttpServletRequest request) {
		JavaMail j = new JavaMail();
		j.setId(UuidUtils.compressedUuid());
		request.setAttribute("javaMail", j);
		return "/backstage/javaMailAdd";
	}
	
	/**
	 * 添加郵件帳號
	 * 
	 * @return
	 */
	@RequestMapping("/add")
	@ResponseBody
	public Json add(JavaMail javaMail) {
		Json j = new Json();
		try {
			javaMailService.add(javaMail);
			j.setSuccess(true);
			j.setMsg("添加成功！");
			j.setObj(javaMail);
		} catch (Exception e) {
			// e.printStackTrace();
			j.setMsg(e.getMessage());
		}
		return j;
	}
	
	/**
	 * 跳轉到郵件帳號修改頁面
	 * 
	 * @return
	 */
	@RequestMapping("/editPage")
	public String editPage(HttpServletRequest request, String id) {
		JavaMail j = javaMailService.get(id);
		request.setAttribute("javaMail", j);
		return "/backstage/javaMailEdit";
	}
	
	/**
	 * 修改郵件帳號
	 * 
	 * @param javaMail
	 * @return
	 */
	@RequestMapping("/edit")
	@ResponseBody
	public Json edit(JavaMail javaMail) {
		Json j = new Json();
		try {
			javaMailService.edit(javaMail);
			j.setSuccess(true);
			j.setMsg("编輯成功！");
			j.setObj(javaMail);
		} catch (Exception e) {
			// e.printStackTrace();
			j.setMsg(e.getMessage());
		}
		return j;
	}
}
