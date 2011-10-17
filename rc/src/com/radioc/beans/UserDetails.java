package com.radioc.beans;

import java.util.ArrayList;
import java.util.Collection;
import org.springframework.security.core.GrantedAuthority;

public class UserDetails
  implements org.springframework.security.core.userdetails.UserDetails
{
  private static final long serialVersionUID = 2801983490L;
  private Collection<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();
  private int userid;
  private String username;
  private String password;
  private Boolean enabled;

  public UserDetails()
  {
  }

  public UserDetails(int userid)
  {
    this.userid = userid;
  }

  public UserDetails(String username) {
    this.username = username;
  }

  public int getUserid() {
    return this.userid;
  }

  public void setUserid(int userid) {
    this.userid = userid;
  }

  public void setUsername(String value) {
    this.username = value;
  }

  public String getUsername() {
    return this.username;
  }

  public void setPassword(String value) {
    this.password = value;
  }

  public String getPassword() {
    return this.password;
  }

  public Boolean getEnabled() {
    return this.enabled;
  }

  public void setEnabled(Boolean enabled) {
    this.enabled = enabled;
  }

  public void setEnabled(Integer enabledInt) {
    this.enabled = Boolean.valueOf(enabledInt.intValue() == 1);
  }

  public void setEnabled(String enabledStr) {
    this.enabled = Boolean.valueOf("enabled".equals(enabledStr));
  }

  public void setAuthorities(Collection<GrantedAuthority> authorities) {
    this.authorities = authorities;
  }

  public Collection<GrantedAuthority> getAuthorities() {
    return this.authorities;
  }

  public boolean isAccountNonExpired() {
    return true;
  }

  public boolean isAccountNonLocked() {
    return true;
  }

  public boolean isCredentialsNonExpired() {
    return true;
  }

  public boolean isEnabled() {
    return this.enabled.booleanValue();
  }

  public int hashCode()
  {
    return this.userid;
  }

  public boolean equals(Object object)
  {
    if (!(object instanceof UserDetails)) {
      return false;
    }
    UserDetails other = (UserDetails)object;

    return this.userid == other.userid;
  }
}