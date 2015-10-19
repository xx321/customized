package max.model;

import javax.persistence.AttributeOverride;
import javax.persistence.AttributeOverrides;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Version;

import max.model.modelKey.MoptionMsizeId;

/**
 * 庫存類
 * @author 龍董
 *
 */
@Entity
@Table(name = "moption_msize", catalog = "qx")
public class MoptionMsize implements java.io.Serializable {

	private static final long serialVersionUID = -3489861290456658205L;
	private MoptionMsizeId id;
	private Msize msize;
	private Moption moption;
	private Integer quantity;
	
	private Integer version;

	public MoptionMsize() {
	}

	@EmbeddedId
	@AttributeOverrides({
			@AttributeOverride(name = "moptionId", column = @Column(name = "MOPTION_ID", nullable = false, length = 36)),
			@AttributeOverride(name = "msizeId", column = @Column(name = "MSIZE_ID", nullable = false, length = 36)) })
	public MoptionMsizeId getId() {
		return this.id;
	}

	public void setId(MoptionMsizeId id) {
		this.id = id;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "MSIZE_ID", nullable = false, insertable = false, updatable = false)
	public Msize getMsize() {
		return this.msize;
	}

	public void setMsize(Msize msize) {
		this.msize = msize;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "MOPTION_ID", nullable = false, insertable = false, updatable = false)
	public Moption getMoption() {
		return this.moption;
	}

	public void setMoption(Moption moption) {
		this.moption = moption;
	}

	@Column(name = "QUANTITY")
	public Integer getQuantity() {
		return this.quantity;
	}

	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}

	@Version
	@Column(name = "VERSION")
	public Integer getVersion() {
		return version;
	}

	public void setVersion(Integer version) {
		this.version = version;
	}

}