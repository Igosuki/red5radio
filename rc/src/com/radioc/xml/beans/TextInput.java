package com.radioc.xml.beans;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlSchemaType;
import javax.xml.bind.annotation.XmlType;

@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name="TextInput", propOrder={})
public class TextInput
{

  @XmlElement(required=true)
  protected String title;

  @XmlElement(required=true)
  protected String description;

  @XmlElement(required=true)
  protected String name;

  @XmlElement(required=true)
  @XmlSchemaType(name="anyURI")
  protected String link;

  public String getTitle()
  {
    return this.title;
  }

  public void setTitle(String value)
  {
    this.title = value;
  }

  public String getDescription()
  {
    return this.description;
  }

  public void setDescription(String value)
  {
    this.description = value;
  }

  public String getName()
  {
    return this.name;
  }

  public void setName(String value)
  {
    this.name = value;
  }

  public String getLink()
  {
    return this.link;
  }

  public void setLink(String value)
  {
    this.link = value;
  }
}