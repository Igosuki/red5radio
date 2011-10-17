package com.radioc.xml.beans;

import java.math.BigInteger;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlAttribute;
import javax.xml.bind.annotation.XmlSchemaType;
import javax.xml.bind.annotation.XmlType;

@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name="Cloud")
public class Cloud
{

  @XmlAttribute(required=true)
  protected String domain;

  @XmlAttribute(required=true)
  @XmlSchemaType(name="positiveInteger")
  protected BigInteger port;

  @XmlAttribute(required=true)
  protected String path;

  @XmlAttribute(required=true)
  protected String registerProcedure;

  @XmlAttribute(required=true)
  protected CloudProtocol protocol;

  public String getDomain()
  {
    return this.domain;
  }

  public void setDomain(String value)
  {
    this.domain = value;
  }

  public BigInteger getPort()
  {
    return this.port;
  }

  public void setPort(BigInteger value)
  {
    this.port = value;
  }

  public String getPath()
  {
    return this.path;
  }

  public void setPath(String value)
  {
    this.path = value;
  }

  public String getRegisterProcedure()
  {
    return this.registerProcedure;
  }

  public void setRegisterProcedure(String value)
  {
    this.registerProcedure = value;
  }

  public CloudProtocol getProtocol()
  {
    return this.protocol;
  }

  public void setProtocol(CloudProtocol value)
  {
    this.protocol = value;
  }
}