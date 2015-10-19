package max.pageModel;

public class Discount implements java.io.Serializable {

	private String id;
	private String name;
	private Integer factor;
	private Integer param;
	private String remark;

	public Discount() {
	}

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

	public Integer getFactor() {
		return factor;
	}

	public void setFactor(Integer factor) {
		this.factor = factor;
	}

	public Integer getParam() {
		return this.param;
	}

	public void setParam(Integer param) {
		this.param = param;
	}

	public String getRemark() {
		return this.remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

}