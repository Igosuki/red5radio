package com.radioc.beans;

import java.util.List;

import org.apache.commons.lang.StringUtils;
import org.displaytag.pagination.PaginatedList;
import org.displaytag.properties.SortOrderEnum;

import com.radioc.hbeans.Emission;
import com.radioc.utils.Utils;

public class PaginatedListImpl<T> implements PaginatedList {
	private int fullListSize;
	private int objectsPerPage;
	private int pageNumber;
	private String searchId;
	private String sortCriterion;
	private SortOrderEnum sortDirection;
	private List<T> list;

	public PaginatedListImpl() {

	}

	public PaginatedListImpl(int objectsPerPage, String defaultSortCriterion) {
		this.objectsPerPage = objectsPerPage;
		this.pageNumber = 1;
		this.sortDirection = SortOrderEnum.ASCENDING;
		this.sortCriterion = defaultSortCriterion;
	}

	public void updateFromRequest(String sortCriterion, String sortOrder,
			String pageNum) {
		if (pageNum != null) {
			this.setPageNumber(Integer.valueOf(pageNum));
		}
		if (sortOrder != null) {
			this.setSortDirection(getSortOrderFromString(sortOrder));
		}
		if (sortCriterion != null) {
			this.setSortCriterion(sortCriterion);
		}
	}

	public void init() {
		int x = 0;
	}

	public int getFullListSize() {
		return this.fullListSize;
	}

	public void setFullListSize(int fullListSize) {
		this.fullListSize = fullListSize;
	}

	public int getObjectsPerPage() {
		return this.objectsPerPage;
	}

	public void setObjectsPerPage(int objectsPerPage) {
		this.objectsPerPage = objectsPerPage;
	}

	public int getPageNumber() {
		return this.pageNumber;
	}

	public void setPageNumber(int pageNumber) {
		this.pageNumber = pageNumber;
	}

	public String getSearchId() {
		return this.searchId;
	}

	public void setSearchId(String searchId) {
		this.searchId = searchId;
	}

	public String getSortCriterion() {
		return this.sortCriterion;
	}

	public void setSortCriterion(String sortCriterion) {
		this.sortCriterion = sortCriterion;
	}

	public SortOrderEnum getSortDirection() {
		return this.sortDirection;
	}

	public void setSortDirection(SortOrderEnum sortDirection) {
		this.sortDirection = sortDirection;
	}

	public List<T> getList() {
		return this.list;
	}

	public void setList(List<T> list) {
		this.list = list;
	}

	private SortOrderEnum getSortOrderFromString(String string) {
		if (StringUtils.isNotBlank(string)) {
			if ("asc".equals(string)) {
				return SortOrderEnum.ASCENDING;
			} else if ("desc".equals(string)) {
				return SortOrderEnum.DESCENDING;
			}
		}
		return SortOrderEnum.ASCENDING;
	}

}