package max.pageModel;

import max.comparator.OrderSeq;

public class Size implements java.io.Serializable, OrderSeq {

	private String id;
	private String name;
	private Integer status;
	private Integer seq;

	private String stockSizeId;
	private Integer quantity;
	
	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getStatus() {
		return this.status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}
	
	public Integer getSeq() {
		return this.seq;
	}

	public void setSeq(Integer seq) {
		this.seq = seq;
	}

	public String getStockSizeId() {
		return stockSizeId;
	}

	public void setStockSizeId(String stockSizeId) {
		this.stockSizeId = stockSizeId;
	}

	public Integer getQuantity() {
		return quantity;
	}

	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}

}