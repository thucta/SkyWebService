package entity;
// Generated Mar 24, 2017 7:27:14 PM by Hibernate Tools 4.3.1.Final

import java.util.Date;
import java.util.HashSet;
import java.util.Set;


/**
 * Information generated by hbm2java
 */
public class Information {

	private int id;
	private Partner partner;
	private String hotline;
	private String name;
	private Date timeopen;
	private Date timeclose;
	private String type;
	private String intro;
	private String number;
	private String ward;
	private String street;
	private String district;
	private String province;
	private String urlpartner;

	public Set<Image> images = new HashSet<Image>(0);
	private Set<Users> userses = new HashSet<Users>(0);

	private Set<Service> services = new HashSet<Service>(0);

	private Set<Room> rooms = new HashSet<Room>(0);
	private Set<Food> foods = new HashSet<Food>(0);

	public Information() {
	}

	public Information(int id, Partner partner, String hotline, String name, Date timeopen, Date timeclose, String type,
			String intro, String number, String ward, String street, String district, String province) {
		this.id = id;
		this.partner = partner;
		this.hotline = hotline;
		this.name = name;
		this.timeopen = timeopen;
		this.timeclose = timeclose;
		this.type = type;
		this.intro = intro;
		this.number = number;
		this.ward = ward;
		this.street = street;
		this.district = district;
		this.province = province;
	}

	public Information(int id, Partner partner, String hotline, String name, Date timeopen, Date timeclose, String type,
			String intro, String number, String ward, String street, String district, String province,
			String urlpartner, Set<Image> images, Set<Users> userses, Set<Service> services, Set<Room> rooms,
			Set<Food> foods) {
		this.id = id;
		this.partner = partner;
		this.hotline = hotline;
		this.name = name;
		this.timeopen = timeopen;
		this.timeclose = timeclose;
		this.type = type;
		this.intro = intro;
		this.number = number;
		this.ward = ward;
		this.street = street;
		this.district = district;
		this.province = province;
		this.urlpartner = urlpartner;
		this.images = images;
		this.userses = userses;

		this.services = services;

		this.rooms = rooms;
		this.foods = foods;

	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Partner getPartner() {
		return this.partner;
	}

	public void setPartner(Partner partner) {
		this.partner = partner;
	}

	public String getHotline() {
		return this.hotline;
	}

	public void setHotline(String hotline) {
		this.hotline = hotline;
	}
	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Date getTimeopen() {
		return this.timeopen;
	}

	public void setTimeopen(Date timeopen) {
		this.timeopen = timeopen;
	}

	public Date getTimeclose() {
		return this.timeclose;
	}

	public void setTimeclose(Date timeclose) {
		this.timeclose = timeclose;
	}

	public String getType() {
		return this.type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getIntro() {
		return this.intro;
	}

	public void setIntro(String intro) {
		this.intro = intro;
	}

	public String getNumber() {
		return this.number;
	}

	public void setNumber(String number) {
		this.number = number;
	}

	public String getWard() {
		return this.ward;
	}

	public void setWard(String ward) {
		this.ward = ward;
	}

	public String getStreet() {
		return this.street;
	}

	public void setStreet(String street) {
		this.street = street;
	}

	public String getDistrict() {
		return this.district;
	}

	public void setDistrict(String district) {
		this.district = district;
	}

	public String getProvince() {
		return this.province;
	}

	public void setProvince(String province) {
		this.province = province;
	}

	public String getUrlpartner() {
		return this.urlpartner;
	}

	public void setUrlpartner(String urlpartner) {
		this.urlpartner = urlpartner;
	}

	public Set<Image> getImages() {
		return this.images;
	}

	public void setImages(Set<Image> images) {
		this.images = images;
	}

	public Set<Users> getUserses() {
		return this.userses;
	}

	public void setUserses(Set<Users> userses) {
		this.userses = userses;
	}

	public Set<Service> getServices() {
		return this.services;
	}

	public void setServices(Set<Service> services) {
		this.services = services;
	}

	public Set<Room> getRooms() {
		return this.rooms;
	}

	public void setRooms(Set<Room> rooms) {
		this.rooms = rooms;
	}

	public Set<Food> getFoods() {
		return this.foods;
	}

	public void setFoods(Set<Food> foods) {
		this.foods = foods;
	}

}
