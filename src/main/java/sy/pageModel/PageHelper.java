package sy.pageModel;

/**
 * EasyUI 分页帮助类
 * 
 * @author 孙宇
 * 
 */
public class PageHelper implements java.io.Serializable {

	private static final long serialVersionUID = 2749373749241738893L;
	
	private int page;// 當前頁
	private int rows;// 每頁顯示記錄數
	private String sort;// 排序字段
	private String order;// asc/desc

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public int getRows() {
		return rows;
	}

	public void setRows(int rows) {
		this.rows = rows;
	}

	public String getSort() {
		return sort;
	}

	public void setSort(String sort) {
		this.sort = sort;
	}

	public String getOrder() {
		return order;
	}

	public void setOrder(String order) {
		this.order = order;
	}

}
