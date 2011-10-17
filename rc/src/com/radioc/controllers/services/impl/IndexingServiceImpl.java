package com.radioc.controllers.services.impl;

import com.radioc.controllers.services.IndexingService;
import com.radioc.dao.EmissionDAO;
import com.radioc.dao.IntervenantDAO;
import com.radioc.dao.MediaItemDAO;
import com.radioc.dao.impl.AbstractDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository("indexingService")
@Transactional(readOnly = false)
public class IndexingServiceImpl implements IndexingService {

	@Autowired
	@Qualifier("intervenantDao")
	private IntervenantDAO intervDao;

	@Autowired
	@Qualifier("mediaItemsDao")
	private MediaItemDAO miDao;

	@Autowired
	@Qualifier("emissionDao")
	private EmissionDAO emDao;

	@Override
	public void initIndexes() {
		((AbstractDao) this.emDao).initLuceneIndexer();

		((AbstractDao) this.intervDao).initLuceneIndexer();
	}
}