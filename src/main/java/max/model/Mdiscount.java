package max.model;

import java.sql.Clob;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "mdiscount", catalog = "qx")
public class Mdiscount implements java.io.Serializable {

	private static final long serialVersionUID = 7274010341133430633L;
	private String id;
	private String name;
	private Integer factor;
	private Integer param;
	private Clob remark;

	public Mdiscount() {
	}

	@Id
	@Column(name = "ID", unique = true, nullable = false, length = 36)
	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	@Column(name = "NAME", length = 100)
	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Column(name = "FACTOR")
	public Integer getFactor() {
		return factor;
	}

	public void setFactor(Integer factor) {
		this.factor = factor;
	}

	@Column(name = "PARAM")
	public Integer getParam() {
		return this.param;
	}

	public void setParam(Integer param) {
		this.param = param;
	}

	@Column(name = "REMARK")
	public Clob getRemark() {
		return remark;
	}

	public void setRemark(Clob remark) {
		this.remark = remark;
	}

}