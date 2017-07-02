package com.l.bookCity.service.impl;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.lucene.document.Document;
import org.apache.lucene.index.Term;
import org.apache.lucene.queryParser.MultiFieldQueryParser;
import org.apache.lucene.queryParser.ParseException;
import org.apache.lucene.search.IndexSearcher;
import org.apache.lucene.search.NRTManager;
import org.apache.lucene.search.Query;
import org.apache.lucene.search.ScoreDoc;
import org.apache.lucene.search.TopDocs;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.l.bookCity.bean.GoodsInfo;
import com.l.bookCity.bean.Index;
import com.l.bookCity.bean.IndexField;
import com.l.bookCity.bean.PaginationBean;
import com.l.bookCity.context.BookCityContext;
import com.l.bookCity.context.LuceneContext;
import com.l.bookCity.mapper.LuceneIndexMapper;
import com.l.bookCity.service.LuceneIndexService;
import com.l.bookCity.util.MyDocumentUtil;
import com.l.bookCity.util.PrintUtil;


/**
 * 在索引的操作过程中，可能要对数据库做一些持久化操作，教程中是需要一个临时索引表，将内存中没有commit的索引
 * 保存下来（已经修改的、删除的、添加的），以防服务器当机，当重启服务器再吧数据库中的索引给提交了。其中重构索引
 * 是为了防止索引和数据库信息不一致的问题，即间隔一大段时间完完全全在重新索引一遍数据库
 * 
 * 我觉得，索引是对数据库数据的索引，为什么不直接修改数据库中的数据，然后开启服务器的时候再重构一边索引。
 * 当然，这种方法当数据量特别大的时候，重构索引需要很大的时间开销， 
 * @author Administrator
 *
 */
@Service("luceneIndexService")
public class LuceneIndexServiceImpl implements LuceneIndexService{

	@Autowired
	private LuceneIndexMapper luceneIndexMapper ;  //对数据库做索引操作
	private static LuceneContext luceneContext = LuceneContext.getInstance();
	private static NRTManager nrtMgr  = luceneContext.getNRTManager();
	
	@Override
	public void addIndex(IndexField fields) {
		try {
			nrtMgr.addDocument(MyDocumentUtil.field2Doc(fields));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}



	@Override
	public void deleteIndex(String id) {
		try {
			nrtMgr.deleteDocuments(new Term("id",id));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void updateIndex(IndexField fields) {
		try {
			Document doc = MyDocumentUtil.field2Doc(fields);
			nrtMgr.updateDocument(new Term("id",String.valueOf(fields.getId())),doc);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	
	@Override
	public PaginationBean<Index> findByIndex( String page , String condition) {
		
		PaginationBean<Index> pageBean = new PaginationBean<Index>();
		pageBean.setPageSize(BookCityContext.SEARCHINGINDEX_PAGESIZE);
		
		try{
			if(page!=null){
				pageBean.setPage(Integer.parseInt(page));
			}
		}catch(NumberFormatException e){
			LogManager.getLogger().debug("页面传入Page参数有错，传回第一页数据...");
		}
		
		//查询条件为空，默认查询
		if(condition == null  || condition.trim().equals("")||condition.trim().equals("undefined")){
			condition="理想国";
		}
		
		String searchField[] = new String[]{"title","keywords","bookAuthor","seriesName","publishingHouse"};
		
		IndexSearcher searcher = null;
		
		try {
			 searcher = LuceneContext.getInstance().getSearcher();
			
			MultiFieldQueryParser parser = new MultiFieldQueryParser(luceneContext.getVersion(), searchField, luceneContext.getAnalyzer());
			
			Query query = parser.parse(condition);
			
			//获取上一页的最后一个元素
			TopDocs tds = searcher.searchAfter(getLastDoc(pageBean,searcher,query), query, pageBean.getPageSize());
			List<Index> list = new ArrayList<Index>();
			for(ScoreDoc sd:tds.scoreDocs){
				Document doc = searcher.doc(sd.doc);
				list.add(MyDocumentUtil.doc2Index(doc));
			}
			pageBean.setRows(list);
			//看一下优先级 。。。
			int allPage = (tds.totalHits/pageBean.getPageSize())+(tds.totalHits%pageBean.getPageSize()>0?1:0);
			pageBean.setAllPage(allPage);
			pageBean.setTotal(tds.totalHits);
		
		} catch (ParseException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} finally{
			luceneContext.releaseSearcher(searcher);
		}
		
		return pageBean;
	}

	private ScoreDoc getLastDoc(PaginationBean<Index> page , IndexSearcher searcher , Query query){
		try {
			int offset = (page.getPage()-1) * page.getPageSize() ;
			if(offset <= 0 ){
				return null;
			}
			TopDocs tds = searcher.search(query, offset);
			
			return tds.scoreDocs[offset-1];
		} catch (IOException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	@Override
	public void updateCommitIndex() {
		luceneContext.commitIndex();
	}

	@Override
	public void updateReconstructorIndex() {
		LogManager.getLogger().debug(PrintUtil.printFormat("对数据库索引进行重构..."));
		try {
			nrtMgr.deleteAll();
			List<GoodsInfo> goods = luceneIndexMapper.list();
			indexGoods(goods);
			luceneContext.commitIndex();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}



	private void indexGoods(List<GoodsInfo> goods) {
		for (GoodsInfo goodsInfo : goods) {
			IndexField fields = MyDocumentUtil.GoodsInfo2IndexField(goodsInfo);
			if(fields!=null){
				addIndex(fields);
			}
		}
	}

}
