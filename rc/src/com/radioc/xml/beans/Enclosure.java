package com.radioc.xml.beans;

import java.math.BigInteger;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlAttribute;
import javax.xml.bind.annotation.XmlSchemaType;
import javax.xml.bind.annotation.XmlType;
import javax.xml.bind.annotation.XmlValue;

@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name="Enclosure", propOrder={"value"})
public class Enclosure
{

  @XmlValue
  protected String value;

  @XmlAttribute(required=true)
  @XmlSchemaType(name="anyURI")
  protected String url;

  @XmlAttribute(required=true)
  @XmlSchemaType(name="nonNegativeInteger")
  protected BigInteger length;

  @XmlAttribute(required=true)
  protected String type;

  public String getValue()
  {
    return this.value;
  }

  public void setValue(String value)
  {
    this.value = value;
  }

  public String getUrl()
  {
    return this.url;
  }

  public void setUrl(String value)
  {
    this.url = value;
  }

  public BigInteger getLength()
  {
    return this.length;
  }

  public void setLength(BigInteger value)
  {
    this.length = value;
  }

  public String getType()
  {
    return this.type;
  }

  public void setType(String value)
  {
    this.type = value;
  }
}