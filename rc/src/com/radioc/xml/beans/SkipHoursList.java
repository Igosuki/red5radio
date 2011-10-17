package com.radioc.xml.beans;

import java.util.ArrayList;
import java.util.List;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlType;

@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name="SkipHoursList", propOrder={"hour"})
public class SkipHoursList
{

  @XmlElement(type=Integer.class)
  protected List<Integer> hour;

  public List<Integer> getHour()
  {
    if (this.hour == null) {
      this.hour = new ArrayList<Integer>();
    }
    return this.hour;
  }
}