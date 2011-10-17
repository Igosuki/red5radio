package com.radioc.dao.impl;

import java.util.List;

import org.hibernate.HibernateException;
import org.red5.logging.Red5LoggerFactory;
import org.slf4j.Logger;
import org.springframework.orm.ObjectRetrievalFailureException;
import org.springframework.stereotype.Repository;

import com.radioc.dao.RoleDAO;
import com.radioc.hbeans.Role;

@Repository("roleDao")
public class RoleDAOImpl extends AbstractDao<Role> implements RoleDAO {
	
	private static Logger log = Red5LoggerFactory.getLogger(RoleDAOImpl.class, "RoleDao");

	@Override
	public Role save(Role Role) {
		try {
			return (Role) super.save(Role);
		} catch (HibernateException e) {
			log.debug("Error while creating Role bean : " + e.getMessage());
			throw e;
		}
		
	}

	@Override
	public List<Role> list() {
		List<Role> Roles = super.list();
		if (Roles == null) {
			log.warn("Could not retrieve media from the db : no media");
			throw new ObjectRetrievalFailureException(Role.class, Roles);
		}
		return Roles;
	}

	@Override
	public void update(Role Role) {
		try {
			super.update(Role);
		} catch (HibernateException e) {
			log.debug("Error while creating Role bean : " + e.getMessage());
		}
	}
}