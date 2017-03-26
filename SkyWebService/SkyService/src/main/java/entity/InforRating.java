package entity;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name = "inforRating")
@XmlAccessorType(XmlAccessType.NONE)
public class InforRating {
	@XmlElement(name = "id")
	private int id;
	private Partner partner;
	@XmlElement(name = "hotline")
	private String hotline;
	@XmlElement(name = "name")
	private String name;
	@XmlElement(name = "timeopen")
	private Date timeopen;
	@XmlElement(name = "timeclose")
	private Date timeclose;
	@XmlElement(name = "type")
	private String type;
	@XmlElement(name = "intro")
	private String intro;
	@XmlElement(name = "number")
	private String number;
	@XmlElement(name = "ward")
	private String ward;
	@XmlElement(name = "street")
	private String street;
	@XmlElement(name = "district")
	private String district;
	@XmlElement(name = "province")
	private String province;
	@XmlElement(name = "urlpartner")
	private String urlpartner;
	@XmlElement(name = "urlpartner")
	private String rating;
	@XmlElement(name = "rating")
	public Set<Image> images = new HashSet<Image>(0);

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Partner getPartner() {
		return partner;
	}

	public void setPartner(Partner partner) {
		this.partner = partner;
	}

	public String getHotline() {
		return hotline;
	}

	public void setHotline(String hotline) {
		this.hotline = hotline;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Date getTimeopen() {
		return timeopen;
	}

	public void setTimeopen(Date timeopen) {
		this.timeopen = timeopen;
	}

	public Date getTimeclose() {
		return timeclose;
	}

	public void setTimeclose(Date timeclose) {
		this.timeclose = timeclose;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getIntro() {
		return intro;
	}

	public void setIntro(String intro) {
		this.intro = intro;
	}

	public String getNumber() {
		return number;
	}

	public void setNumber(String number) {
		this.number = number;
	}

	public String getWard() {
		return ward;
	}

	public void setWard(String ward) {
		this.ward = ward;
	}

	public String getStreet() {
		return street;
	}

	public void setStreet(String street) {
		this.street = street;
	}

	public String getDistrict() {
		return district;
	}

	public void setDistrict(String district) {
		this.district = district;
	}

	public String getProvince() {
		return province;
	}

	public void setProvince(String province) {
		this.province = province;
	}

	public String getUrlpartner() {
		return urlpartner;
	}

	public void setUrlpartner(String urlpartner) {
		this.urlpartner = urlpartner;
	}

	public String getRating() {
		return rating;
	}

	public void setRating(String rating) {
		this.rating = rating;
	}

	public Set<Image> getImages() {
		return images;
	}

	public void setImages(Set<Image> images) {
		this.images = images;
	}

}
