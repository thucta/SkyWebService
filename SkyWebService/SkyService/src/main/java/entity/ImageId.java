package entity;
// Generated Mar 24, 2017 7:27:14 PM by Hibernate Tools 4.3.1.Final


import javax.persistence.Column;
import javax.persistence.Embeddable;

/**
 * ImageId generated by hbm2java
 */
@Embeddable
public class ImageId implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int infor;
	private String imageurl;

	public ImageId() {
	}

	public ImageId(int infor, String imageurl) {
		this.infor = infor;
		this.imageurl = imageurl;
	}

	@Column(name = "infor", nullable = false)
	public int getInfor() {
		return this.infor;
	}

	public void setInfor(int infor) {
		this.infor = infor;
	}

	@Column(name = "imageurl", nullable = false)
	public String getImageurl() {
		return this.imageurl;
	}

	public void setImageurl(String imageurl) {
		this.imageurl = imageurl;
	}

	public boolean equals(Object other) {
		if ((this == other))
			return true;
		if ((other == null))
			return false;
		if (!(other instanceof ImageId))
			return false;
		ImageId castOther = (ImageId) other;

		return (this.getInfor() == castOther.getInfor())
				&& ((this.getImageurl() == castOther.getImageurl()) || (this.getImageurl() != null
						&& castOther.getImageurl() != null && this.getImageurl().equals(castOther.getImageurl())));
	}

	public int hashCode() {
		int result = 17;

		result = 37 * result + this.getInfor();
		result = 37 * result + (getImageurl() == null ? 0 : this.getImageurl().hashCode());
		return result;
	}

}