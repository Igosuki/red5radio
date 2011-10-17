package com.radioc.interceptors;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class ControllerIndexInterceptor extends HandlerInterceptorAdapter
{
  private static String[] redirects = { "edit", "delete" };

  public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
    throws Exception
  {
    String param = null;
    for (String redirect : redirects) {
      if ((param = request.getParameter(redirect)) != null) {
        request.getRequestDispatcher(request.getServletPath() + transformURI(request.getPathInfo(), redirect, handler)).forward(request, response);

        return false;
      }
    }
    return true;
  }

  public String transformURI(String uri, String param, Object handler) {
    String newURI = new String(uri);

    return newURI.replaceFirst("(.*)/index", "$1/" + param);
  }
}