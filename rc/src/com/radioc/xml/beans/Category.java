package com.radioc.xml.beans;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlAttribute;
import javax.xml.bind.annotation.XmlType;
import javax.xml.bind.annotation.XmlValue;

@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name="Category", propOrder={"value"})
public class Category
{

  @XmlValue
  protected String value;

  @XmlAttribute
  protected String domain;

  public String getValue()
  {
    return this.value;
  }

  public void setValue(String value)
  {
    this.value = value;
  }

  public String getDomain()
  {
    return this.domain;
  }

  public void setDomain(String value)
  {
    this.domain = value;
  }
}