package com.radioc.xml.beans;

import javax.xml.bind.annotation.XmlEnum;
import javax.xml.bind.annotation.XmlEnumValue;
import javax.xml.bind.annotation.XmlType;

@XmlType(name="SkipDay")
@XmlEnum
public enum SkipDay
{
  MONDAY("Monday"), 

  TUESDAY("Tuesday"), 

  WEDNESDAY("Wednesday"), 

  THURSDAY("Thursday"), 

  FRIDAY("Friday"), 

  SATURDAY("Saturday"), 

  SUNDAY("Sunday");

  private final String value;

  private SkipDay(String v) { this.value = v; }

  public String value()
  {
    return this.value;
  }

  public static SkipDay fromValue(String v) {
    for (SkipDay c : values()) {
      if (c.value.equals(v)) {
        return c;
      }
    }
    throw new IllegalArgumentException(v);
  }
}