package com.radioc.streams.security;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.Map;
import org.apache.commons.lang.ArrayUtils;
import org.red5.logging.Red5LoggerFactory;
import org.red5.server.api.IConnection;
import org.red5.server.api.IScope;
import org.red5.server.api.Red5;
import org.red5.server.api.stream.IStreamPlaybackSecurity;
import org.slf4j.Logger;
import org.springframework.beans.BeansException;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.core.io.Resource;
import org.springframework.core.io.support.PathMatchingResourcePatternResolver;

public class HostPlaybackSecurity
  implements IStreamPlaybackSecurity, ApplicationContextAware
{

  @Value("#{propsfile['webapp.authorizedClients']}")
  private String clients;
  private Boolean HTMLDomainsAuth = Boolean.valueOf(true);

  private Boolean SWFDomainsAuth = Boolean.valueOf(true);
  private String[] allowedHTMLDomains;
  private String[] allowedSWFDomains;
  private String htmlDomains = "allowedHTMLdomains.txt";

  private String swfDomains = "allowedSWFdomains.txt";
  private ApplicationContext applicationContext;
  private static Logger log = Red5LoggerFactory.getLogger(HostPlaybackSecurity.class, "securityTest");

  public void init() {
    this.allowedHTMLDomains = readValidDomains(this.htmlDomains, "HTMLDomains");

    this.allowedSWFDomains = readValidDomains(this.swfDomains, "SWFDomains");

    if (this.HTMLDomainsAuth.booleanValue()) {
      log.debug("Authentication of HTML page URL domains is enabled");
    }
    if (this.SWFDomainsAuth.booleanValue()) {
      log.debug("Authentication of SWF URL domains is enabled");
    }

    log.debug("...loading completed.");
  }

  public boolean isPlaybackAllowed(IScope scope, String name, int start, int length, boolean flushPlaylist)
  {
    IConnection conn = Red5.getConnectionLocal();
    try
    {
      String pageUrl = conn.getConnectParams().get("pageUrl").toString();
      String swfUrl = conn.getConnectParams().get("swfUrl").toString();
      String ip = conn.getRemoteAddress();

      if ((!ip.equals("127.0.0.1")) && (this.HTMLDomainsAuth.booleanValue()) && (!validate(pageUrl, this.allowedHTMLDomains).booleanValue())) {
        log.debug("Authentication failed for pageurl: " + pageUrl + ", rejecting connection from " + ip);
        return false;
      }

      if ((!ip.equals("127.0.0.1")) && (this.SWFDomainsAuth.booleanValue()) && (!validate(swfUrl, this.allowedSWFDomains).booleanValue())) {
        log.debug("Authentication failed for referrer: " + swfUrl + ", rejecting connection from " + ip);
        return false;
      }
    }
    catch (Exception e) {
      return (!this.HTMLDomainsAuth.booleanValue()) && (!this.SWFDomainsAuth.booleanValue());
    }

    return true;
  }

  private Boolean validate(String url, String[] patterns)
  {
    url = url.toLowerCase();
    int domainStartPos = 0;
    int domainEndPos = 0;

    switch (url.indexOf("://")) {
    case 4:
      if (url.indexOf("http://") != 0) break;
      domainStartPos = 7;
      break;
    case 5:
      if (url.indexOf("https://") != 0) break;
      domainStartPos = 8;
    }

    if (domainStartPos == 0)
    {
      return Boolean.valueOf(false);
    }
    domainEndPos = url.indexOf("/", domainStartPos);
    if (domainEndPos > 0) {
      int colonPos = url.indexOf(":", domainStartPos);
      if ((colonPos > 0) && (domainEndPos > colonPos))
      {
        domainEndPos = colonPos;
      }
    }

    url = url.substring(domainStartPos, domainEndPos);

    if (ArrayUtils.indexOf(patterns, url) > 0) {
      return Boolean.valueOf(true);
    }
    return Boolean.valueOf(false);
  }

  private String[] readValidDomains(String fileName, String domainsType) {
    String[] domainsArray = new String[100];
    try
    {
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
        index++;
        domainsArray[index] = strLine.toLowerCase();
        log.debug(domainsArray[index]);

        if (strLine.trim().equals("*")) {
          if (domainsType.equals("HTMLDomains")) {
            log.debug("Found wildcard (*) entry: disabling authentication of HTML file domains ");
            this.HTMLDomainsAuth = Boolean.valueOf(false);
          } else if (domainsType.equals("SWFDomains")) {
            log.debug("Found wildcard (*) entry: disabling authentication of SWF file domains ");
            this.SWFDomainsAuth = Boolean.valueOf(false);
          }

        }

      }

      in.close();
    } catch (Exception e) {
      log.error("{}", e.getMessage());
      e.printStackTrace();
      if (domainsType.equals("HTMLDomains"))
        this.HTMLDomainsAuth = Boolean.valueOf(false);
      else if (domainsType.equals("HTMLDomains")) {
        this.SWFDomainsAuth = Boolean.valueOf(false);
      }
    }

    return domainsArray;
  }

  public void setApplicationContext(ApplicationContext applicationContext)
    throws BeansException
  {
    log.debug("-------");
    this.applicationContext = applicationContext;
  }

  public String getHtmlDomains()
  {
    return this.htmlDomains;
  }

  public void setHtmlDomains(String htmlDomains)
  {
    this.htmlDomains = htmlDomains;
  }

  public String getSwfDomains()
  {
    return this.swfDomains;
  }

  public void setSwfDomains(String swfDomains)
  {
    this.swfDomains = swfDomains;
  }
}