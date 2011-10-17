package com.radioc.xml.beans;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlSchemaType;
import javax.xml.bind.annotation.XmlType;

@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name="Image", propOrder={})
public class Image
{

  @XmlElement(required=true)
  @XmlSchemaType(name="anyURI")
  protected String url;

  @XmlElement(required=true)
  protected String title;

  @XmlElement(required=true)
  @XmlSchemaType(name="anyURI")
  protected String link;

  @XmlElement(defaultValue="88")
  protected Integer width;

  @XmlElement(defaultValue="31")
  protected Integer height;
  protected String description;

  public String getUrl()
  {
    return this.url;
  }

  public void setUrl(String value)
  {
    this.url = value;
  }

  public String getTitle()
  {
    return this.title;
  }

  public void setTitle(String value)
  {
    this.title = value;
  }

  public String getLink()
  {
    return this.link;
  }

  public void setLink(String value)
  {
    this.link = value;
  }

  public Integer getWidth()
  {
    return this.width;
  }

  public void setWidth(Integer value)
  {
    this.width = value;
  }

  public Integer getHeight()
  {
    return this.height;
  }

  public void setHeight(Integer value)
  {
    this.height = value;
  }

  public String getDescription()
  {
    return this.description;
  }

  public void setDescription(String value)
  {
    this.description = value;
  }
}