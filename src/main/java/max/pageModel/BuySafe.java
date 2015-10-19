package max.pageModel;

public class BuySafe implements java.io.Serializable {

	private String buysafeord;	//紅陽訂單編號 
	private String buysafeno;	//紅陽訂單編號 
	private String web;			//商店代號
	private String Td;			//商家訂單編號
	private String MN;			//交易金額
	private String webname;		//商家網站名稱
	private String Name;		//消費者姓名
	private String tel;			//消費者電話
	private String OrderInfo;	//訂單內容
	private String note1;		//備註1
	private String note2;		//備註2
	private String ApproveCode;//交易授權碼
	
	private String UserNo;
	private String paycode;
	
	private String SendType;	//傳送方式 1:背景傳送 2:網頁傳送
	private String errcode;		//回覆代碼 00 表示交易成功。其餘交易失敗!
//	private String errmsg;		//回覆代碼解釋
	private String cardno4;	//授權卡號後4碼
//	private String Card_Type;	//交易類別 0:信用卡交易、1:銀聯卡交易
	private String ChkValue;	//交易檢查碼
	
	public BuySafe() {
	}

	public String getBuysafeord() {
		return buysafeord;
	}

	public void setBuysafeord(String buysafeord) {
		this.buysafeord = buysafeord;
	}

	public String getBuysafeno() {
		return buysafeno;
	}

	public void setBuysafeno(String buysafeno) {
		this.buysafeno = buysafeno;
	}

	public String getWeb() {
		return web;
	}

	public void setWeb(String web) {
		this.web = web;
	}

	public String getTd() {
		return Td;
	}

	public void setTd(String td) {
		Td = td;
	}

	public String getMN() {
		return MN;
	}

	public void setMN(String mN) {
		MN = mN;
	}

	public String getWebname() {
		return webname;
	}

	public void setWebname(String webname) {
		this.webname = webname;
	}

	public String getName() {
		return Name;
	}

	public void setName(String name) {
		Name = name;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getOrderInfo() {
		return OrderInfo;
	}

	public void setOrderInfo(String orderInfo) {
		OrderInfo = orderInfo;
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

	public String getApproveCode() {
		return ApproveCode;
	}

	public void setApproveCode(String approveCode) {
		ApproveCode = approveCode;
	}

	public String getUserNo() {
		return UserNo;
	}

	public void setUserNo(String userNo) {
		UserNo = userNo;
	}

	public String getPaycode() {
		return paycode;
	}

	public void setPaycode(String paycode) {
		this.paycode = paycode;
	}

	public String getSendType() {
		return SendType;
	}

	public void setSendType(String sendType) {
		SendType = sendType;
	}

	public String getErrcode() {
		return errcode;
	}

	public void setErrcode(String errcode) {
		this.errcode = errcode;
	}

	public String getCardno4() {
		return cardno4;
	}

	public void setCardno4(String cardno4) {
		this.cardno4 = cardno4;
	}

	public String getChkValue() {
		return ChkValue;
	}

	public void setChkValue(String chkValue) {
		ChkValue = chkValue;
	}

}