package com.radioc.controllers.services.impl;

import com.radioc.beans.PaginatedListImpl;
import com.radioc.controllers.services.IntervenantService;
import com.radioc.dao.IntervenantDAO;
import com.radioc.hbeans.Emission;
import com.radioc.hbeans.Intervenant;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository("intervenantService")
@Transactional(readOnly = true)
public class IntervenantServiceImpl implements IntervenantService {

	@Autowired
	@Qualifier("intervenantDao")
	private IntervenantDAO intervDao;

	@Override
	public Intervenant load(Long id) {
		Intervenant intervenant = this.intervDao.get(id);
		intervenant.getEmissions().size();
		intervenant.getEmissionssupp().size();
		return (Intervenant) this.intervDao.unproxy(intervenant);
	}

	@Override
	public Intervenant get(Long id) {
		return (Intervenant) this.intervDao.unproxy(this.intervDao.get(id));
	}

	@Override
	public List<Intervenant> list() {
		return this.intervDao.list();
	}

	@Override
	@Transactional(readOnly = false)
	public Intervenant create(Intervenant interv) {
		this.intervDao.save(interv);
		return interv;
	}

	@Override
	@Transactional(readOnly = false)
	public void update(Intervenant interv) {
		this.intervDao.update(interv);
	}

	@Override
	@Transactional(readOnly = false)
	public void delete(Intervenant interv) {
		this.intervDao.delete(interv);
	}

	@Override
	public List<Intervenant> termSearch(String term) {
		return this.intervDao.getSuggestions(term);
	}

	@Override
	public PaginatedListImpl<Intervenant> paginatedList(
			PaginatedListImpl<Intervenant> pagedList) {
		PaginatedListImpl<Intervenant> paginatedList = this.intervDao.getPaginatedList(pagedList);
		unproxyInterv(paginatedList.getList());
		return paginatedList;
	}
	
	private List<Intervenant> unproxyInterv(List<Intervenant> intervenants) {
		for (Intervenant in : intervenants) {
			in.getEmissions().size();
			in.getEmissionssupp().size();
		}
		return intervenants;
	}
}