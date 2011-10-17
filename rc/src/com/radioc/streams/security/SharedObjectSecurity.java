package com.radioc.streams.security;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.List;
import org.apache.commons.lang.ArrayUtils;
import org.red5.logging.Red5LoggerFactory;
import org.red5.server.api.IScope;
import org.red5.server.api.so.ISharedObject;
import org.red5.server.api.so.ISharedObjectSecurity;
import org.slf4j.Logger;
import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.core.io.Resource;
import org.springframework.core.io.support.PathMatchingResourcePatternResolver;

public class SharedObjectSecurity
  implements ISharedObjectSecurity, ApplicationContextAware
{
  private Boolean creationAllowed;
  private Boolean connectionAllowed;
  private Boolean deleteAllowed;
  private Boolean sendAllowed;
  private Boolean writeAllowed;
  private Boolean enableSharedObjects;
  private String sharedObjectNames;
  private Boolean NamesAuth = Boolean.valueOf(false);
  private String[] allowedSharedObjectNames;
  private ApplicationContext applicationContext;
  private static Logger log = Red5LoggerFactory.getLogger(SharedObjectSecurity.class, "sharedObjectSecurity");

  public void init() {
    this.allowedSharedObjectNames = readValidNames(this.sharedObjectNames);

    if (this.NamesAuth.booleanValue())
      log.debug("Authentication of Shared Object Names is enabled");
  }

  private Boolean validate(String name, String[] patterns)
  {
    if (ArrayUtils.indexOf(patterns, name) > 0)
      return Boolean.valueOf(true);
    return Boolean.valueOf(false);
  }

  private String[] readValidNames(String fileName) {
    String[] namesArray = new String[0];
    try
    {
      this.NamesAuth = Boolean.valueOf(true);
      PathMatchingResourcePatternResolver p = new PathMatchingResourcePatternResolver(this.applicationContext);
      Resource file = p.getResource(fileName);

      InputStream in = file.getInputStream();
      BufferedReader br = new BufferedReader(new InputStreamReader(in));

      int index = 0;
      String strLine = "";

      while ((strLine = br.readLine()) != null) {
        if ((strLine.equals("")) || (strLine.indexOf("#") == 0))
        {
          continue;
        }
        if (strLine.indexOf(" ") >= 0)
          continue;
        namesArray[index] = strLine.toLowerCase();
        index++;

        if (strLine == "*") {
          log.debug("Found wildcard (*) entry: disabling authentication of HTML file domains ");
          this.NamesAuth = Boolean.valueOf(false);
        }

      }

      in.close();
    } catch (Exception e) {
      log.error("Problem: {}", e.getStackTrace());
      this.NamesAuth = Boolean.valueOf(false);
    }

    return namesArray;
  }

  public boolean isConnectionAllowed(ISharedObject so)
  {
    return (this.enableSharedObjects.booleanValue()) && (this.connectionAllowed.booleanValue());
  }

  public boolean isCreationAllowed(IScope scope, String name, boolean persistent)
  {
    if ((this.enableSharedObjects.booleanValue()) && (this.creationAllowed.booleanValue())) {
      if ((this.NamesAuth.booleanValue()) && (!validate(name, this.allowedSharedObjectNames).booleanValue())) {
        log.debug("Authentication failed for shared object name: " + name);
        return false;
      }
      return true;
    }
    return false;
  }

  public boolean isDeleteAllowed(ISharedObject so, String key) {
    return this.deleteAllowed.booleanValue();
  }

  public boolean isSendAllowed(ISharedObject so, String message, List arguments)
  {
    return this.sendAllowed.booleanValue();
  }

  public boolean isWriteAllowed(ISharedObject so, String key, Object value) {
    return this.writeAllowed.booleanValue();
  }

  public void setApplicationContext(ApplicationContext applicationContext)
    throws BeansException
  {
    log.debug("-------");
    this.applicationContext = applicationContext;
  }

  public Boolean getCreationAllowed()
  {
    return this.creationAllowed;
  }

  public void setCreationAllowed(Boolean creationAllowed)
  {
    this.creationAllowed = creationAllowed;
  }

  public Boolean getConnectionAllowed()
  {
    return this.connectionAllowed;
  }

  public void setConnectionAllowed(Boolean connectionAllowed)
  {
    this.connectionAllowed = connectionAllowed;
  }

  public Boolean getDeleteAllowed()
  {
    return this.deleteAllowed;
  }

  public void setDeleteAllowed(Boolean deleteAllowed)
  {
    this.deleteAllowed = deleteAllowed;
  }

  public Boolean getSendAllowed()
  {
    return this.sendAllowed;
  }

  public void setSendAllowed(Boolean sendAllowed)
  {
    this.sendAllowed = sendAllowed;
  }

  public Boolean getWriteAllowed()
  {
    return this.writeAllowed;
  }

  public void setWriteAllowed(Boolean writeAllowed)
  {
    this.writeAllowed = writeAllowed;
  }

  public Boolean getEnableSharedObjects()
  {
    return this.enableSharedObjects;
  }

  public void setEnableSharedObjects(Boolean enableSharedObjects)
  {
    this.enableSharedObjects = enableSharedObjects;
  }

  public String getSharedObjectNames()
  {
    return this.sharedObjectNames;
  }

  public void setSharedObjectNames(String sharedObjectNames)
  {
    this.sharedObjectNames = sharedObjectNames;
  }
}