package com.radioc.dao.impl;

import java.util.List;

import org.hibernate.HibernateException;
import org.red5.logging.Red5LoggerFactory;
import org.slf4j.Logger;
import org.springframework.orm.ObjectRetrievalFailureException;
import org.springframework.stereotype.Repository;

import com.radioc.dao.IntervenantDAO;
import com.radioc.hbeans.Intervenant;

@Repository("intervenantDao")
public class IntervenantDAOImpl extends AbstractDao<Intervenant> implements
		IntervenantDAO {
	private static Logger log = Red5LoggerFactory.getLogger(
			MediaItemDAOImpl.class, "IntervenantDao");

	public Intervenant save(Intervenant intervenant) {
		try {
			return (Intervenant) super.save(intervenant);
		} catch (HibernateException e) {
			log.debug("Error while creating intervenant bean : "
					+ e.getMessage());
			throw e;
		}
		
	}

	@Override
	public List<Intervenant> list() {
		List intervenants = super.list();
		if (intervenants == null) {
			log.warn("Could not retrieve media from the db : no media");
			throw new ObjectRetrievalFailureException(Intervenant.class,
					intervenants);
		}
		return intervenants;
	}

	@Override
	public void update(Intervenant intervenant) {
		try {
			super.saveOrUpdate(intervenant);
		} catch (HibernateException e) {
			log.debug("Error while creating intervenant bean : "
					+ e.getMessage());
		}
	}

	@Override
	public Intervenant load(Long id) {
		Intervenant em = null;
		try {
			em = (Intervenant) super.load(id);
			if (em == null) {
				log.warn("Could not retrieve media from the db : id {}", id);
				throw new ObjectRetrievalFailureException(Intervenant.class, em);
			}
		} catch (HibernateException e) {
			log.debug("Error while creating intervenant bean : "
					+ e.getMessage());
		}
		return em;
	}

	@Override
	public Intervenant get(Long id) {
		Intervenant em = null;
		try {
			em = (Intervenant) super.get(id);
			if (em == null) {
				log.warn("Could not retrieve media from the db : id {}", id);
				throw new ObjectRetrievalFailureException(Intervenant.class, em);
			}
		} catch (HibernateException e) {
			log.debug("Error while creating intervenant bean : "
					+ e.getMessage());
		}
		return em;
	}

	@Override
	public void delete(Intervenant em) {
		try {
			Intervenant load = (Intervenant) super.load(em.getId());
			super.delete(load);
		} catch (HibernateException e) {
			log.debug("Error while creating intervenant bean : "
					+ e.getMessage());
		}
	}

	@Override
	public List<Intervenant> getSuggestions(String term) {
		return super.getSuggestions(term, "name");
	}
}