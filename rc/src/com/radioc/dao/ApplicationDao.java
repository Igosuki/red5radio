package com.radioc.dao;

import java.io.Serializable;
import java.util.List;

import com.radioc.beans.PaginatedListImpl;

public interface ApplicationDao<T>
{
   List<T> loadAll();

   T load(Serializable paramSerializable);

   T get(Serializable paramSerializable);

   T save(T paramT);

   void saveOrUpdate(T paramT);

   void update(T paramT);

   void delete(T paramT);

   void evict(T paramT);

   void refresh(T paramT);

   T merge(T paramT);

   T unproxy(T paramT);
   
   PaginatedListImpl<T> getPaginatedList(PaginatedListImpl<T> page);
}