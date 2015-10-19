package max.pageModel;

/**
 * 信用卡交易用參數
 * @author 龍董
 *
 */
public class BuySafeForm {

	private String web;			//商店代號
	private Integer mn;			//交易金額
	private String orderInfo;	//交易內容
	private String td;			//商家訂單編號
	private String sna;			//消費者姓名
	private String sdt;			//消費者電話
	private String email;		//消費者Email
	private String note1;		//備註1
	private String note2;		//備註2
	private Integer card_Type;	//交易類別 0:信用卡交易、1:銀聯卡交易
	private String country_Type;//語言類別	空白 or EN(英文) or JIS(日文)
	private String chkValue;	//交易檢查碼
	
	private Integer checkoutType;//結帳方式
	
	public String getWeb() {
		return web;
	}
	public void setWeb(String web) {
		this.web = web;
	}
	public Integer getMn() {
		return mn;
	}
	public void setMn(Integer mn) {
		this.mn = mn;
	}
	public String getOrderInfo() {
		return orderInfo;
	}
	public void setOrderInfo(String orderInfo) {
		this.orderInfo = orderInfo;
	}
	public String getTd() {
		return td;
	}
	public void setTd(String td) {
		this.td = td;
	}
	public String getSna() {
		return sna;
	}
	public void setSna(String sna) {
		this.sna = sna;
	}
	public String getSdt() {
		return sdt;
	}
	public void setSdt(String sdt) {
		this.sdt = sdt;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getNote1() {
		return note1;
	}
	public void setNote1(String note1) {
		this.note1 = note1;
	}
	public String getNote2() {
		return note2;
	}
	public void setNote2(String note2) {
		this.note2 = note2;
	}
	public Integer getCard_Type() {
		return card_Type;
	}
	public void setCard_Type(Integer card_Type) {
		this.card_Type = card_Type;
	}
	public String getCountry_Type() {
		return country_Type;
	}
	public void setCountry_Type(String country_Type) {
		this.country_Type = country_Type;
	}
	public String getChkValue() {
		return chkValue;
	}
	public void setChkValue(String chkValue) {
		this.chkValue = chkValue;
	}
	public Integer getCheckoutType() {
		return checkoutType;
	}
	public void setCheckoutType(Integer checkoutType) {
		this.checkoutType = checkoutType;
	}
}
