package com.radioc.forms;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

public class UserForm
{

  @NotNull
  @Size(min=5, max=16)
  private String username;

  @NotNull
  @Size(min=8, max=36)
  private String password;

  public String getUsername()
  {
    return this.username;
  }

  public void setUsername(String username)
  {
    this.username = username;
  }

  public String getPassword()
  {
    return this.password;
  }

  public void setPassword(String password)
  {
    this.password = password;
  }
}