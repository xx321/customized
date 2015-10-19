package max.model;

import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

/**
 * 尺寸
 * @author 龍董
 *
 */
@Entity
@Table(name = "msize", catalog = "qx")
public class Msize implements java.io.Serializable {

	private static final long serialVersionUID = -31382091393089960L;
	private String id;
	private String name;
	private Integer status;
	private Integer seq;
	private Set<Moption> moptions = new HashSet<Moption>(0);

	public Msize() {
	}

	@Id
	@Column(name = "ID", unique = true, nullable = false, length = 36)
	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	@Column(name = "NAME", nullable = false, length = 100)
	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Column(name = "STATUS")
	public Integer getStatus() {
		return this.status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}
	
	@Column(name = "SEQ")
	public Integer getSeq() {
		return this.seq;
	}

	public void setSeq(Integer seq) {
		this.seq = seq;
	}
	
	@ManyToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "msizes")
	public Set<Moption> getMoptions() {
		return this.moptions;
	}

	public void setMoptions(Set<Moption> moptions) {
		this.moptions = moptions;
	}

}