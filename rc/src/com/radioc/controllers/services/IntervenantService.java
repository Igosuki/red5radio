package com.radioc.controllers.services;

import java.util.List;

import com.radioc.beans.PaginatedListImpl;
import com.radioc.hbeans.Intervenant;

public interface IntervenantService {
	Intervenant get(Long paramLong);

	Intervenant load(Long paramLong);

	List<Intervenant> list();

	Intervenant create(Intervenant paramIntervenant);

	void update(Intervenant paramIntervenant);

	void delete(Intervenant paramIntervenant);

	List<Intervenant> termSearch(String paramString);

	PaginatedListImpl<Intervenant> paginatedList(PaginatedListImpl<Intervenant> pagedList);
}