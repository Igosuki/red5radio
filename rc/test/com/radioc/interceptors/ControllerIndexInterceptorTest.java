package com.radioc.interceptors;

import com.radioc.controllers.EmissionController;
import org.junit.Assert;
import org.junit.Test;

public class ControllerIndexInterceptorTest
{
  @Test
  public void test()
  {
    ControllerIndexInterceptor interceptor = new ControllerIndexInterceptor();
    Object handler = new EmissionController();
    String newURI = interceptor.transformURI("/admin/emission/index", "delete", handler);
    Assert.assertEquals(newURI, "/admin/emission/delete");
  }
}