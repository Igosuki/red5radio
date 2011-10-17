package com.radioc.validators;

import java.io.Serializable;
import org.springframework.security.access.PermissionEvaluator;
import org.springframework.security.core.Authentication;

public class RCPermissionEvaluator
  implements PermissionEvaluator
{
  public boolean hasPermission(Authentication paramAuthentication, Object domainObject, Object permission)
  {
    return false;
  }

  public boolean hasPermission(Authentication paramAuthentication, Serializable targetId, String targetType, Object permission)
  {
    return false;
  }
}