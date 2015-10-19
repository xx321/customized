package max.pageModel;

import java.util.Date;
import java.util.LinkedHashSet;
import java.util.Set;

public class Order implements java.io.Serializable {

	private String id;
	private String recipientName;	//收件人姓名
	private String recipientPhone;	//收件人電話(手機)
	private String recipientPostal;	//收件人(郵遞區號)
	private String recipientCity;	//收件人(居住縣/市)
	private String recipientTown;	//收件人(居住地區)
	private String recipientAddr;	//收件人(居住地址)
	private String recipientEmail;	//收件人(電子郵件)
	private String customerName;	//客戶姓名
	private String customerPhone;	//客戶電話(手機)
	private String code;			//訂單編號
	private Integer total;
	private Integer totalAmount;	
	private Date createDate;		//創建時間	
	private Date checkoutDate;		//結帳時間
	private Date workingDate;		//加工時間
	private Date shipDate;			//出貨時間
	private Integer state;			//訂單狀態 (0:結帳櫃台、1:加工櫃台、2:出貨櫃台、3:已出貨、-1:人工作廢、-2系統作廢)
	private Integer checkoutType;	//結帳方式 (0:現金結帳、1:信用卡結帳)
	private String remark = "";
	
	private Set<Goods> goodses = new LinkedHashSet<Goods>(0);
	
	private boolean sendMailOK = false;
	
	private Date deliveryDate;
	
	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getRecipientName() {
		return recipientName;
	}

	public void setRecipientName(String recipientName) {
		this.recipientName = recipientName;
	}

	public String getRecipientPhone() {
		return recipientPhone;
	}

	public void setRecipientPhone(String recipientPhone) {
		this.recipientPhone = recipientPhone;
	}

	public String getRecipientPostal() {
		return recipientPostal;
	}

	public void setRecipientPostal(String recipientPostal) {
		this.recipientPostal = recipientPostal;
	}

	public String getRecipientCity() {
		return recipientCity;
	}

	public void setRecipientCity(String recipientCity) {
		this.recipientCity = recipientCity;
	}

	public String getRecipientTown() {
		return recipientTown;
	}

	public void setRecipientTown(String recipientTown) {
		this.recipientTown = recipientTown;
	}

	public String getRecipientAddr() {
		return recipientAddr;
	}

	public void setRecipientAddr(String recipientAddr) {
		this.recipientAddr = recipientAddr;
	}

	public String getRecipientEmail() {
		return recipientEmail;
	}

	public void setRecipientEmail(String recipientEmail) {
		this.recipientEmail = recipientEmail;
	}

	public String getCustomerName() {
		return customerName;
	}

	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}

	public String getCustomerPhone() {
		return customerPhone;
	}

	public void setCustomerPhone(String customerPhone) {
		this.customerPhone = customerPhone;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public Integer getTotal() {
		return total;
	}

	public void setTotal(Integer total) {
		this.total = total;
	}

	public Integer getTotalAmount() {
		return this.totalAmount;
	}

	public void setTotalAmount(Integer totalAmount) {
		this.totalAmount = totalAmount;
	}
	
	public Date getCreateDate() {
		return this.createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public Date getCheckoutDate() {
		return this.checkoutDate;
	}

	public void setCheckoutDate(Date checkoutDate) {
		this.checkoutDate = checkoutDate;
	}

	public Date getWorkingDate() {
		return workingDate;
	}

	public void setWorkingDate(Date workingDate) {
		this.workingDate = workingDate;
	}

	public Date getShipDate() {
		return this.shipDate;
	}

	public void setShipDate(Date shipDate) {
		this.shipDate = shipDate;
	}

	public Integer getState() {
		return this.state;
	}

	public void setState(Integer state) {
		this.state = state;
	}

	public Integer getCheckoutType() {
		return checkoutType;
	}

	public void setCheckoutType(Integer checkoutType) {
		this.checkoutType = checkoutType;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public Set<Goods> getGoodses() {
		return goodses;
	}

	public void setGoodses(Set<Goods> goodses) {
		this.goodses = goodses;
	}

	public boolean isSendMailOK() {
		return sendMailOK;
	}

	public void setSendMailOK(boolean sendMailOK) {
		this.sendMailOK = sendMailOK;
	}

	public Date getDeliveryDate() {
		return deliveryDate;
	}

	public void setDeliveryDate(Date deliveryDate) {
		this.deliveryDate = deliveryDate;
	}

}