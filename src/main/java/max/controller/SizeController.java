package max.controller;

import javax.servlet.http.HttpServletRequest;

import max.pageModel.Size;
import max.service.SizeServiceI;
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
 * 尺寸控制器
 * 
 * @author 建龍
 * 
 */
@Controller
@RequestMapping("/sizeController")
public class SizeController extends BaseController {

	@Autowired
	private SizeServiceI sizeService;
	
	/**
	 * 尺寸的combogrid(添加、編輯 : 襪子顏色頁面使用)
	 * 
	 * @param ph
	 * @return
	 */
	@RequestMapping("/sizeCombogrid")
	@ResponseBody
	public DataGrid sizeCombogrid(PageHelper ph) {
		return sizeService.dataGrid(ph);
	}
	
	/**
	 * 跳轉到尺寸設定添加頁面
	 * 
	 * @return
	 */
	@RequestMapping("/addPage")
	public String addPage(HttpServletRequest request) {
		Size s = new Size();
		s.setId(UuidUtils.compressedUuid());
		request.setAttribute("size", s);
		return "/backstage/sizeAdd";
	}
	
	/**
	 * 添加尺寸
	 * 
	 * @return
	 */
	@RequestMapping("/add")
	@ResponseBody
	public Json add(Size size) {
		Json j = new Json();
		sizeService.add(size);
		j.setSuccess(true);
		j.setMsg("添加成功！");
		return j;
	}
	
	/**
	 * 跳轉到尺寸編輯頁面
	 * 
	 * @return
	 */
	@RequestMapping("/editPage")
	public String editPage(HttpServletRequest request, String id) {
		Size s = sizeService.get(id);
		request.setAttribute("size", s);
		return "/backstage/sizeEdit";
	}
	
	/**
	 * 編輯尺寸
	 * 
	 * @param resource
	 * @return
	 */
	@RequestMapping("/edit")
	@ResponseBody
	public Json edit(Size size) {
		Json j = new Json();
		sizeService.edit(size);
		j.setSuccess(true);
		j.setMsg("编輯成功！");
		return j;
	}
}
