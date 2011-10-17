package com.radioc.dao;

import com.radioc.hbeans.User;

public interface UserDAO extends ApplicationDao<User>
{
  Number count();

  User getUserByName(String paramString);

  User load(Long id);

  User get(Long id);
}