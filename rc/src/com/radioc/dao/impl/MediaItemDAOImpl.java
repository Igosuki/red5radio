package com.radioc.dao.impl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.criterion.Restrictions;
import org.hibernate.criterion.SimpleExpression;
import org.red5.logging.Red5LoggerFactory;
import org.slf4j.Logger;
import org.springframework.orm.ObjectRetrievalFailureException;
import org.springframework.stereotype.Repository;

import com.radioc.beans.PaginatedListImpl;
import com.radioc.dao.MediaItemDAO;
import com.radioc.hbeans.MediaItem;
import com.radioc.hbeans.User;

@Repository("mediaItemsDao")
public class MediaItemDAOImpl extends AbstractDao<MediaItem> implements
		MediaItemDAO {
	private static Logger log = Red5LoggerFactory.getLogger(
			MediaItemDAOImpl.class, "MediaItemDAO");

	@Override
	public List<MediaItem> addMediaItems(List<MediaItem> mediaList) {
		try {
			return super.saveAll(mediaList);
		} catch (HibernateException e) {
			log.warn("Could not update media into the db : {}", e.getMessage());
			throw e;
		}
		
	}

	@Override
	public MediaItem addMediaItem(MediaItem mi) {
		try {
			return (MediaItem) super.save(mi);
		} catch (HibernateException e) {
			log.warn("Could not update media into the db : {}", e.getMessage());
			throw e;
		}
		
	}

	@Override
	public List<MediaItem> getMediaItems(Boolean pv) {
		Criteria crit = getCurrentSession().createCriteria(MediaItem.class);
		crit.add(Restrictions.ne("private", Boolean.valueOf(!pv.booleanValue())));

		List mediaList = crit.list();
		if (mediaList == null) {
			log.warn("Could not retrieve media from the db : no media");
			throw new ObjectRetrievalFailureException(User.class,
					MediaItem.class);
		}

		return mediaList;
	}

	@Override
	public List<MediaItem> getAllMediaItems() {
		List mediaList = null;
		try {
			mediaList = super.list();
		} catch (HibernateException e) {
			log.warn("Could not get media from the db : {}", e.getMessage());
			throw e;
		}
		if (mediaList == null) {
			log.warn("Could not retrieve media from the db : no media");
			throw new ObjectRetrievalFailureException(User.class,
					MediaItem.class);
		}

		return mediaList;
	}

	@Override
	public MediaItem getMediaItem(Long id) {
		MediaItem mi = null;
		try {
			mi = (MediaItem) super.load(id);
		} catch (HibernateException e) {
			log.warn("Could not get media from the db : {}", e.getMessage());
			throw e;
		}
		if (mi == null) {
			log.warn("Could not retrieve media from the db : id {}, title {}",
					id);
			throw new ObjectRetrievalFailureException(User.class,
					MediaItem.class);
		}
		return mi;
	}

	@Override
	public List<MediaItem> getMediaItems(PaginatedListImpl<MediaItem> page) {
		return null;
	}

	@Override
	public MediaItem save(MediaItem mediaItem) {
		try {
			return (MediaItem) super.save(mediaItem);
		} catch (HibernateException e) {
			log.debug("Error while creating mediaItem bean : " + e.getMessage());
			throw e;
		}
		
	}

	@Override
	public List<MediaItem> list() {
		List mediaItems = super.list();
		if (mediaItems == null) {
			log.warn("Could not retrieve media from the db : no media");
			throw new ObjectRetrievalFailureException(MediaItem.class,
					mediaItems);
		}
		return mediaItems;
	}

	@Override
	public void update(MediaItem emission) {
		try {
			super.merge(emission);
		} catch (HibernateException e) {
			log.debug("Error while creating emission bean : " + e.getMessage());
		}
	}

	@Override
	public MediaItem load(Long id) {
		MediaItem em = null;
		try {
			em = (MediaItem) super.load(id);
			if (em == null) {
				log.warn("Could not retrieve media from the db : id {}", id);
				throw new ObjectRetrievalFailureException(MediaItem.class, em);
			}
		} catch (HibernateException e) {
			log.debug("Error while creating emission bean : " + e.getMessage());
		}
		return em;
	}

	@Override
	public MediaItem get(Long id) {
		MediaItem em = null;
		try {
			em = (MediaItem) super.get(id);
			if (em == null) {
				log.warn("Could not retrieve media from the db : id {}", id);
				throw new ObjectRetrievalFailureException(MediaItem.class, em);
			}
		} catch (HibernateException e) {
			log.debug("Error while creating emission bean : " + e.getMessage());
		}
		return em;
	}

	@Override
	public void delete(MediaItem em) {
		try {
			MediaItem load = (MediaItem) super.load(em.getId());
			super.delete(load);
		} catch (HibernateException e) {
			log.debug("Error while creating emission bean : " + e.getMessage());
		}
	}

	@Override
	public void uptadeMediaToPrivate(MediaItem mi) {
		try {
			mi.setIsPv(Boolean.valueOf(true));
			super.save(mi);
		} catch (HibernateException e) {
			log.debug("Error wihle updating media bean private property");
		}
	}

	@Override
	public MediaItem getItemByAccessKey(String md5Hash) {
		try {
			Criteria createCriteria = getCurrentSession().createCriteria(
					MediaItem.class);
			SimpleExpression eq = Restrictions.eq("accesskey", md5Hash);
			return (MediaItem) createCriteria.add(eq).uniqueResult();
		} catch (HibernateException e) {
			log.debug("Error wihle updating media bean private property");
		}
		return null;
	}
}