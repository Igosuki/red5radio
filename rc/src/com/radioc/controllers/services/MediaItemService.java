package com.radioc.controllers.services;

import com.radioc.beans.PaginatedListImpl;
import com.radioc.hbeans.MediaItem;
import java.util.List;

public interface MediaItemService {
	MediaItem get(Long paramLong);

	MediaItem load(Long paramLong);

	List<MediaItem> list();

	MediaItem create(MediaItem paramMediaItem);

	void update(MediaItem paramMediaItem);

	void delete(MediaItem paramMediaItem);

	void updateToPrivate(MediaItem paramMediaItem);

	MediaItem getItemByAccessKey(String paramString);

	PaginatedListImpl<MediaItem> paginatedList(PaginatedListImpl<MediaItem> pagedList);
	
}