package max.model;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * 訂單類
 * @author 龍董
 *
 */
@Entity
@Table(name = "morder", catalog = "qx")
public class Morder implements java.io.Serializable {

	private static final long serialVersionUID = 3147469039335064074L;
	private String id;
	private Mrecipient mrecipient;	//收件人
	private Mcustomer mcustomer;	//客戶
	private String code;			//訂單編號
	private Integer total;
	private Integer totalAmount;	
	private Date createDate;	
	private Date checkoutDate;	//結帳時間
	private Date workingDate;	//加工時間
	private Date shipDate;		//出貨時間
	private Integer state;		//訂單狀態 (0:結帳櫃台、1:加工櫃台、2:出貨櫃台、3:已出貨、-1:人工作廢、-2系統作廢)
	private Integer checkoutType;	//結帳方式 (0:現金結帳、1:信用卡結帳)
	private String remark = "";
	private Set<Mgoods> mgoodses = new HashSet<Mgoods>(0);

	public Morder() {
	}

	@Id
	@Column(name = "ID", unique = true, nullable = false, length = 36)
	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "MRECIPIENT_ID", nullable = false)
	public Mrecipient getMrecipient() {
		return this.mrecipient;
	}

	public void setMrecipient(Mrecipient mrecipient) {
		this.mrecipient = mrecipient;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "MCUSTOMER_ID")
	public Mcustomer getMcustomer() {
		return this.mcustomer;
	}

	public void setMcustomer(Mcustomer mcustomer) {
		this.mcustomer = mcustomer;
	}
	
	@Column(name = "CODE", length = 11)
	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}
	
	@Column(name = "TOTAL", nullable = false)
	public Integer getTotal() {
		return total;
	}

	public void setTotal(Integer total) {
		this.total = total;
	}

	@Column(name = "TOTAL_AMOUNT", nullable = false)
	public Integer getTotalAmount() {
		return this.totalAmount;
	}

	public void setTotalAmount(Integer totalAmount) {
		this.totalAmount = totalAmount;
	}

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "CREATE_DATE", nullable = false, length = 19)
	public Date getCreateDate() {
		return this.createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "CHECKOUT_DATE", length = 19)
	public Date getCheckoutDate() {
		return this.checkoutDate;
	}

	public void setCheckoutDate(Date checkoutDate) {
		this.checkoutDate = checkoutDate;
	}

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "WORKING_DATE", length = 19)
	public Date getWorkingDate() {
		return workingDate;
	}

	public void setWorkingDate(Date workingDate) {
		this.workingDate = workingDate;
	}
	
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "SHIP_DATE", length = 19)
	public Date getShipDate() {
		return this.shipDate;
	}

	public void setShipDate(Date shipDate) {
		this.shipDate = shipDate;
	}

	@Column(name = "STATE", nullable = false)
	public Integer getState() {
		return this.state;
	}

	public void setState(Integer state) {
		this.state = state;
	}
	
	@Column(name = "CHECKOUT_TYPE", nullable = false)
	public Integer getCheckoutType() {
		return checkoutType;
	}

	public void setCheckoutType(Integer checkoutType) {
		this.checkoutType = checkoutType;
	}
	
	@Column(name = "REMARK", length = 100)
	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "morder")
	public Set<Mgoods> getMgoodses() {
		return this.mgoodses;
	}

	public void setMgoodses(Set<Mgoods> mgoodses) {
		this.mgoodses = mgoodses;
	}

}