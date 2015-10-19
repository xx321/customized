package max.model;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * 客戶類(會員)
 * @author 龍董
 *
 */
@Entity
@Table(name = "mcustomer", catalog = "qx")
public class Mcustomer implements java.io.Serializable {

	private static final long serialVersionUID = -7164260248488692123L;
	private String id;
	private String account;
	private String pwd;
	private String name;
	private Date birthday;
	private Integer sex;
	private String email;
	private String tel;
	private String phone;
	private String postal;
	private String city;
	private String town;
	private String addr;
	private String agree;
	private Date createdatetime;
	private Date modifydatetime;
	private Set<Morder> morders = new HashSet<Morder>(0);

	public Mcustomer() {
	}

	@Id
	@Column(name = "ID", unique = true, nullable = false, length = 36)
	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	@Column(name = "ACCOUNT", nullable = false, length = 64)
	public String getAccount() {
		return this.account;
	}

	public void setAccount(String account) {
		this.account = account;
	}

	@Column(name = "PWD", nullable = false, length = 64)
	public String getPwd() {
		return this.pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	@Column(name = "NAME", nullable = false, length = 64)
	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Temporal(TemporalType.DATE)
	@Column(name = "BIRTHDAY", length = 10)
	public Date getBirthday() {
		return this.birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	@Column(name = "SEX")
	public Integer getSex() {
		return this.sex;
	}

	public void setSex(Integer sex) {
		this.sex = sex;
	}

	@Column(name = "EMAIL", nullable = false, length = 64)
	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Column(name = "TEL", length = 24)
	public String getTel() {
		return this.tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	@Column(name = "PHONE", nullable = false, length = 24)
	public String getPhone() {
		return this.phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	@Column(name = "POSTAL", nullable = false, length = 15)
	public String getPostal() {
		return this.postal;
	}

	public void setPostal(String postal) {
		this.postal = postal;
	}

	@Column(name = "CITY", nullable = false, length = 15)
	public String getCity() {
		return this.city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	@Column(name = "TOWN", nullable = false, length = 15)
	public String getTown() {
		return this.town;
	}

	public void setTown(String town) {
		this.town = town;
	}

	@Column(name = "ADDR", nullable = false, length = 25)
	public String getAddr() {
		return this.addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	@Column(name = "AGREE", nullable = false, length = 11)
	public String getAgree() {
		return this.agree;
	}

	public void setAgree(String agree) {
		this.agree = agree;
	}
	
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "CREATEDATETIME", length = 19)
	public Date getCreatedatetime() {
		return this.createdatetime;
	}

	public void setCreatedatetime(Date createdatetime) {
		this.createdatetime = createdatetime;
	}

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "MODIFYDATETIME", length = 19)
	public Date getModifydatetime() {
		return this.modifydatetime;
	}

	public void setModifydatetime(Date modifydatetime) {
		this.modifydatetime = modifydatetime;
	}
	
	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "mcustomer")
	public Set<Morder> getMorders() {
		return this.morders;
	}

	public void setMorders(Set<Morder> morders) {
		this.morders = morders;
	}

}