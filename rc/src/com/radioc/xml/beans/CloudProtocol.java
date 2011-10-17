package com.radioc.xml.beans;

import javax.xml.bind.annotation.XmlEnum;
import javax.xml.bind.annotation.XmlEnumValue;
import javax.xml.bind.annotation.XmlType;

@XmlType(name="CloudProtocol")
@XmlEnum
public enum CloudProtocol
{
  XML_RPC("xml-rpc"), 

  HTTP_POST("http-post"), 

  SOAP("soap");

  private final String value;

  private CloudProtocol(String v) { this.value = v; }

  public String value()
  {
    return this.value;
  }

  public static CloudProtocol fromValue(String v) {
    for (CloudProtocol c : values()) {
      if (c.value.equals(v)) {
        return c;
      }
    }
    throw new IllegalArgumentException(v);
  }
}