package max.model;

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
import javax.persistence.Table;

/**
 * 商品類
 * @author 龍董
 *
 */
@Entity
@Table(name = "mgoods", catalog = "qx")
public class Mgoods implements java.io.Serializable {

	private static final long serialVersionUID = 7530873486191049727L;
	private String id;
	private Morder morder;
	private String name;
	private String itemNo;
	private String color;
	private String size;
	private String text;
	private String textColor;
	private String textFont;
	private Integer quantity;
	private Integer price;
	private Integer totalAmount;
	private String remark;
	private Set<Moption> moptions = new HashSet<Moption>(0);

	private String stockOptionId;
	private String stockSizeId;
	
	public Mgoods() {
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
	@JoinColumn(name = "MORDER_ID", nullable = false)
	public Morder getMorder() {
		return this.morder;
	}

	public void setMorder(Morder morder) {
		this.morder = morder;
	}
	
	@Column(name = "NAME", length = 100)
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Column(name = "ITEM_NO", length = 100)
	public String getItemNo() {
		return itemNo;
	}

	public void setItemNo(String itemNo) {
		this.itemNo = itemNo;
	}
	
	@Column(name = "COLOR", length = 100)
	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	@Column(name = "SIZE", length = 100)
	public String getSize() {
		return size;
	}

	public void setSize(String size) {
		this.size = size;
	}

	@Column(name = "TEXT", length = 100)
	public String getText() {
		return this.text;
	}

	public void setText(String text) {
		this.text = text;
	}
	
	@Column(name = "TEXT_COLOR", length = 100)
	public String getTextColor() {
		return textColor;
	}

	public void setTextColor(String textColor) {
		this.textColor = textColor;
	}
	
	@Column(name = "TEXT_FONT", length = 100)
	public String getTextFont() {
		return textFont;
	}

	public void setTextFont(String textFont) {
		this.textFont = textFont;
	}

	@Column(name = "QUANTITY")
	public Integer getQuantity() {
		return this.quantity;
	}

	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}
	
	@Column(name = "PRICE")
	public Integer getPrice() {
		return price;
	}

	public void setPrice(Integer price) {
		this.price = price;
	}

	@Column(name = "TOTAL_AMOUNT")
	public Integer getTotalAmount() {
		return this.totalAmount;
	}

	public void setTotalAmount(Integer totalAmount) {
		this.totalAmount = totalAmount;
	}
	
	@Column(name = "REMARK", length = 100)
	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	@ManyToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY)
	@JoinTable(name = "mgoods_moption", catalog = "qx", joinColumns = { @JoinColumn(name = "MGOODS_ID", nullable = false, updatable = false) }, inverseJoinColumns = { @JoinColumn(name = "MOPTION_ID", nullable = false, updatable = false) })
	public Set<Moption> getMoptions() {
		return this.moptions;
	}

	public void setMoptions(Set<Moption> moptions) {
		this.moptions = moptions;
	}
	
	@Column(name = "STOCK_OPTION_ID", length = 36)
	public String getStockOptionId() {
		return stockOptionId;
	}

	public void setStockOptionId(String stockOptionId) {
		this.stockOptionId = stockOptionId;
	}
	
	@Column(name = "STOCK_SIZE_ID", length = 36)
	public String getStockSizeId() {
		return stockSizeId;
	}

	public void setStockSizeId(String stockSizeId) {
		this.stockSizeId = stockSizeId;
	}
}