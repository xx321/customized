package max.model;

import java.sql.Clob;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * 選項類
 * @author 龍董
 *
 */
@Entity
@Table(name = "moption", catalog = "qx")
public class Moption implements java.io.Serializable {

	private static final long serialVersionUID = -989771501784625781L;
	private String id;
	private Moptiontype moptiontype;
	private Moption moption;
	private String itemNo;
	private String name;
	private Integer price;
	private Clob remark;
	private Integer status;
	private String icon;
	private Integer seq;
	private String url;							//圖片路徑
	private String colorPic;					//色卡圖片
	private Set<Mgoods> mgoodses = new HashSet<Mgoods>(0);
	private Set<Msize> msizes = new HashSet<Msize>(0);
	private Set<Moption> moptions = new HashSet<Moption>(0);

	public Moption() {
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
	@JoinColumn(name = "MOPTIONTYPE_ID", nullable = false)
	public Moptiontype getMoptiontype() {
		return this.moptiontype;
	}

	public void setMoptiontype(Moptiontype moptiontype) {
		this.moptiontype = moptiontype;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "PID")
	public Moption getMoption() {
		return this.moption;
	}

	public void setMoption(Moption moption) {
		this.moption = moption;
	}
	
	@Column(name = "ITEM_NO", length = 100)
	public String getItemNo() {
		return itemNo;
	}

	public void setItemNo(String itemNo) {
		this.itemNo = itemNo;
	}

	@Column(name = "NAME", nullable = false, length = 100)
	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Column(name = "PRICE")
	public Integer getPrice() {
		return this.price;
	}

	public void setPrice(Integer price) {
		this.price = price;
	}

	@Column(name = "REMARK")
	public Clob getRemark() {
		return this.remark;
	}

	public void setRemark(Clob remark) {
		this.remark = remark;
	}

	@Column(name = "STATUS")
	public Integer getStatus() {
		return this.status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	@Column(name = "ICON", length = 100)
	public String getIcon() {
		return this.icon;
	}

	public void setIcon(String icon) {
		this.icon = icon;
	}

	@Column(name = "SEQ")
	public Integer getSeq() {
		return this.seq;
	}

	public void setSeq(Integer seq) {
		this.seq = seq;
	}
	
	@Column(name = "URL", length = 200)
	public String getUrl() {
		return this.url;
	}

	public void setUrl(String url) {
		this.url = url;
	}
	
	@Column(name = "COLOR_PIC", length = 200)
	public String getColorPic() {
		return colorPic;
	}

	public void setColorPic(String colorPic) {
		this.colorPic = colorPic;
	}

	@ManyToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "moptions")
	public Set<Mgoods> getMgoodses() {
		return this.mgoodses;
	}

	public void setMgoodses(Set<Mgoods> mgoodses) {
		this.mgoodses = mgoodses;
	}

	@ManyToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY)
	@JoinTable(name = "moption_msize", catalog = "qx", joinColumns = { @JoinColumn(name = "MOPTION_ID", nullable = false, updatable = false) }, inverseJoinColumns = { @JoinColumn(name = "MSIZE_ID", nullable = false, updatable = false) })
	public Set<Msize> getMsizes() {
		return this.msizes;
	}

	public void setMsizes(Set<Msize> msizes) {
		this.msizes = msizes;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "moption")
	public Set<Moption> getMoptions() {
		return this.moptions;
	}

	public void setMoptions(Set<Moption> moptions) {
		this.moptions = moptions;
	}

}