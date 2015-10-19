package max.pageModel;

import java.util.HashSet;
import java.util.Set;

public class Goods implements java.io.Serializable {

	private String id;
	private String name;			//商品名稱
	private String itemNo;			//貨號
	private String color;			//顏色
	private String size;			//尺寸
	private String text;			//電繡文字
	private String textColor;		//文字顏色
	private String textFont;		//文字字體
	private Integer quantity;		//數量
	private Integer price;			//單價
	private Integer totalAmount;	//總金額
	private String remark;
	private String t0Name;			//襪子種類
	private String t1Name;			//襪子款式
	private String t2Name;			//襪子花紋
	private String t3Name;			//襪子顏色
	private String t4Name;			//電繡圖案種類
	private String t5Name;			//電繡圖案顏色
	private String t6Name;			//包裝方式

	private String orderId;
	
	private String t0Id;
	private String t1Id;
	private String t2Id;
	private String t3Id;
	private String t4Id;
	private String t5Id;
	private String t6Id;
	
	private String stockSizeId;
	private Integer stock;
	
	private Set<Option> options = new HashSet<Option>(0);
	
	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getItemNo() {
		return itemNo;
	}

	public void setItemNo(String itemNo) {
		this.itemNo = itemNo;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public String getSize() {
		return size;
	}

	public void setSize(String size) {
		this.size = size;
	}

	public String getText() {
		return this.text;
	}

	public void setText(String text) {
		this.text = text;
	}

	public String getTextColor() {
		return textColor;
	}

	public void setTextColor(String textColor) {
		this.textColor = textColor;
	}

	public String getTextFont() {
		return textFont;
	}

	public void setTextFont(String textFont) {
		this.textFont = textFont;
	}

	public Integer getQuantity() {
		return this.quantity;
	}

	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}

	public Integer getPrice() {
		return price;
	}

	public void setPrice(Integer price) {
		this.price = price;
	}

	public Integer getTotalAmount() {
		return this.totalAmount;
	}

	public void setTotalAmount(Integer totalAmount) {
		this.totalAmount = totalAmount;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public String getT0Name() {
		return t0Name;
	}

	public void setT0Name(String t0Name) {
		this.t0Name = t0Name;
	}

	public String getT1Name() {
		return t1Name;
	}

	public void setT1Name(String t1Name) {
		this.t1Name = t1Name;
	}

	public String getT2Name() {
		return t2Name;
	}

	public void setT2Name(String t2Name) {
		this.t2Name = t2Name;
	}

	public String getT3Name() {
		return t3Name;
	}

	public void setT3Name(String t3Name) {
		this.t3Name = t3Name;
	}

	public String getT4Name() {
		return t4Name;
	}

	public void setT4Name(String t4Name) {
		this.t4Name = t4Name;
	}

	public String getT5Name() {
		return t5Name;
	}

	public void setT5Name(String t5Name) {
		this.t5Name = t5Name;
	}

	public String getT6Name() {
		return t6Name;
	}

	public void setT6Name(String t6Name) {
		this.t6Name = t6Name;
	}

	public String getOrderId() {
		return orderId;
	}

	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}

	public String getT0Id() {
		return t0Id;
	}

	public void setT0Id(String t0Id) {
		this.t0Id = t0Id;
	}

	public String getT1Id() {
		return t1Id;
	}

	public void setT1Id(String t1Id) {
		this.t1Id = t1Id;
	}

	public String getT2Id() {
		return t2Id;
	}

	public void setT2Id(String t2Id) {
		this.t2Id = t2Id;
	}

	public String getT3Id() {
		return t3Id;
	}

	public void setT3Id(String t3Id) {
		this.t3Id = t3Id;
	}

	public String getT4Id() {
		return t4Id;
	}

	public void setT4Id(String t4Id) {
		this.t4Id = t4Id;
	}

	public String getT5Id() {
		return t5Id;
	}

	public void setT5Id(String t5Id) {
		this.t5Id = t5Id;
	}

	public String getT6Id() {
		return t6Id;
	}

	public void setT6Id(String t6Id) {
		this.t6Id = t6Id;
	}

	public String getStockSizeId() {
		return stockSizeId;
	}

	public void setStockSizeId(String stockSizeId) {
		this.stockSizeId = stockSizeId;
	}

	public Integer getStock() {
		return stock;
	}

	public void setStock(Integer stock) {
		this.stock = stock;
	}

}