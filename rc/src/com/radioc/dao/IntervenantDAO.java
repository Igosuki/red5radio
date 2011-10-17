package com.radioc.dao;

import com.radioc.hbeans.Intervenant;
import java.util.List;

public interface IntervenantDAO extends ApplicationDao<Intervenant>
{
   Intervenant save(Intervenant paramIntervenant);

   List<Intervenant> list();

   void update(Intervenant paramIntervenant);

   Intervenant get(Long paramLong);

   Intervenant load(Long paramLong);

   void delete(Intervenant paramIntervenant);

   List<Intervenant> getSuggestions(String paramString);
}