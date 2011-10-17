package com.radioc.dao.impl;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.red5.logging.Red5LoggerFactory;
import org.slf4j.Logger;
import org.springframework.orm.ObjectRetrievalFailureException;
import org.springframework.stereotype.Repository;

import com.radioc.dao.UserDAO;
import com.radioc.hbeans.User;

@Repository("userDao")
public class UserDAOImpl extends AbstractDao<User> implements UserDAO {
	
	private static Logger log = Red5LoggerFactory.getLogger(UserDAOImpl.class, "UserDao");

	@Override
	public User save(User user) {
		try {
			return (User) super.save(user);
		} catch (HibernateException e) {
			log.debug("Error while creating user bean : " + e.getMessage());
			throw e;
		}
		
	}

	@Override
	public List<User> list() {
		List users = super.list();
		if (users == null) {
			log.warn("Could not retrieve media from the db : no media");
			throw new ObjectRetrievalFailureException(User.class, users);
		}
		return users;
	}

	@Override
	public void update(User user) {
		try {
			super.update(user);
		} catch (HibernateException e) {
			log.debug("Error while creating user bean : " + e.getMessage());
		}
	}

	@Override
	public User load(Long id) {
		User user = null;
		try {
			user = (User) super.load(id);
			if (user == null) {
				log.warn("Could not retrieve media from the db : id {}", id);
				throw new ObjectRetrievalFailureException(User.class, user);
			}
		} catch (HibernateException e) {
			log.debug("Error while creating user bean : " + e.getMessage());
		}
		return user;
	}

	@Override
	public User get(Long id) {
		User user = null;
		try {
			user = (User) super.get(id);
			if (user == null) {
				log.warn("Could not retrieve media from the db : id {}", id);
				throw new ObjectRetrievalFailureException(User.class, user);
			}
		} catch (HibernateException e) {
			log.debug("Error while creating user bean : " + e.getMessage());
		}
		return user;
	}

	@Override
	public void delete(User user) {
		try {
			User load = (User) super.load(user.getId());
			super.delete(load);
		} catch (HibernateException e) {
			log.debug("Error while creating user bean : " + e.getMessage());
		}
	}

	@Override
	public Number count() {
		return (Number) getCurrentSession().createCriteria(User.class)
				.setProjection(Projections.rowCount()).uniqueResult();
	}

	@Override
	public User getUserByName(String username) {
		return (User) getCurrentSession().createCriteria(User.class)
				.add(Restrictions.eq("userName", username)).uniqueResult();
	}
}