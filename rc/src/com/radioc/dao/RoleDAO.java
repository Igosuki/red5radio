package com.radioc.dao;

import java.util.List;

import com.radioc.hbeans.Role;

public interface RoleDAO extends ApplicationDao<Role>
{
  List<Role> list();
}