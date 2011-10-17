package com.radioc.controllers.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.radioc.beans.PaginatedListImpl;
import com.radioc.controllers.services.EmissionService;
import com.radioc.dao.EmissionDAO;
import com.radioc.hbeans.Emission;

@Repository("emissionService")
@Transactional(readOnly = true)
public class EmissionServiceImpl implements EmissionService {

	@Autowired
	@Qualifier("emissionDao")
	private EmissionDAO emDao;

	@Override
	public Emission load(Long id) {
		Emission emission = this.emDao.get(id);
		emission.getEpisodes().size();
		emission.getIntervenants().size();
		emission.getSuppleants().size();
		return (Emission) this.emDao.unproxy(emission);
	}

	@Override
	public Emission get(Long id) {
		return (Emission) this.emDao.unproxy(this.emDao.get(id));
	}

	@Override
	public List<Emission> list() {
		return unproxyEmissionList(this.emDao.list());
	}

	@Override
	public PaginatedListImpl<Emission> paginatedList(PaginatedListImpl<Emission> page) {
		this.emDao.getPaginatedList(page);
		unproxyEmissionList(page.getList());
		return page;
	}

	@Override
	@Transactional(readOnly = false)
	public Emission create(Emission em) {
		this.emDao.save(em);
		return em;
	}

	@Override
	@Transactional(readOnly = false)
	public void update(Emission em) {
		this.emDao.update(em);
	}

	@Override
	@Transactional(readOnly = false)
	public void delete(Emission em) {
		this.emDao.delete(em);
	}

	@Override
	public List<Emission> termSearch(String term) {
		return this.emDao.getSuggestions(term);
	}

	private List<Emission> unproxyEmissionList(List<Emission> emissions) {
		for (Emission em : emissions) {
			em.getEpisodes().size();
			em.getIntervenants().size();
			em.getSuppleants().size();
		}
		return emissions;
	}
}