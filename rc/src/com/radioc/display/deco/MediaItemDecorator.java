package com.radioc.display.deco;

import com.radioc.hbeans.Emission;
import com.radioc.hbeans.MediaItem;
import org.displaytag.decorator.TableDecorator;

public class MediaItemDecorator extends TableDecorator
{
  public String getEmission()
  {
    MediaItem mi = (MediaItem)getCurrentRowObject();
    if (mi.getEmission() != null) {
      return mi.getEmission().getName();
    }
    return " ";
  }
}