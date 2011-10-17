package com.radioc.dao.impl;

import java.util.List;

import org.hibernate.HibernateException;
import org.red5.logging.Red5LoggerFactory;
import org.slf4j.Logger;
import org.springframework.orm.ObjectRetrievalFailureException;
import org.springframework.stereotype.Repository;

import com.radioc.dao.EmissionDAO;
import com.radioc.hbeans.Emission;

@Repository("emissionDao")
public class EmissionDAOImpl extends AbstractDao<Emission> implements
		EmissionDAO {
	private static Logger log = Red5LoggerFactory.getLogger(
			EmissionDAOImpl.class, "EmissionDao");

	@Override
	public Emission save(Emission emission) {
		try {
			return (Emission) super.save(emission);
		} catch (HibernateException e) {
			log.debug("Error while creating emission bean : " + e.getMessage());
			throw e;
		}
	}

	@Override
	public List<Emission> list() {
		List emissions = super.list();
		if (emissions == null) {
			log.warn("Could not retrieve media from the db : no media");
			throw new ObjectRetrievalFailureException(Emission.class, emissions);
		}
		return emissions;
	}

	@Override
	public void update(Emission emission) {
		try {
			super.update(emission);
		} catch (HibernateException e) {
			log.debug("Error while creating emission bean : " + e.getMessage());
		}
	}

	@Override
	public Emission load(Long id) {
		Emission em = null;
		try {
			em = (Emission) super.load(id);
			if (em == null) {
				log.warn("Could not retrieve media from the db : id {}", id);
				throw new ObjectRetrievalFailureException(Emission.class, em);
			}
		} catch (HibernateException e) {
			log.debug("Error while creating emission bean : " + e.getMessage());
		}
		return em;
	}

	@Override
	public Emission get(Long id) {
		Emission em = null;
		try {
			em = (Emission) super.get(id);
			if (em == null) {
				log.warn("Could not retrieve media from the db : id {}", id);
				throw new ObjectRetrievalFailureException(Emission.class, em);
			}
		} catch (HibernateException e) {
			log.debug("Error while creating emission bean : " + e.getMessage());
		}
		return em;
	}

	@Override
	public void delete(Emission em) {
		try {
			Emission load = (Emission) super.load(em.getId());
			super.delete(load);
		} catch (HibernateException e) {
			log.debug("Error while creating emission bean : " + e.getMessage());
		}
	}

	@Override
	public synchronized List<Emission> getSuggestions(String searchTerm) {
		return super.getSuggestions(searchTerm, "name");
	}
}