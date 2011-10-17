package com.radioc.xml.beans;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.xml.bind.JAXBElement;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlAnyAttribute;
import javax.xml.bind.annotation.XmlAnyElement;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlElementRefs;
import javax.xml.bind.annotation.XmlType;
import javax.xml.namespace.QName;

@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name="RssChannel", propOrder={"titleOrLinkOrDescription", "item", "any"})
public class RssChannel
{

  @XmlElementRefs({@javax.xml.bind.annotation.XmlElementRef(name="image", type=JAXBElement.class), @javax.xml.bind.annotation.XmlElementRef(name="docs", type=JAXBElement.class), @javax.xml.bind.annotation.XmlElementRef(name="language", type=JAXBElement.class), @javax.xml.bind.annotation.XmlElementRef(name="keywords", namespace="http://www.itunes.com/dtds/podcast-1.0.dtd", type=JAXBElement.class), @javax.xml.bind.annotation.XmlElementRef(name="lastBuildDate", type=JAXBElement.class), @javax.xml.bind.annotation.XmlElementRef(name="image", namespace="http://www.itunes.com/dtds/podcast-1.0.dtd", type=JAXBElement.class), @javax.xml.bind.annotation.XmlElementRef(name="owner", namespace="http://www.itunes.com/dtds/podcast-1.0.dtd", type=JAXBElement.class), @javax.xml.bind.annotation.XmlElementRef(name="subtitle", namespace="http://www.itunes.com/dtds/podcast-1.0.dtd", type=JAXBElement.class), @javax.xml.bind.annotation.XmlElementRef(name="managingEditor", type=JAXBElement.class), @javax.xml.bind.annotation.XmlElementRef(name="description", type=JAXBElement.class), @javax.xml.bind.annotation.XmlElementRef(name="rating", type=JAXBElement.class), @javax.xml.bind.annotation.XmlElementRef(name="author", namespace="http://www.itunes.com/dtds/podcast-1.0.dtd", type=JAXBElement.class), @javax.xml.bind.annotation.XmlElementRef(name="block", namespace="http://www.itunes.com/dtds/podcast-1.0.dtd", type=JAXBElement.class), @javax.xml.bind.annotation.XmlElementRef(name="category", type=JAXBElement.class), @javax.xml.bind.annotation.XmlElementRef(name="textInput", type=JAXBElement.class), @javax.xml.bind.annotation.XmlElementRef(name="explicit", namespace="http://www.itunes.com/dtds/podcast-1.0.dtd", type=JAXBElement.class), @javax.xml.bind.annotation.XmlElementRef(name="title", type=JAXBElement.class), @javax.xml.bind.annotation.XmlElementRef(name="ttl", type=JAXBElement.class), @javax.xml.bind.annotation.XmlElementRef(name="category", namespace="http://www.itunes.com/dtds/podcast-1.0.dtd", type=JAXBElement.class), @javax.xml.bind.annotation.XmlElementRef(name="summary", namespace="http://www.itunes.com/dtds/podcast-1.0.dtd", type=JAXBElement.class), @javax.xml.bind.annotation.XmlElementRef(name="cloud", type=JAXBElement.class), @javax.xml.bind.annotation.XmlElementRef(name="copyright", type=JAXBElement.class), @javax.xml.bind.annotation.XmlElementRef(name="pubDate", type=JAXBElement.class), @javax.xml.bind.annotation.XmlElementRef(name="skipHours", type=JAXBElement.class), @javax.xml.bind.annotation.XmlElementRef(name="webMaster", type=JAXBElement.class), @javax.xml.bind.annotation.XmlElementRef(name="generator", type=JAXBElement.class), @javax.xml.bind.annotation.XmlElementRef(name="link", type=JAXBElement.class), @javax.xml.bind.annotation.XmlElementRef(name="new-feed-url", namespace="http://www.itunes.com/dtds/podcast-1.0.dtd", type=JAXBElement.class), @javax.xml.bind.annotation.XmlElementRef(name="skipDays", type=JAXBElement.class), @javax.xml.bind.annotation.XmlElementRef(name="complete", namespace="http://www.itunes.com/dtds/podcast-1.0.dtd", type=JAXBElement.class)})
  protected List<JAXBElement<?>> titleOrLinkOrDescription;

  @XmlElement(required=true)
  protected List<RssItem> item;

  @XmlAnyElement(lax=true)
  protected List<Object> any;

  @XmlAnyAttribute
  private Map<QName, String> otherAttributes = new HashMap<QName, String>();

  public List<JAXBElement<?>> getTitleOrLinkOrDescription()
  {
    if (this.titleOrLinkOrDescription == null) {
      this.titleOrLinkOrDescription = new ArrayList<JAXBElement<?>>();
    }
    return this.titleOrLinkOrDescription;
  }

  public List<RssItem> getItem()
  {
    if (this.item == null) {
      this.item = new ArrayList<RssItem>();
    }
    return this.item;
  }

  public List<Object> getAny()
  {
    if (this.any == null) {
      this.any = new ArrayList<Object>();
    }
    return this.any;
  }

  public Map<QName, String> getOtherAttributes()
  {
    return this.otherAttributes;
  }
}