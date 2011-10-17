package com.radioc.xml.beans;

import java.util.ArrayList;
import java.util.List;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;

@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name="SkipDaysList", propOrder={"day"})
public class SkipDaysList
{
  protected List<SkipDay> day;

  public List<SkipDay> getDay()
  {
    if (this.day == null) {
      this.day = new ArrayList<SkipDay>();
    }
    return this.day;
  }
}