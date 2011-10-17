package com.radioc.controllers.services;

import com.radioc.exceptions.ServiceException;
import com.radioc.hbeans.Role;
import com.radioc.hbeans.User;
import java.util.List;

public interface UserService extends ApplicationService {
	User checkCredentials(User paramUser) throws ServiceException;

	User get(Long paramLong);

	List<User> list();

	void update(User paramUser);

	void delete(User paramUser);

	Long getNbUsers();

	User getUser(String paramString1, String paramString2)
			throws ServiceException;

	User getUserByName(String paramString);

	List<Role> roleList();
}