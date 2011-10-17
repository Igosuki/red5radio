package com.radioc.hbeans;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "roles")
public class Role implements Serializable, Identifiable<String> {

	/**
	 * 
	 */
	private static final long serialVersionUID = -8344644000134071396L;

	@Id
	private String name;

	private String value;

	public Role() {

	}

	public String toString() {
		if("role.user".equals(this.value)){
			return "Utilisateur";
		} else if("role.supervisor".equals(this.value)) {
			return "Superviseur";
		}
		return "";
	}

	/**
	 * @return the name
	 */
	public String getName() {
		return name;
	}

	/**
	 * @param name
	 *            the name to set
	 */
	public void setName(String name) {
		this.name = name;
	}

	/**
	 * @return the value
	 */
	public String getValue() {
		return value;
	}

	/**
	 * @param value
	 *            the value to set
	 */
	public void setValue(String value) {
		this.value = value;
	}

	@Override
	public String getId() {
		return name;
	}

	@Override
	public void setId(String paramT) {
		this.name = name;
	}

}
