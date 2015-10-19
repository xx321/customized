package max.pageModel;

import java.text.SimpleDateFormat;
import java.util.Date;

public class Customer implements java.io.Serializable {

	private String id;
	private String account;		//帳號
	private String pwd;			//密碼
	private String name;		//真實姓名
	private Date birthday;		//生日
	private Integer sex;		//性別
	private String email;		//電子郵件
	private String tel;			//電話
	private String phone;		//行動電話
	private String postal;		//郵遞區號
	private String city;		//市
	private String town;		//區
	private String addr;		//地址
	private String agree;		//同意事項
	private Date createdatetime;//建立時間
	private Date modifydatetime;//修改時間

	private Date createdatetimeStart;
	private Date createdatetimeEnd;
	private Date modifydatetimeStart;
	private Date modifydatetimeEnd;
	
	private String birthdayStr;	//生日字符串
	
	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getAccount() {
		return this.account;
	}

	public void setAccount(String account) {
		this.account = account;
	}

	public String getPwd() {
		return this.pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Date getBirthday() {
		return this.birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	public Integer getSex() {
		return this.sex;
	}

	public void setSex(Integer sex) {
		this.sex = sex;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
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

	public String getAgree() {
		return this.agree;
	}

	public void setAgree(String agree) {
		this.agree = agree;
	}

	public Date getCreatedatetime() {
		return createdatetime;
	}

	public void setCreatedatetime(Date createdatetime) {
		this.createdatetime = createdatetime;
	}

	public Date getModifydatetime() {
		return modifydatetime;
	}

	public void setModifydatetime(Date modifydatetime) {
		this.modifydatetime = modifydatetime;
	}

	public Date getCreatedatetimeStart() {
		return createdatetimeStart;
	}

	public void setCreatedatetimeStart(Date createdatetimeStart) {
		this.createdatetimeStart = createdatetimeStart;
	}

	public Date getCreatedatetimeEnd() {
		return createdatetimeEnd;
	}

	public void setCreatedatetimeEnd(Date createdatetimeEnd) {
		this.createdatetimeEnd = createdatetimeEnd;
	}

	public Date getModifydatetimeStart() {
		return modifydatetimeStart;
	}

	public void setModifydatetimeStart(Date modifydatetimeStart) {
		this.modifydatetimeStart = modifydatetimeStart;
	}

	public Date getModifydatetimeEnd() {
		return modifydatetimeEnd;
	}

	public void setModifydatetimeEnd(Date modifydatetimeEnd) {
		this.modifydatetimeEnd = modifydatetimeEnd;
	}

	public String getSexStr() {
		if (sex != null && sex==1)
			return "男";
		return "女";
	}
	
	public void setBirthdayStr(String birthdayStr) {
		this.birthdayStr = birthdayStr;
	}

	public String getBirthdayStr() {
		if (birthday != null) 
			return new SimpleDateFormat("yyyy-MM-dd").format(birthday);
		return this.birthdayStr;
	}
}