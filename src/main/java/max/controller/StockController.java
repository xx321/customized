package max.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jiangxd.excelTools.ExcelUtils;
import jiangxd.excelTools.JsGridReportBase;
import jiangxd.excelTools.TableData;

import max.pageModel.OptionMsize;
import max.service.StockServiceI;
import max.util.DateUtil;

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
 * 庫存控制器
 * 
 * @author 建龍
 * 
 */
@Controller
@RequestMapping("/stockController")
public class StockController extends BaseController {

	@Autowired
	private StockServiceI stockService;
	
	/**
	 * 跳轉到庫存管理頁面
	 * 
	 * @return
	 */
	@RequestMapping("/manager")
	public String manager() {
		return "/backstage/stock";
	}
	
	/**
	 * 獲取庫存數據表格
	 * 
	 * @param 
	 * @return
	 */
	@RequestMapping("/dataGrid")
	@ResponseBody
	public DataGrid dataGrid(OptionMsize optionMsize, PageHelper ph) {
		return stockService.dataGrid(optionMsize, ph);
	}
	
	/**
	 * 跳轉到庫存編輯頁面
	 * 
	 * @return
	 */
	@RequestMapping("/editPage")
	public String editPage(HttpServletRequest request, String optionId, String sizeId) {
		OptionMsize s = stockService.get(optionId, sizeId);
		request.setAttribute("optionMsize", s);
		return "/backstage/stockEdit";
	}

	/**
	 * 編輯庫存數
	 * 
	 * @param resource
	 * @return
	 */
	@RequestMapping("/edit")
	@ResponseBody
	public Json edit(OptionMsize optionMsize) {
		Json j = new Json();
		stockService.edit(optionMsize);
		j.setSuccess(true);
		j.setMsg("编輯成功！");
		return j;
	}
	
	/**
	 * 導出EXCEL庫存表
	 * @param request
	 * @param response
	 */
	@RequestMapping("/exportExcel")
	@ResponseBody
	public void exportExcel(HttpSession session, HttpServletRequest request, HttpServletResponse response, OptionMsize stock) {
		DataGrid datagrid = stockService.dataGrid(stock, new PageHelper());
		List<OptionMsize> list = datagrid.getRows();
		
		SessionInfo info = (SessionInfo) session.getAttribute(ConfigUtil.getSessionInfoName());
		String title = DateUtil.date2Str(DateUtil.date_sdf_wz) + "庫存數量表";
		String creator = info.getName();
		
		String[] hearders = new String[] {"商  品  名  稱","貨  品  編  號","尺  寸","庫  存  數  量"};
		String[] fields = new String[] {"optionName","itemNo","sizeName","quantity"};
		TableData td = ExcelUtils.createTableData(list, ExcelUtils.createTableHeader(hearders),fields);
		td.compute();
		try {
			JsGridReportBase report = new JsGridReportBase(request,response);
			report.exportToExcel(title, creator, td);
		} catch (Exception e) {
			// TODO Auto-generated catch block			
		}
	}
}
