package com.radioc.display.deco;

import com.radioc.hbeans.Role;
import com.radioc.hbeans.User;
import org.displaytag.decorator.TableDecorator;

public class UserDecorator extends TableDecorator
{
  public String getEnabled()
  {
    User user = (User)getCurrentRowObject();
    String returnVal = "<input type='checkbox' property='enabled'";
    if (user.getEnabled().booleanValue()) {
      returnVal = returnVal + " checked ";
    }
    returnVal = returnVal + " />";
    return returnVal;
  }
  public String getRoles(){
	  User user = (User)getCurrentRowObject();
	  StringBuilder returnval = new StringBuilder(32);
	  for (Role role : user.getRoles()) {
		returnval.append(role.toString()).append(" ");
	  }
	  return returnval.toString();
  }
}