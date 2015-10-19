package max.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;

/**
 * 座標類
 * @author 龍董
 *
 */
@Entity
@Table(name = "mcoordinate", catalog = "qx")
public class Mcoordinate implements java.io.Serializable {

	private static final long serialVersionUID = -4826075427261966827L;
	private String id;
	private Moption moption;
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

	public Mcoordinate() {
	}

	@Id
	@Column(name = "ID", unique = true, nullable = false, length = 36)
	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	@OneToOne(fetch = FetchType.LAZY)
	@PrimaryKeyJoinColumn
	public Moption getMoption() {
		return this.moption;
	}

	public void setMoption(Moption moption) {
		this.moption = moption;
	}

	@Column(name = "ICON_TOP", length = 100)
	public String getIconTop() {
		return this.iconTop;
	}

	public void setIconTop(String iconTop) {
		this.iconTop = iconTop;
	}
	
	@Column(name = "ICON_LEFT", length = 100)
	public String getIconLeft() {
		return this.iconLeft;
	}

	public void setIconLeft(String iconLeft) {
		this.iconLeft = iconLeft;
	}
	
	@Column(name = "ICON_HEIGHT", length = 100)
	public String getIconHeight() {
		return iconHeight;
	}

	public void setIconHeight(String iconHeight) {
		this.iconHeight = iconHeight;
	}
	
	@Column(name = "ICON_WIDTH", length = 100)
	public String getIconWidth() {
		return iconWidth;
	}

	public void setIconWidth(String iconWidth) {
		this.iconWidth = iconWidth;
	}
	
	@Column(name = "ICON_DEG", length = 100)
	public String getIconDeg() {
		return iconDeg;
	}

	public void setIconDeg(String iconDeg) {
		this.iconDeg = iconDeg;
	}

	@Column(name = "TEXT_TOP", length = 100)
	public String getTextTop() {
		return this.textTop;
	}

	public void setTextTop(String textTop) {
		this.textTop = textTop;
	}
	
	@Column(name = "TEXT_LEFT", length = 100)
	public String getTextLeft() {
		return textLeft;
	}

	public void setTextLeft(String textLeft) {
		this.textLeft = textLeft;
	}
	
	@Column(name = "TEXT_HEIGHT", length = 100)
	public String getTextHeight() {
		return textHeight;
	}

	public void setTextHeight(String textHeight) {
		this.textHeight = textHeight;
	}
	
	@Column(name = "TEXT_WIDTH", length = 100)
	public String getTextWidth() {
		return textWidth;
	}

	public void setTextWidth(String textWidth) {
		this.textWidth = textWidth;
	}
	
	@Column(name = "TEXT_DEG", length = 100)
	public String getTextDeg() {
		return textDeg;
	}

	public void setTextDeg(String textDeg) {
		this.textDeg = textDeg;
	}

}