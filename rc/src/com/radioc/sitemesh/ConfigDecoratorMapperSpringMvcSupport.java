package com.radioc.sitemesh;

import com.opensymphony.module.sitemesh.Config;
import com.opensymphony.module.sitemesh.Decorator;
import com.opensymphony.module.sitemesh.DecoratorMapper;
import com.opensymphony.module.sitemesh.Page;
import com.opensymphony.module.sitemesh.mapper.ConfigDecoratorMapper;
import com.opensymphony.module.sitemesh.mapper.ConfigLoader;
import java.util.Properties;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import org.red5.logging.Red5LoggerFactory;
import org.slf4j.Logger;

public class ConfigDecoratorMapperSpringMvcSupport extends ConfigDecoratorMapper
{
  private static final Logger LOG = Red5LoggerFactory.getLogger(ConfigDecoratorMapperSpringMvcSupport.class);

  private ConfigLoader configLoader = null;

  public void init(Config config, Properties properties, DecoratorMapper parent) throws InstantiationException
  {
    LOG.debug("init()...");
    super.init(config, properties, parent);
    try {
      String fileName = properties.getProperty("config", "/WEB-INF/decorators.xml");
      this.configLoader = new ConfigLoader(fileName, config);
    }
    catch (Exception e) {
      throw new InstantiationException(e.toString());
    }
  }

  public Decorator getDecorator(HttpServletRequest request, Page page)
  {
    String requestURI = request.getRequestURI();

    String path = requestURI.substring(request.getContextPath().length(), requestURI.length());
    String name = null;
    try {
      name = this.configLoader.getMappedName(path);
    }
    catch (ServletException e) {
      e.printStackTrace();
    }
    Decorator result = null;
    if (name != null) {
      LOG.debug("Resolved decorator name: " + name);
      result = getNamedDecorator(request, name);
    }
    LOG.debug("Decorator is null ? " + (result == null));
    return result == null ? super.getDecorator(request, page) : result;
  }
}