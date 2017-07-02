package com.l.bookCity.service;

import com.l.bookCity.bean.Index;
import com.l.bookCity.bean.IndexField;
import com.l.bookCity.bean.PaginationBean;

public interface LuceneIndexService {

	public void addIndex(IndexField fields);
	
	public void deleteIndex(String id);

	public void updateIndex(IndexField fields);
	
	public PaginationBean<Index> findByIndex(String page,String condition);
	
	/**
	 * 提交索引
	 */
	public void updateCommitIndex();
	/**
	 * 索引重构
	 */
	public void updateReconstructorIndex();

}
