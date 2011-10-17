package com.radioc.display.deco;

import java.util.List;

import org.displaytag.decorator.TableDecorator;

import com.radioc.hbeans.Emission;
import com.radioc.hbeans.Intervenant;

public class EmissionDecorator extends TableDecorator
{
  public String getIntervenants()
  {
    Emission em = (Emission)getCurrentRowObject();
    List<Intervenant> intervenants = em.getIntervenants();
    if ((intervenants != null) && (!intervenants.isEmpty())) {
      StringBuilder sb = new StringBuilder();
      int size = intervenants.size();
      for (Intervenant i : intervenants) {
        sb.append(i.getName());

        if (size > 1) {
          sb.append(", ");
        }
      }
      return sb.toString();
    }
    return " ";
  }

  public String getSuppleants() {
    Emission em = (Emission)getCurrentRowObject();
    List<Intervenant> supp = em.getSuppleants();
    if ((supp != null) && (!supp.isEmpty())) {
      StringBuilder sb = new StringBuilder();
      int size = supp.size();
      for (Intervenant i : supp) {
        sb.append(i.getName());

        if (size > 1) {
          sb.append(", ");
        }
      }
      return sb.toString();
    }
    return " ";
  }
}