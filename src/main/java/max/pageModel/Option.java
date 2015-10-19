package max.pageModel;

public class Option implements java.io.Serializable {
	
	private String id;
	private String typeId;		//選項類型ID
	private String typeName;	//選項類型名稱
	private String pid;			//上級選項ID
	private String pname;		//上級選項名稱	
	private String itemNo;		//貨號
	private String name;		//選項名稱
	private Integer price;		//價格
	private String remark;		//備註
	private Integer status;		//銷售狀態(0:正常銷售、1:停止銷售)
	private String iconCls;		//樹狀顯示圖
	private Integer seq;		
	private String url;			//圖片URL
	private String colorPic;	//色卡URL
	
	private String state = "closed";
	
	private String sizeIds;
	
	private String iconTop;
	private String iconLeft;
	private String iconHeight;
	private String iconWidth;
	private String iconDeg;
	private String textTop;
	private String textLeft;
	private String textHeight;
	private String textWidth;
	private String textDeg;
	
	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getTypeId() {
		return typeId;
	}

	public void setTypeId(String typeId) {
		this.typeId = typeId;
	}

	public String getTypeName() {
		return typeName;
	}

	public void setTypeName(String typeName) {
		this.typeName = typeName;
	}

	public String getPid() {
		return pid;
	}

	public void setPid(String pid) {
		this.pid = pid;
	}

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public String getItemNo() {
		return itemNo;
	}

	public void setItemNo(String itemNo) {
		this.itemNo = itemNo;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getPrice() {
		return this.price;
	}

	public void setPrice(Integer price) {
		this.price = price;
	}

	public String getRemark() {
		return this.remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public Integer getStatus() {
		return this.status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public String getIconCls() {
		return iconCls;
	}

	public void setIconCls(String iconCls) {
		this.iconCls = iconCls;
	}

	public Integer getSeq() {
		return this.seq;
	}

	public void setSeq(Integer seq) {
		this.seq = seq;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getColorPic() {
		return colorPic;
	}

	public void setColorPic(String colorPic) {
		this.colorPic = colorPic;
	}
	
	public String getStatusStr() {
		if(this.status == null || this.status == 0)
			return "";
		return "停止銷售";
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getSizeIds() {
		return sizeIds;
	}

	public void setSizeIds(String sizeIds) {
		this.sizeIds = sizeIds;
	}

	public String getIconTop() {
		return iconTop;
	}

	public void setIconTop(String iconTop) {
		this.iconTop = iconTop;
	}

	public String getIconLeft() {
		return iconLeft;
	}

	public void setIconLeft(String iconLeft) {
		this.iconLeft = iconLeft;
	}

	public String getIconHeight() {
		return iconHeight;
	}

	public void setIconHeight(String iconHeight) {
		this.iconHeight = iconHeight;
	}

	public String getIconWidth() {
		return iconWidth;
	}

	public void setIconWidth(String iconWidth) {
		this.iconWidth = iconWidth;
	}

	public String getIconDeg() {
		return iconDeg;
	}

	public void setIconDeg(String iconDeg) {
		this.iconDeg = iconDeg;
	}

	public String getTextTop() {
		return textTop;
	}

	public void setTextTop(String textTop) {
		this.textTop = textTop;
	}

	public String getTextLeft() {
		return textLeft;
	}

	public void setTextLeft(String textLeft) {
		this.textLeft = textLeft;
	}

	public String getTextHeight() {
		return textHeight;
	}

	public void setTextHeight(String textHeight) {
		this.textHeight = textHeight;
	}

	public String getTextWidth() {
		return textWidth;
	}

	public void setTextWidth(String textWidth) {
		this.textWidth = textWidth;
	}

	public String getTextDeg() {
		return textDeg;
	}

	public void setTextDeg(String textDeg) {
		this.textDeg = textDeg;
	}
}
