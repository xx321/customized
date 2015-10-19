package max.pageModel;

public class Recipient implements java.io.Serializable {

	private String id;
	private String name;		//收件人姓名
	private String tel;			//室內電話  
	private String phone;		//手機號碼
	private String postal;		//郵遞區號
	private String city;		//縣、市
	private String town;		//鄉、鎮
	private String addr;		//收貨地址
	private String email;		//電子郵件
	private String coTitle;		//公司抬頭
	private String taxNo;		//統一編號
	private String remark;		//送貨備註
	private Integer invoiceType;//發票型式	< 0 :二聯式  、  1 : 三聯式  (含抬頭，統編)>
	private String shipTime;	//出貨時間

	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getTel() {
		return this.tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getPhone() {
		return this.phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getPostal() {
		return this.postal;
	}

	public void setPostal(String postal) {
		this.postal = postal;
	}

	public String getCity() {
		return this.city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getTown() {
		return this.town;
	}

	public void setTown(String town) {
		this.town = town;
	}

	public String getAddr() {
		return this.addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getCoTitle() {
		return this.coTitle;
	}

	public void setCoTitle(String coTitle) {
		this.coTitle = coTitle;
	}

	public String getTaxNo() {
		return this.taxNo;
	}

	public void setTaxNo(String taxNo) {
		this.taxNo = taxNo;
	}

	public Integer getInvoiceType() {
		return invoiceType;
	}

	public void setInvoiceType(Integer invoiceType) {
		this.invoiceType = invoiceType;
	}

	public String getRemark() {
		return this.remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public String getShipTime() {
		return this.shipTime;
	}

	public void setShipTime(String shipTime) {
		this.shipTime = shipTime;
	}

}