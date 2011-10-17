package com.radioc.dao;

import com.radioc.beans.PaginatedListImpl;
import com.radioc.hbeans.MediaItem;
import java.util.List;

public interface MediaItemDAO extends ApplicationDao<MediaItem>
{
  List<MediaItem> addMediaItems(List<MediaItem> paramList);

  MediaItem addMediaItem(MediaItem paramMediaItem);

  List<MediaItem> getMediaItems(Boolean paramBoolean);

  List<MediaItem> getAllMediaItems();

  MediaItem getMediaItem(Long paramLong);

  List<MediaItem> getMediaItems(PaginatedListImpl<MediaItem> paramPaginatedListImpl);

  MediaItem save(MediaItem paramMediaItem);

  List<MediaItem> list();

  void update(MediaItem paramMediaItem);

  MediaItem get(Long paramLong);

  MediaItem load(Long paramLong);

  void delete(MediaItem paramMediaItem);

  void uptadeMediaToPrivate(MediaItem paramMediaItem);

  MediaItem getItemByAccessKey(String paramString);
}