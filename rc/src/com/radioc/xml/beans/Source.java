package com.radioc.xml.beans;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlAttribute;
import javax.xml.bind.annotation.XmlSchemaType;
import javax.xml.bind.annotation.XmlType;
import javax.xml.bind.annotation.XmlValue;

@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name="Source", propOrder={"value"})
public class Source
{

  @XmlValue
  protected String value;

  @XmlAttribute
  @XmlSchemaType(name="anyURI")
  protected String url;

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
}