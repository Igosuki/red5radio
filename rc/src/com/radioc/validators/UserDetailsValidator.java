package com.radioc.validators;

import org.apache.commons.lang.StringUtils;
import org.red5.logging.Red5LoggerFactory;
import org.slf4j.Logger;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Repository;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

@Repository("userDetailsValidator")
public class UserDetailsValidator
  implements Validator
{
  private static Logger log = Red5LoggerFactory.getLogger(UserDetailsValidator.class, "admin");

  private int minLength = 4;

  public boolean supports(Class clazz) {
    return UserDetails.class.equals(clazz);
  }

  public void validate(Object obj, Errors errors) {
    log.debug("validate");
    UserDetails ud = (UserDetails)obj;
    if (ud == null) {
      log.debug("User details were null");
      errors.rejectValue("username", "error.not-specified", null, 
        "Value required.");
    } else {
      log.debug("User details were null");
      if (StringUtils.isEmpty(ud.getUsername())) {
        errors.rejectValue("username", "error.missing-username", 
          new Object[0], "Username Required.");
      }
      if (StringUtils.isEmpty(ud.getPassword()))
        errors.rejectValue("password", "error.missing-password", 
          new Object[0], "Password Required.");
      else if (ud.getPassword().length() < this.minLength)
        errors.rejectValue("password", "error.too-low", 
          new Object[] { new Integer(this.minLength) }, 
          "Password Length Is Too Small.");
    }
  }

  public void setMinLength(int i)
  {
    this.minLength = i;
  }

  public int getMinLength() {
    return this.minLength;
  }
}