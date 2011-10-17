package com.radioc.dao.impl;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.red5.logging.Red5LoggerFactory;
import org.slf4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Required;
import org.springframework.orm.ObjectRetrievalFailureException;
import org.springframework.stereotype.Repository;

import com.radioc.dao.HibernateApplicationRepository;
import com.radioc.hbeans.User;

@Repository("applicationRepository")
public class HibernateApplicationRepositoryImpl implements
		HibernateApplicationRepository {
	private static final Logger logger = Red5LoggerFactory
			.getLogger(HibernateApplicationRepositoryImpl.class);
	private SessionFactory sessionFactory;

	public User getUser(String user, String password) {
		logger.debug("Retrieving user with credentials");

		Criteria crit = this.sessionFactory.getCurrentSession().createCriteria(
				User.class);
		crit.add(Restrictions.eq("userName", user));
		crit.add(Restrictions.eq("password", password));
		User u = (User) crit.uniqueResult();
		if (u == null) {
			logger.warn("Could not retrieve user from the db : bad credentials");
			throw new ObjectRetrievalFailureException(User.class, user);
		}
		return u;
	}

	@Required
	@Autowired
	public void setSessionFactory(
			@Qualifier("sessionFactory") SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
}