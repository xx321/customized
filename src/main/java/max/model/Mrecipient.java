package max.model;

import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * 收件人
 * @author 龍董
 *
 */
@Entity
@Table(name = "mrecipient", catalog = "qx")
public class Mrecipient implements java.io.Serializable {

	private static final long serialVersionUID = -6984070873877995455L;
	private String id;
	private String name;
	private String tel;
	private String phone;
	private String postal;
	private String city;
	private String town;
	private String addr;
	private String email;
	private String coTitle;
	private String taxNo;
	private String remark;
	private Integer invoiceType;
	private String shipTime;
	private Set<Morder> morders = new HashSet<Morder>(0);

	public Mrecipient() {
	}

	@Id
	@Column(name = "ID", unique = true, nullable = false, length = 36)
	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	@Column(name = "NAME", nullable = false, length = 64)
	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
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

	@Column(name = "EMAIL", length = 64)
	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Column(name = "CO_TITLE", length = 64)
	public String getCoTitle() {
		return this.coTitle;
	}

	public void setCoTitle(String coTitle) {
		this.coTitle = coTitle;
	}

	@Column(name = "TAX_NO", length = 15)
	public String getTaxNo() {
		return this.taxNo;
	}

	public void setTaxNo(String taxNo) {
		this.taxNo = taxNo;
	}

	@Column(name = "REMARK", length = 200)
	public String getRemark() {
		return this.remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}
	
	@Column(name = "INVOICE_TYPE")
	public Integer getInvoiceType() {
		return invoiceType;
	}

	public void setInvoiceType(Integer invoiceType) {
		this.invoiceType = invoiceType;
	}

	@Column(name = "SHIP_TIME", length = 64)
	public String getShipTime() {
		return this.shipTime;
	}

	public void setShipTime(String shipTime) {
		this.shipTime = shipTime;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "mrecipient")
	public Set<Morder> getMorders() {
		return this.morders;
	}

	public void setMorders(Set<Morder> morders) {
		this.morders = morders;
	}

}