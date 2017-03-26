package entity;
// Generated Mar 26, 2017 12:44:17 PM by Hibernate Tools 4.3.1.Final

/**
 * ServiceinforId generated by hbm2java
 */
public class ServiceinforId implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int information;
	private int service;

	public ServiceinforId() {
	}

	public ServiceinforId(int information, int service) {
		this.information = information;
		this.service = service;
	}

	public int getInformation() {
		return this.information;
	}

	public void setInformation(int information) {
		this.information = information;
	}

	public int getService() {
		return this.service;
	}

	public void setService(int service) {
		this.service = service;
	}

	public boolean equals(Object other) {
		if ((this == other))
			return true;
		if ((other == null))
			return false;
		if (!(other instanceof ServiceinforId))
			return false;
		ServiceinforId castOther = (ServiceinforId) other;

		return (this.getInformation() == castOther.getInformation()) && (this.getService() == castOther.getService());
	}

	public int hashCode() {
		int result = 17;

		result = 37 * result + this.getInformation();
		result = 37 * result + this.getService();
		return result;
	}

}
