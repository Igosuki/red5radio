package com.radioc.controllers.services.impl;

import com.radioc.controllers.services.UserService;
import com.radioc.dao.HibernateApplicationRepository;
import com.radioc.dao.RoleDAO;
import com.radioc.dao.UserDAO;
import com.radioc.exceptions.ServiceException;
import com.radioc.hbeans.Emission;
import com.radioc.hbeans.Role;
import com.radioc.hbeans.User;
import java.util.List;
import org.red5.logging.Red5LoggerFactory;
import org.slf4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Required;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository("userService")
@Transactional
public class UserServiceImpl implements UserService {
	private static final Logger logger = Red5LoggerFactory
			.getLogger(UserServiceImpl.class);
	private HibernateApplicationRepository appRepository;

	@Autowired
	@Qualifier("userDao")
	private UserDAO userDao;

	@Autowired
	@Qualifier("roleDao")
	private RoleDAO roleDao;

	
	@Override
	public Long getNbUsers() {
		return (Long) this.userDao.count();
	}

	@Override
	public User checkCredentials(User user) throws ServiceException {
		return null;
	}

	@Override
	public User get(Long id) {
		User user = this.userDao.unproxy(this.userDao.get(id));
		user.getRoles().size();
		return user;
	}

	@Override
	public List<User> list() {
		return unproxyUserList(this.userDao.loadAll());
	}

	@Override
	public List<Role> roleList() {
		return this.roleDao.list();
	}

	
	@Override
	public void update(User user) {
		this.userDao.update(user);
	}

	@Override
	public void delete(User user) {
		this.userDao.delete(user);
	}

	@Override
	public User getUser(String user, String password) throws ServiceException {
		logger.debug("User service : getuser called for {}/{}", user, password);
		try {
			return this.appRepository.getUser(user, password);
		} catch (Exception e) {
			logger.debug("User service : could not get user from db {}", user);
			throw new ServiceException("UserService", "Could not get user", e);
		}
	}

	@Override
	public User getUserByName(String username) {
		User user = this.userDao.unproxy(this.userDao.getUserByName(username));
		user.getRoles().size();
		return user;
	}
	
	@Required
	@Autowired
	public void setAppRepository(
			@Qualifier("applicationRepository") HibernateApplicationRepository appRepository) {
		this.appRepository = appRepository;
	}
	
	private List<User> unproxyUserList(List<User> users) {
		for (User user : users) {
			user.getRoles().size();
		}
		return users;
	}
}