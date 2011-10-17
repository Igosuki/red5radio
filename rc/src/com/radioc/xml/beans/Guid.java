package com.radioc.xml.beans;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlAttribute;
import javax.xml.bind.annotation.XmlType;
import javax.xml.bind.annotation.XmlValue;

@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name="Guid", propOrder={"value"})
public class Guid
{

  @XmlValue
  protected String value;

  @XmlAttribute
  protected Boolean isPermaLink;

  public String getValue()
  {
    return this.value;
  }

  public void setValue(String value)
  {
    this.value = value;
  }

  public boolean isIsPermaLink()
  {
    if (this.isPermaLink == null) {
      return true;
    }
    return this.isPermaLink.booleanValue();
  }

  public void setIsPermaLink(Boolean value)
  {
    this.isPermaLink = value;
  }
}