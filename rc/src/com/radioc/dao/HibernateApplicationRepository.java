package com.radioc.dao;

import com.radioc.hbeans.User;

public interface HibernateApplicationRepository
{
  User getUser(String paramString1, String paramString2);
}