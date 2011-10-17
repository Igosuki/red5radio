package com.radioc.dao.impl;

import java.io.Serializable;
import java.lang.reflect.ParameterizedType;
import java.util.List;

import org.apache.lucene.analysis.standard.StandardAnalyzer;
import org.apache.lucene.queryParser.MultiFieldQueryParser;
import org.apache.lucene.queryParser.ParseException;
import org.apache.lucene.util.Version;
import org.displaytag.properties.SortOrderEnum;
import org.hibernate.Criteria;
import org.hibernate.Hibernate;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Projections;
import org.hibernate.proxy.HibernateProxy;
import org.hibernate.search.FullTextSession;
import org.hibernate.search.MassIndexer;
import org.hibernate.search.Search;
import org.hibernate.search.SearchFactory;
import org.red5.logging.Red5LoggerFactory;
import org.slf4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import com.radioc.beans.PaginatedListImpl;
import com.radioc.dao.ApplicationDao;
import com.radioc.hbeans.Identifiable;

@SuppressWarnings("unchecked")
public abstract class AbstractDao<T extends Identifiable> implements
		ApplicationDao<T> {
	private static Logger log = Red5LoggerFactory.getLogger(AbstractDao.class,
			"Dao");

	@Autowired
	@Qualifier("sessionFactory")
	protected SessionFactory sessionFactory;
	private Class templateClass;

	public AbstractDao() {
		ParameterizedType parameterizedType = (ParameterizedType) getClass()
				.getGenericSuperclass();

		this.templateClass = ((Class) parameterizedType
				.getActualTypeArguments()[0]);
	}

	public List<T> list() {
		return getCurrentSession().createCriteria(this.templateClass).list();
	}

	@Override
	public List<T> loadAll() {
		return getCurrentSession().createCriteria(this.templateClass).list();
	}

	@Override
	public T load(Serializable primaryKey) {
		return (T) getCurrentSession().load(this.templateClass, primaryKey);
	}

	@Override
	public T get(Serializable primaryKey) {
		return (T) getCurrentSession().get(this.templateClass, primaryKey);
	}

	@Override
	public T save(T entity) {
		Serializable id = getCurrentSession().save(entity);
		entity.setId(id);

		return entity;
	}

	public List<T> saveAll(List<T> entities) {
		for (Identifiable entity : entities) {
			Serializable id = getCurrentSession().save(entity);
			entity.setId(id);
		}
		return entities;
	}

	@Override
	public void saveOrUpdate(T entity) {
		getCurrentSession().saveOrUpdate(entity);
	}

	@Override
	public void update(T entity) {
		getCurrentSession().update(entity);
	}

	@Override
	public void delete(T entity) {
		getCurrentSession().delete(entity);
	}

	@Override
	public void evict(T entity) {
		getCurrentSession().evict(entity);
	}

	@Override
	public void refresh(T entity) {
		getCurrentSession().refresh(entity);
	}

	@Override
	public T merge(T entity) {
		return (T) getCurrentSession().merge(entity);
	}

	protected final Session getCurrentSession() {
		return this.sessionFactory.getCurrentSession();
	}

	@Override
	public T unproxy(T entity) {
		Hibernate.initialize(entity);
		if ((entity instanceof HibernateProxy)) {
			entity = (T) ((HibernateProxy) entity)
					.getHibernateLazyInitializer().getImplementation();
		}

		return entity;
	}

	public List<T> getSuggestions(String searchTerm, String searchField) {
		FullTextSession fullTextSession = Search
				.getFullTextSession(this.sessionFactory.getCurrentSession());

		SearchFactory searchFactory = fullTextSession.getSearchFactory();

		MultiFieldQueryParser parser = new MultiFieldQueryParser(
				Version.LUCENE_33, new String[] { searchField },
				new StandardAnalyzer(Version.LUCENE_33));
		parser.setAllowLeadingWildcard(true);
		org.apache.lucene.search.Query q = null;
		try {
			q = parser.parse("*" + searchTerm + "*");
		} catch (ParseException e) {
			log.debug("Could not parse !!");
		}
		org.hibernate.Query hibQ = fullTextSession.createFullTextQuery(q,
				new Class[] { this.templateClass });

		List list = hibQ.list();
		return list;
	}

	public void initLuceneIndexer() {
		FullTextSession fullTextSession = Search
				.getFullTextSession(this.sessionFactory.getCurrentSession());
		MassIndexer createIndexer = fullTextSession
				.createIndexer(new Class[] { this.templateClass });
		try {
			createIndexer.startAndWait();
		} catch (InterruptedException e) {
			log.debug("The indexing was interrupted !!");
		}
	}
	
	@SuppressWarnings("unchecked")
	public PaginatedListImpl<T> getPaginatedList(PaginatedListImpl<T> page) {
	  
	  int pageNum = page.getPageNumber();
	  final int objectsPerPage = page.getObjectsPerPage();
	  final int firstResult = objectsPerPage * (pageNum -1);
	  String sortOrderCriterion = page.getSortCriterion();
	  SortOrderEnum sortOrder = page.getSortDirection();

	  Criteria crit = getCurrentSession().createCriteria(templateClass);
	  if(sortOrder == SortOrderEnum.ASCENDING) {
		  crit.addOrder(Order.asc(sortOrderCriterion));
	  } else {
		  crit.addOrder(Order.desc(sortOrderCriterion));
	  }
	  List<T> list = crit.setFirstResult(firstResult).setMaxResults(objectsPerPage).list();
	  Criteria countCrit = getCurrentSession().createCriteria(templateClass).setProjection(Projections.rowCount());
	  
	  page.setList(list);
	  page.setFullListSize(((Long)countCrit.uniqueResult()).intValue());
	  page.setList(list);
	  page.setObjectsPerPage(objectsPerPage);
	  
	  return page;
	}
}