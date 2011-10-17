package com.radioc.streams.security;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.HashMap;
import org.apache.commons.lang.ArrayUtils;
import org.red5.logging.Red5LoggerFactory;
import org.red5.server.api.IScope;
import org.red5.server.api.stream.IStreamPublishSecurity;
import org.slf4j.Logger;
import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.core.io.Resource;
import org.springframework.core.io.support.PathMatchingResourcePatternResolver;

public class HostPublishSecurity
  implements IStreamPublishSecurity, ApplicationContextAware
{
  private Boolean enablePublish = Boolean.valueOf(true);
  private String publishNames;
  private Boolean NamesAuth = Boolean.valueOf(false);
  private HashMap<String, String[]> allowedPublishNames;
  private ApplicationContext applicationContext;
  private static Logger log = Red5LoggerFactory.getLogger(HostPublishSecurity.class, "securityTest");

  public void init() {
    this.allowedPublishNames = readValidNames(this.publishNames);

    if (this.NamesAuth.booleanValue())
      log.debug("Authentication of Publish Names is enabled");
  }

  public boolean isPublishAllowed(IScope scope, String name, String mode)
  {
    if (this.enablePublish.booleanValue()) {
      if ((this.NamesAuth.booleanValue()) && (!validate(name, mode, this.allowedPublishNames).booleanValue())) {
        log.debug("Authentication failed for publish name: " + name);
        return false;
      }
      return true;
    }

    return false;
  }

  private Boolean validate(String name, String mode, HashMap<String, String[]> patterns) {
    if (!((String[])patterns.get(name)).equals(null)) {
      String[] modes = (String[])patterns.get(name);
      if (ArrayUtils.indexOf(modes, mode) > 0)
        return Boolean.valueOf(true);
    }
    return Boolean.valueOf(false);
  }

  private HashMap<String, String[]> readValidNames(String fileName)
  {
    HashMap map = new HashMap();
    try
    {
      this.NamesAuth = Boolean.valueOf(true);
      PathMatchingResourcePatternResolver p = new PathMatchingResourcePatternResolver(this.applicationContext);
      Resource file = p.getResource(fileName);
      InputStream in = file.getInputStream();
      BufferedReader br = new BufferedReader(new InputStreamReader(in));

      String strLine = "";

      while ((strLine = br.readLine()) != null) {
        if ((strLine.equals("")) || (strLine.indexOf("#") == 0))
        {
          continue;
        }
        if (strLine.indexOf(" ") < 0) {
          String line = strLine.toLowerCase();
          String[] nameMode = line.split(";");
          String name = nameMode[0];
          String[] modes = nameMode[1].split(",");

          map.put(name, modes);

          if (strLine == "*") {
            log.debug("Found wildcard (*) entry: disabling authentication of publish names ");
            this.NamesAuth = Boolean.valueOf(false);
          }
        }

      }

      in.close();
    } catch (Exception e) {
      log.error("Problem: {}", e.getStackTrace());
      this.NamesAuth = Boolean.valueOf(false);
    }

    return map;
  }

  public void setApplicationContext(ApplicationContext applicationContext)
    throws BeansException
  {
    log.debug("-------");
    this.applicationContext = applicationContext;
  }

  public Boolean getEnablePublish()
  {
    return this.enablePublish;
  }

  public void setEnablePublish(Boolean enablePublish)
  {
    this.enablePublish = enablePublish;
  }

  public String getPublishNames()
  {
    return this.publishNames;
  }

  public void setPublishNames(String publishNames)
  {
    this.publishNames = publishNames;
  }
}