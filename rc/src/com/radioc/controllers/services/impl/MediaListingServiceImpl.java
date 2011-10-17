package com.radioc.controllers.services.impl;

import com.radioc.controllers.services.MediaListingService;
import com.radioc.dao.MediaItemDAO;
import com.radioc.exceptions.ServiceException;
import com.radioc.hbeans.MediaItem;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import org.red5.logging.Red5LoggerFactory;
import org.slf4j.Logger;
import org.springframework.beans.BeansException;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.core.io.Resource;
import org.springframework.core.io.support.PathMatchingResourcePatternResolver;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository("mediaListingService")
@Transactional
public class MediaListingServiceImpl implements MediaListingService,
		ApplicationContextAware {
	private static Logger log = Red5LoggerFactory
			.getLogger(MediaListingServiceImpl.class);

	@Qualifier("mediaDao")
	private MediaItemDAO mediaDao;
	private ApplicationContext applicationContext;

	public MediaItemDAO getMediaDao() {
		return this.mediaDao;
	}

	public void setMediaDao(MediaItemDAO mediaDao) {
		this.mediaDao = mediaDao;
	}

	@Override
	public List<MediaItem> getListOfAvailableMedia() {
		return null;
	}

	@Override
	public List<MediaItem> getAllMediaItems() {
		return this.mediaDao.getAllMediaItems();
	}

	@Override
	public void registerMediaItem(MediaItem mi) throws ServiceException {
		if (this.mediaDao.addMediaItem(mi) == null)
			throw new ServiceException("MediaListingServiceImpl",
					"Media Item did not update", null);
	}

	@Override
	public void registerMediaItems(List<MediaItem> mi) throws ServiceException {
		List miList = null;
		if (((miList = this.mediaDao.addMediaItems(mi)) == null)
				|| (miList.isEmpty()))
			throw new ServiceException("MediaListingServiceImpl",
					"Media Item did not update", null);
	}

	@Override
	public MediaItem getMediaItem(Long id) {
		return this.mediaDao.getMediaItem(id);
	}

	@Override
	public Map<String, Map<String, Object>> getListOfAvailableFiles() {
		log.debug("Getting the files files");

		Map filesMap = new HashMap();
		addToMap(filesMap, "media/*.flv");
		addToMap(filesMap, "media/*.f4v");
		addToMap(filesMap, "media/*.mp3");
		addToMap(filesMap, "media/*.mp4");
		return filesMap;
	}

	private void addToMap(Map<String, Map<String, Object>> filesMap,
			String pathMatching) {
		try {
			PathMatchingResourcePatternResolver p = new PathMatchingResourcePatternResolver(
					this.applicationContext);
			Resource[] files = p.getResources(pathMatching);
			if (files != null)
				for (Resource mediaResource : files) {
					File file = mediaResource.getFile();
					Date lastModifiedDate = new Date(file.lastModified());
					String lastModified = formatDate(lastModifiedDate);
					String fName = mediaResource.getFile().getName();
					String fBytes = Long.toString(file.length());
					if (log.isDebugEnabled()) {
						log.debug("flvName: {}", fName);
						log.debug("lastModified date: {}", lastModified);
						log.debug("flvBytes: {}", fBytes);
						log.debug("-------");
					}
					Map fileInfo = new HashMap();
					fileInfo.put("name", fName);
					fileInfo.put("lastModified", lastModified);
					fileInfo.put("size", fBytes);
					filesMap.put(fName, fileInfo);
				}
		} catch (IOException e) {
			log.error("", e);
			log.error("Could not resolve file matching path", e);
		}
	}

	private String formatDate(Date date) {
		String pattern = "dd/MM/yy H:mm:ss";
		Locale locale = new Locale("en", "US");
		SimpleDateFormat formatter = new SimpleDateFormat(pattern, locale);
		return formatter.format(date);
	}

	public void setApplicationContext(ApplicationContext applicationContext)
			throws BeansException {
		log.debug("-------");
		this.applicationContext = applicationContext;
	}
}