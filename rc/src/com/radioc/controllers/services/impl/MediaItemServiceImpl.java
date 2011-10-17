package com.radioc.controllers.services.impl;

import com.radioc.beans.PaginatedListImpl;
import com.radioc.controllers.services.MediaItemService;
import com.radioc.dao.MediaItemDAO;
import com.radioc.hbeans.Emission;
import com.radioc.hbeans.MediaItem;
import java.io.UnsupportedEncodingException;
import java.util.List;
import org.apache.commons.codec.digest.DigestUtils;
import org.red5.logging.Red5LoggerFactory;
import org.slf4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository("mediaItemsService")
@Transactional(readOnly = true)
public class MediaItemServiceImpl implements MediaItemService {
	private static Logger log = Red5LoggerFactory.getLogger(
			MediaItemService.class, "MediaItemService");

	@Autowired
	@Qualifier("mediaItemsDao")
	private MediaItemDAO miDao;
	DigestUtils digestUtils = null;

	public void init() {
		this.digestUtils = new DigestUtils();
	}

	@Override
	public MediaItem load(Long id) {
		MediaItem mediaItems = this.miDao.get(id);
		return (MediaItem) this.miDao.unproxy(mediaItems);
	}

	@Override
	public MediaItem get(Long id) {
		return (MediaItem) this.miDao.unproxy(this.miDao.get(id));
	}

	@Override
	public List<MediaItem> list() {
		return this.miDao.list();
	}

	@Transactional(readOnly = false)
	@Override
	public MediaItem create(MediaItem im) {
		try {
			byte[] bytes = im.getPath().getBytes("ISO-8859-1");
			String md5Hash = DigestUtils.md5Hex(bytes);
			im.setAccesskey(md5Hash);
		} catch (UnsupportedEncodingException e) {
			log.debug("Problem generating access key with encoding ISO-8859-1",
					e);
		}
		this.miDao.save(im);
		return im;
	}

	@Override
	@Transactional(readOnly = false)
	public void update(MediaItem im) {
		this.miDao.update(im);
	}

	@Override
	@Transactional(readOnly = false)
	public void delete(MediaItem im) {
		this.miDao.delete(im);
	}

	@Override
	public void updateToPrivate(MediaItem mi) {
		this.miDao.uptadeMediaToPrivate(mi);
	}

	@Override
	public MediaItem getItemByAccessKey(String md5Hash) {
		return this.miDao.getItemByAccessKey(md5Hash);
	}
	
	@Override
	public PaginatedListImpl<MediaItem> paginatedList(PaginatedListImpl<MediaItem> page) {
		this.miDao.getPaginatedList(page);
		return page;
	}
	
}