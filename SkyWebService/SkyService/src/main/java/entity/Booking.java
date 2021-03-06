package entity;
// Generated Mar 24, 2017 7:27:14 PM by Hibernate Tools 4.3.1.Final

import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 * Booking generated by hbm2java
 */
@XmlRootElement
@Entity
@Table(name = "BOOKING")
public class Booking {

	private int id;
	private Room room;
	private Users users;
	private Date datein;
	private String detail;
	private int quanlity;
	private Date dateout;

	public Booking() {
	}

	public Booking(int id, Room room, Users users, Date datein, int quanlity, Date dateout) {
		this.id = id;
		this.room = room;
		this.users = users;
		this.datein = datein;
		this.quanlity = quanlity;
		this.dateout = dateout;
	}

	public Booking(int id, Room room, Users users, Date datein, String detail, int quanlity, Date dateout) {
		this.id = id;
		this.room = room;
		this.users = users;
		this.datein = datein;
		this.detail = detail;
		this.quanlity = quanlity;
		this.dateout = dateout;
	}

	@Id

	@Column(name = "id", unique = true, nullable = false)
	
	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "room", nullable = false)
	@XmlTransient
	public Room getRoom() {
		return this.room;
	}

	public void setRoom(Room room) {
		this.room = room;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "users", nullable = false)
	@XmlTransient
	public Users getUsers() {
		return this.users;
	}

	public void setUsers(Users users) {
		this.users = users;
	}

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "datein", nullable = false, length = 23)
	public Date getDatein() {
		return this.datein;
	}

	public void setDatein(Date datein) {
		this.datein = datein;
	}

	@Column(name = "detail")
	public String getDetail() {
		return this.detail;
	}

	public void setDetail(String detail) {
		this.detail = detail;
	}

	@Column(name = "quanlity", nullable = false)
	public int getQuanlity() {
		return this.quanlity;
	}

	public void setQuanlity(int quanlity) {
		this.quanlity = quanlity;
	}

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "dateout", nullable = false, length = 23)
	public Date getDateout() {
		return this.dateout;
	}

	public void setDateout(Date dateout) {
		this.dateout = dateout;
	}

}
