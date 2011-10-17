package com.radioc.filters;

import java.io.IOException;
import java.util.List;
import javax.annotation.Resource;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.log4j.Logger;
import org.springframework.security.core.session.SessionInformation;
import org.springframework.security.core.session.SessionRegistry;
import org.springframework.security.web.DefaultRedirectStrategy;
import org.springframework.security.web.RedirectStrategy;
import org.springframework.web.filter.OncePerRequestFilter;

public class SingleEntryFilter extends OncePerRequestFilter
{
  protected static Logger logger = Logger.getLogger("service");
  private String redirectURI;
  private List<String> guardURI;

  @Resource(name="sessionRegistry")
  private SessionRegistry sessionRegistry;
  private RedirectStrategy redirectStrategy = new DefaultRedirectStrategy();

  protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain filterChain)
    throws ServletException, IOException
  {
    logger.debug("Running blacklist filter");

    HttpSession session = request.getSession(false);

    if (session != null) {
      SessionInformation info = this.sessionRegistry.getSessionInformation(session.getId());

      if (info != null)
      {
        Boolean hasLoggedIn = (Boolean)session.getAttribute("hasLoggedIn");

        if (hasLoggedIn != null) {
          logger.debug("User is trying to access site for the second time");
          logger.debug("Request URI: " + request.getRequestURI());

          for (String guard : this.guardURI) {
            if (!request.getRequestURI().equals(guard))
              continue;
            logger.debug("Redirecting");

            this.redirectStrategy.sendRedirect(request, response, this.redirectURI);
          }

        }
        else
        {
          logger.debug("User is accessing the site for the first time");

          session.setAttribute("hasLoggedIn", new Boolean(true));

          info.refreshLastRequest();
        }
      } else {
        logger.debug("Info is null");
      }
    } else {
      logger.debug("Session is null");
    }

    logger.debug("Continue with remaining filters");
    filterChain.doFilter(request, response);
  }

  public String getRedirectURI() {
    return this.redirectURI;
  }

  public void setRedirectURI(String redirectURI) {
    this.redirectURI = redirectURI;
  }

  public List<String> getGuardURI() {
    return this.guardURI;
  }

  public void setGuardURI(List<String> guardURI) {
    this.guardURI = guardURI;
  }
}