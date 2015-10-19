package max.model.modelKey;

import javax.persistence.Column;
import javax.persistence.Embeddable;

@Embeddable
public class MoptionMsizeId implements java.io.Serializable {

	private static final long serialVersionUID = -975151220106543749L;
	private String moptionId;
	private String msizeId;

	public MoptionMsizeId() {
	}

	public MoptionMsizeId(String moptionId, String msizeId) {
		this.moptionId = moptionId;
		this.msizeId = msizeId;
	}

	@Column(name = "MOPTION_ID", nullable = false, length = 36)
	public String getMoptionId() {
		return this.moptionId;
	}

	public void setMoptionId(String moptionId) {
		this.moptionId = moptionId;
	}

	@Column(name = "MSIZE_ID", nullable = false, length = 36)
	public String getMsizeId() {
		return this.msizeId;
	}

	public void setMsizeId(String msizeId) {
		this.msizeId = msizeId;
	}

	public boolean equals(Object other) {
		if ((this == other))
			return true;
		if ((other == null))
			return false;
		if (!(other instanceof MoptionMsizeId))
			return false;
		MoptionMsizeId castOther = (MoptionMsizeId) other;

		return ((this.getMoptionId() == castOther.getMoptionId()) || (this
				.getMoptionId() != null && castOther.getMoptionId() != null && this
				.getMoptionId().equals(castOther.getMoptionId())))
				&& ((this.getMsizeId() == castOther.getMsizeId()) || (this
						.getMsizeId() != null && castOther.getMsizeId() != null && this
						.getMsizeId().equals(castOther.getMsizeId())));
	}

	public int hashCode() {
		int result = 17;

		result = 37 * result
				+ (getMoptionId() == null ? 0 : this.getMoptionId().hashCode());
		result = 37 * result
				+ (getMsizeId() == null ? 0 : this.getMsizeId().hashCode());
		return result;
	}

}