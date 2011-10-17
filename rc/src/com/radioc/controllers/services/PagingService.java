/**
 * 
 */
package com.radioc.controllers.services;

import com.radioc.beans.PaginatedListImpl;

/**
 * @author Geps
 *
 */
public interface PagingService<T> {

	PaginatedListImpl<T> paginatedList(PaginatedListImpl<T> page);
}
