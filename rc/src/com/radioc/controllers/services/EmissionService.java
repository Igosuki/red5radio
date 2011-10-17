package com.radioc.controllers.services;

import com.radioc.hbeans.Emission;
import java.util.List;

public interface EmissionService extends PagingService<Emission> {
	Emission get(Long paramLong);

	Emission load(Long paramLong);

	List<Emission> list();

	Emission create(Emission paramEmission);

	void update(Emission paramEmission);

	void delete(Emission paramEmission);

	List<Emission> termSearch(String paramString);
}