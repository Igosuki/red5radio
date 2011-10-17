package com.radioc.hbeans;

import java.io.Serializable;

public abstract interface Identifiable<T extends Serializable>
{
  public abstract T getId();

  public abstract void setId(T paramT);
}