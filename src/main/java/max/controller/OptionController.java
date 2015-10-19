package max.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import max.model.Moption;
import max.pageModel.Option;
import max.service.OptionServiceI;
import max.service.OptionTypeServiceI;
import max.util.UuidUtils;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import sy.controller.BaseController;
import sy.pageModel.DataGrid;
import sy.pageModel.Json;
import sy.pageModel.PageHelper;
import sy.pageModel.Tree;

/**
 * 選項控制器
 * 
 * @author 建龍
 * 
 */
@Controller
@RequestMapping("/optionController")
public class OptionController extends BaseController {
	
	@Autowired
	private OptionServiceI optionService;

	@Autowired
	private OptionTypeServiceI optionTypeService;
	
	/**
	 * 跳轉到選項管理頁面
	 * 
	 * @return
	 */
	@RequestMapping("/manager")
	public String manager() {
		return "/backstage/option";
	}
	
	/**
	 * 獲取選項數據表格
	 * 
	 * @param 
	 * @return
	 */
	@RequestMapping("/dataGrid")
	@ResponseBody
	public DataGrid dataGrid(Option option, PageHelper ph) {
		return optionService.dataGrid(option, ph);
	}
	
	/**
	 * 獲得選項樹列表，父節點
	 * @param typeId 選項類型
	 * @return 父節點列表
	 */
	@RequestMapping("/treeGrid")
	@ResponseBody
	public List<Option> treeGrid(String typeId, String id) {
		if (id != null && !id.equalsIgnoreCase("")) {
			return optionService.getChildrenTreeGrid(id);
		} else {
			return optionService.getParentTreeGrid(typeId,null);
		}
	}

	/**
	 * 獲得選項樹(添加、編輯 : 選擇上級選項)
	 * @param typeId 選項類型
	 * @return 父節點樹
	 */
	@RequestMapping("/tree")
	@ResponseBody
	public List<Tree> tree(String typeId, String id) {
		if (id != null && !id.equalsIgnoreCase("")) {
			return optionService.getChildrenTree(id);
		} else {
			return optionService.getParentTree(typeId);
		}
	}
	
	/**
	 * 跳轉到選項添加頁面
	 * 
	 * @return
	 */
	@RequestMapping("/addPage")
	public String addPage(HttpServletRequest request) {
		request.setAttribute("optionTypeList", optionTypeService.getOptionTypeList());
		Option o = new Option();
		o.setId(UuidUtils.compressedUuid());
		request.setAttribute("option", o);
		return "/backstage/optionAdd";
	}

	/**
	 * 添加選項
	 * 
	 * @return
	 */
	@RequestMapping("/add")
	@ResponseBody
	public Json add(Option option) {
		Json j = new Json();
		optionService.add(option);
		j.setSuccess(true);
		j.setMsg("添加成功！");
		return j;
	}

	/**
	 * 跳轉到選項編輯頁面
	 * 
	 * @return
	 */
	@RequestMapping("/editPage")
	public String editPage(HttpServletRequest request, String id) {
		request.setAttribute("optionTypeList", optionTypeService.getOptionTypeList());
		Option o = optionService.get(id);
		request.setAttribute("option", o);
		return "/backstage/optionEdit";
	}

	/**
	 * 編輯選項
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

	/**
	 * 删除選項
	 * 
	 * @param id
	 * @return
	 */
	@RequestMapping("/delete")
	@ResponseBody
	public Json delete(String id) {
		Json j = new Json();
		optionService.delete(id);
		j.setMsg("刪除成功！");
		j.setSuccess(true);
		return j;
	}
	/**
	 * 選項狀態開放
	 * 
	 * @param id
	 * @return
	 */
	@RequestMapping("/onSale")
	@ResponseBody
	public Json onSale(String id) {
		Json j = new Json();
		Moption m = optionService.changeState(id,0);
		j.setMsg("開放銷售！");
		j.setSuccess(true);
		if (m.getMoption() != null)
			j.setObj(m.getMoption().getId());
		return j;
	}
	/**
	 * 選項狀態關閉
	 * 
	 * @param id
	 * @return
	 */
	@RequestMapping("/offSale")
	@ResponseBody
	public Json offSale(String id) {
		Json j = new Json();
		Moption m = optionService.changeState(id,1);
		j.setMsg("關閉銷售！");
		j.setSuccess(true);
		if (m.getMoption() != null)
			j.setObj(m.getMoption().getId());
		return j;
	}
}
