package com.gepsensradio.interceptors;

import org.junit.Assert;
import org.junit.Test;

import com.gepsensradio.controllers.EmissionController;

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
  
  
  @Test 
  public void lkTests() {
	  Assert.assertTrue("7P9EJDVXZE1J99DEH554QNY53ZERZERTY".length() == 34);
  }
}