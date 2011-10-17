package com.radioc.exceptions;

public class ServiceException extends Exception
{
  private String serviceName;

  public ServiceException(String serviceName, String message, Exception e)
  {
    super(message, e);
    this.serviceName = serviceName;
  }
}