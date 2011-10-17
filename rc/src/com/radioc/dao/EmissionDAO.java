package com.radioc.dao;

import com.radioc.hbeans.Emission;
import java.util.List;

public interface EmissionDAO extends ApplicationDao<Emission>
{
  Emission save(Emission paramEmission);

   List<Emission> list();

   void update(Emission paramEmission);

   Emission get(Long paramLong);

   Emission load(Long paramLong);

   void delete(Emission paramEmission);

   List<Emission> getSuggestions(String paramString);
}