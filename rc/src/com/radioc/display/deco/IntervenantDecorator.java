package com.radioc.display.deco;

import com.radioc.hbeans.Emission;
import com.radioc.hbeans.Intervenant;
import java.util.List;
import org.displaytag.decorator.TableDecorator;

public class IntervenantDecorator extends TableDecorator
{
  public String getEmissions()
  {
    Intervenant intervenant = (Intervenant)getCurrentRowObject();
    List<Emission> emissions = intervenant.getEmissions();
    StringBuilder sb = new StringBuilder();
    if ((emissions != null) && (!emissions.isEmpty())) {
      
      int size = emissions.size();
      for (Emission e : emissions) {
        sb.append(e.getName());
        if (size > 1) {
          sb.append(", ");
        }
      }
    }
    return sb.toString();
  }
  
  public String getEmissionssup()
  {
    Intervenant intervenant = (Intervenant)getCurrentRowObject();
    List<Emission> emissions = intervenant.getEmissionssupp();
    StringBuilder sb = new StringBuilder();
    if ((emissions != null) && (!emissions.isEmpty())) {
      
      int size = emissions.size();
      for (Emission e : emissions) {
        sb.append(e.getName());
        if (size > 1) {
          sb.append(", ");
        }
      }
    }
    return sb.toString();
  }
}