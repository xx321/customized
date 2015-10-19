package max.controller;

import javax.servlet.http.HttpServletRequest;

import max.pageModel.Option;
import max.pageModel.Optiontype;
import max.service.OptionServiceI;
import max.service.OptionTypeServiceI;
import max.util.UuidUtils;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import sy.controller.BaseController;
import sy.pageModel.Json;

/**
 * 包裝設定控制器
 * 
 * @author 建龍
 * 
 */
@Controller
@RequestMapping("/packingController")
public class PackingController extends BaseController {
	
	@Autowired
	private OptionServiceI optionService;

	@Autowired
	private OptionTypeServiceI optionTypeService;
	
	/**
	 * 跳轉到包裝管理頁面
	 * 
	 * @return
	 */
	@RequestMapping("/manager")
	public String manager() {
		return "/backstage/packing";
	}

	/**
	 * 跳轉到包裝設定添加頁面
	 * 
	 * @return
	 */
	@RequestMapping("/addPage")
	public String addPage(HttpServletRequest request) {
		Option o = new Option();
		o.setId(UuidUtils.compressedUuid());
		Optiontype type = optionTypeService.get("6");
		o.setTypeId(type.getId());
		o.setTypeName(type.getName());
		request.setAttribute("option", o);
		return "/backstage/packingAdd";
	}

	/**
	 * 添加包裝設定種類
	 * 
	 * @return
	 */
	@RequestMapping("/add")
	@ResponseBody
	public Json add(Option option) {
		
		//依據分類，設定圖層(typeId = 6)
		option.setIconCls("disk_multiple");
		
		Json j = new Json();
		optionService.add(option);
		j.setSuccess(true);
		j.setMsg("添加成功！");
		return j;
	}

	/**
	 * 跳轉到包裝設定編輯頁面
	 * 
	 * @return
	 */
	@RequestMapping("/editPage")
	public String editPage(HttpServletRequest request, String id) {
		Option o = optionService.get(id);
		request.setAttribute("option", o);
		return "/backstage/packingEdit";
	}

	/**
	 * 編輯包裝設定
	 * 
	 * @param resource
	 * @return
	 */
	@RequestMapping("/edit")
	@ResponseBody
	public Json edit(Option option) {
		Json j = new Json();
		optionService.edit(option);
		j.setSuccess(true);
		j.setMsg("编輯成功！");
		return j;
	}

}
