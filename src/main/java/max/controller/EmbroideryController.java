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
 * 電繡設定控制器
 * 
 * @author 建龍
 * 
 */
@Controller
@RequestMapping("/embroideryController")
public class EmbroideryController extends BaseController {
	
	@Autowired
	private OptionServiceI optionService;

	@Autowired
	private OptionTypeServiceI optionTypeService;
	
	/**
	 * 跳轉到電繡管理頁面
	 * 
	 * @return
	 */
	@RequestMapping("/manager")
	public String manager() {
		return "/backstage/embroidery";
	}

	/**
	 * 跳轉到電繡設定添加頁面
	 * 
	 * @return
	 */
	@RequestMapping("/addPage")
	public String addPage(HttpServletRequest request, String typeId, String pid) {

		Option o = new Option();
		o.setId(UuidUtils.compressedUuid());
		
		if (typeId != null && !typeId.equalsIgnoreCase(""))
		{
			Optiontype type = optionTypeService.get(typeId);
			o.setTypeId(type.getId());
			o.setTypeName(type.getName());
		}
		if (pid != null && !pid.equalsIgnoreCase(""))
		{
			Option p = optionService.get(pid);
			o.setPid(p.getId());
			o.setPname(p.getName());
		}

		request.setAttribute("option", o);
		return "/backstage/embroideryAdd";
	}

	/**
	 * 添加電繡設定種類
	 * 
	 * @return
	 */
	@RequestMapping("/add")
	@ResponseBody
	public Json add(Option option) {
		
		//依據分類，設定圖層
		if (option.getTypeId() != null && option.getTypeId().equalsIgnoreCase("5"))
			option.setIconCls("color_swatch");
		else
			option.setIconCls("disk_multiple");
		
		Json j = new Json();
		optionService.add(option);
		j.setSuccess(true);
		j.setMsg("添加成功！");
		j.setObj(option.getPid());
		return j;
	}

	/**
	 * 跳轉到電繡設定編輯頁面
	 * 
	 * @return
	 */
	@RequestMapping("/editPage")
	public String editPage(HttpServletRequest request, String id) {
		Option o = optionService.get(id);
		request.setAttribute("option", o);
		return "/backstage/embroideryEdit";
	}

	/**
	 * 編輯電繡設定
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
		j.setObj(option.getPid());
		return j;
	}

}
