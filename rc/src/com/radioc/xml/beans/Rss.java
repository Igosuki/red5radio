package com.radioc.xml.beans;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlAnyAttribute;
import javax.xml.bind.annotation.XmlAnyElement;
import javax.xml.bind.annotation.XmlAttribute;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;
import javax.xml.namespace.QName;

@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name="", propOrder={"channel", "any"})
@XmlRootElement(name="rss")
public class Rss
{

  @XmlElement(required=true)
  protected RssChannel channel;

  @XmlAnyElement(lax=true)
  protected List<Object> any;

  @XmlAttribute(required=true)
  protected BigDecimal version;

  @XmlAnyAttribute
  private Map<QName, String> otherAttributes = new HashMap<QName, String>();

  public RssChannel getChannel()
  {
    return this.channel;
  }

  public void setChannel(RssChannel value)
  {
    this.channel = value;
  }

  public List<Object> getAny()
  {
    if (this.any == null) {
      this.any = new ArrayList<Object>();
    }
    return this.any;
  }

  public BigDecimal getVersion()
  {
    if (this.version == null) {
      return new BigDecimal("2.0");
    }
    return this.version;
  }

  public void setVersion(BigDecimal value)
  {
    this.version = value;
  }

  public Map<QName, String> getOtherAttributes()
  {
    return this.otherAttributes;
  }
}