package com.radioc.hbeans;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinTable;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.Valid;

@Entity
@Table(name = "appuser")
public class User implements Serializable, Identifiable<Long> {
	private static final long serialVersionUID = -2421210465490646119L;

	@Id
	@Column(name = "userid", nullable = false)
	private Long id;

	@Column(name = "username", nullable = false, unique = true)
	private String userName;

	@Column(name = "password", nullable = false)
	private String password;

	@Column(name = "firstname", nullable = true)
	private String firstname;

	@Column(name = "lastname", nullable = true)
	private String lastname;

	@Column(name = "email", nullable = true)
	private String email;

	@Column(name = "enabled", nullable = true)
	private Boolean enabled;

	@OneToMany(cascade = { javax.persistence.CascadeType.REFRESH,
			javax.persistence.CascadeType.MERGE,
			javax.persistence.CascadeType.DETACH })
	@JoinTable(name = "approle", joinColumns = { @javax.persistence.JoinColumn(referencedColumnName = "userName", name = "username") }, inverseJoinColumns = { @javax.persistence.JoinColumn(referencedColumnName = "name", name = "authority") })
	private List<Role> roles = new ArrayList<Role>();

	/**
	 * @return the role
	 */
	public List<Role> getRoles() {
		return roles;
	}

	/**
	 * @param role
	 *            the role to set
	 */
	public void setRoles(List<Role> roles) {
		this.roles = roles;
	}

	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getUserName() {
		return this.userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getFirstname() {
		return this.firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getLastname() {
		return this.lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Boolean getEnabled() {
		return this.enabled;
	}

	public void setEnabled(Boolean enabled) {
		this.enabled = enabled;
	}

	public static User createEmpty() {
		return new User();
	}
}