package entity;
// Generated Mar 24, 2017 7:27:14 PM by Hibernate Tools 4.3.1.Final


import java.util.HashSet;
import java.util.Set;

/**
 * Partner generated by hbm2java
 */
public class Partner{

	private int id;
	private String name;
	private Set<Information> informations = new HashSet<Information>(0);


	public Partner() {
	}

	public Partner(int id, String name) {
		this.id = id;
		this.name = name;
	}

	public Partner(int id, String name, Set<Information> informations) {
		this.id = id;
		this.name = name;
		this.informations = informations;
	
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Set<Information> getInformations() {
		return this.informations;
	}

	public void setInformations(Set<Information> informations) {
		this.informations = informations;
	}



}