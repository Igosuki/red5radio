package com.radioc.controllers.services;

import com.radioc.exceptions.ServiceException;
import com.radioc.hbeans.MediaItem;
import java.util.List;
import java.util.Map;

public interface MediaListingService {
	Map<String, Map<String, Object>> getListOfAvailableFiles();

	List<MediaItem> getListOfAvailableMedia();

	List<MediaItem> getAllMediaItems();

	MediaItem getMediaItem(Long paramLong);

	void registerMediaItem(MediaItem paramMediaItem) throws ServiceException;

	void registerMediaItems(List<MediaItem> paramList) throws ServiceException;
}