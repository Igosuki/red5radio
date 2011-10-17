package com.radioc.xml.beans;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.xml.bind.JAXBElement;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlAnyAttribute;
import javax.xml.bind.annotation.XmlElementRefs;
import javax.xml.bind.annotation.XmlType;
import javax.xml.namespace.QName;

@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name="RssItem", propOrder={"titleOrDescriptionOrLink"})
public class RssItem
{

  @XmlElementRefs({@javax.xml.bind.annotation.XmlElementRef(name="explicit", namespace="http://www.itunes.com/dtds/podcast-1.0.dtd", type=JAXBElement.class), @javax.xml.bind.annotation.XmlElementRef(name="title", type=JAXBElement.class), @javax.xml.bind.annotation.XmlElementRef(name="keywords", namespace="http://www.itunes.com/dtds/podcast-1.0.dtd", type=JAXBElement.class), @javax.xml.bind.annotation.XmlElementRef(name="order", namespace="http://www.itunes.com/dtds/podcast-1.0.dtd", type=JAXBElement.class), @javax.xml.bind.annotation.XmlElementRef(name="source", type=JAXBElement.class), @javax.xml.bind.annotation.XmlElementRef(name="author", type=JAXBElement.class), @javax.xml.bind.annotation.XmlElementRef(name="image", namespace="http://www.itunes.com/dtds/podcast-1.0.dtd", type=JAXBElement.class), @javax.xml.bind.annotation.XmlElementRef(name="subtitle", namespace="http://www.itunes.com/dtds/podcast-1.0.dtd", type=JAXBElement.class), @javax.xml.bind.annotation.XmlElementRef(name="comments", type=JAXBElement.class), @javax.xml.bind.annotation.XmlElementRef(name="summary", namespace="http://www.itunes.com/dtds/podcast-1.0.dtd", type=JAXBElement.class), @javax.xml.bind.annotation.XmlElementRef(name="guid", type=JAXBElement.class), @javax.xml.bind.annotation.XmlElementRef(name="isClosedCaptioned", namespace="http://www.itunes.com/dtds/podcast-1.0.dtd", type=JAXBElement.class), @javax.xml.bind.annotation.XmlElementRef(name="link", type=JAXBElement.class), @javax.xml.bind.annotation.XmlElementRef(name="pubDate", type=JAXBElement.class), @javax.xml.bind.annotation.XmlElementRef(name="enclosure", type=JAXBElement.class), @javax.xml.bind.annotation.XmlElementRef(name="author", namespace="http://www.itunes.com/dtds/podcast-1.0.dtd", type=JAXBElement.class), @javax.xml.bind.annotation.XmlElementRef(name="category", type=JAXBElement.class), @javax.xml.bind.annotation.XmlElementRef(name="duration", namespace="http://www.itunes.com/dtds/podcast-1.0.dtd", type=JAXBElement.class), @javax.xml.bind.annotation.XmlElementRef(name="block", namespace="http://www.itunes.com/dtds/podcast-1.0.dtd", type=JAXBElement.class), @javax.xml.bind.annotation.XmlElementRef(name="description", type=JAXBElement.class)})
  protected List<JAXBElement<?>> titleOrDescriptionOrLink;

  @XmlAnyAttribute
  private Map<QName, String> otherAttributes = new HashMap<QName, String>();

  public List<JAXBElement<?>> getTitleOrDescriptionOrLink()
  {
    if (this.titleOrDescriptionOrLink == null) {
      this.titleOrDescriptionOrLink = new ArrayList<JAXBElement<?>>();
    }
    return this.titleOrDescriptionOrLink;
  }

  public Map<QName, String> getOtherAttributes()
  {
    return this.otherAttributes;
  }
}