package com.l.bookCity.util;

import org.apache.lucene.document.Document;
import org.apache.lucene.document.Field;
import org.apache.lucene.document.NumericField;

import com.l.bookCity.bean.Book;
import com.l.bookCity.bean.GoodsInfo;
import com.l.bookCity.bean.Index;
import com.l.bookCity.bean.IndexField;

public class MyDocumentUtil<T> {
	
	
	public static Document field2Doc(IndexField fields) {
		Document doc = new Document();
		//存储不索引
		doc.add(new NumericField("id",Field.Store.YES,false).setIntValue(fields.getId()));
		//存储，不索引，不分词，但是luck中可以看见，只是未分词
		doc.add(new Field("picPath",fields.getPicPath(),Field.Store.YES,Field.Index.NOT_ANALYZED_NO_NORMS));
		doc.add(new Field("title",fields.getGoodTitle(),Field.Store.YES,Field.Index.ANALYZED));
		//存储不索引
		doc.add(new NumericField("price",Field.Store.YES,true).setFloatValue(fields.getPrice()));
		//存储不索引
		doc.add(new NumericField("originalCost",Field.Store.YES,true).setFloatValue(fields.getOriginalCost()));
		//存储不索引
		doc.add(new NumericField("clickCount",Field.Store.YES,true).setIntValue(fields.getClickCount()));
		//存储不索引
		doc.add(new NumericField("star_level",Field.Store.YES,false).setIntValue(fields.getStar_level()));
		//存储不索引
		doc.add(new NumericField("commentCount",Field.Store.YES,true).setIntValue(fields.getCommentCount()));
		doc.add(new Field("keywords",fields.getKeywords()==null?"":fields.getKeywords() ,Field.Store.YES,Field.Index.ANALYZED));
		doc.add(new Field("bookAuthor",fields.getBookAuthor(),Field.Store.YES,Field.Index.ANALYZED));
		doc.add(new Field("seriesName",fields.getSeriesName()==null?"":fields.getSeriesName(),Field.Store.YES,Field.Index.ANALYZED));
		doc.add(new Field("publishingHouse",fields.getPublishingHouse(),Field.Store.YES,Field.Index.ANALYZED));
		return doc;
	}

	/**
	 * 应该包括标签的信息
	 * @return
	 */
	public static IndexField GoodsInfo2IndexField(GoodsInfo goods){
		
		IndexField field = new IndexField();
		// field的id即商品的id
		field.setId(goods.getGoodId());
		
		field.setGoodTitle(goods.getGoodTitle());
		
		field.setPicPath(goods.getImgs().get(0).getImgPath());
		
		field.setPrice(goods.getPrice());
		
		field.setOriginalCost(goods.getOriginalCost());
		
		field.setStar_level(goods.getStar_level());
		
		field.setClickCount(goods.getClickCount());
		
		field.setCommentCount(goods.getCommentCount());
		
		field.setKeywords(goods.getKeywords());
		
		if(goods.getIsSeries() == 0){
			
			Book bookInfo = (Book)goods.getBookOrSeries();
			field.setBookAuthor(bookInfo.getBookAuthor());
			field.setSeriesName(bookInfo.getSeriesName());
			field.setPublishingHouse(bookInfo.getPublishingHouse());
		}
		//TODO 套装书籍可能对套装说明有索引
		return field;
	}
	
	public static Index doc2Index(Document doc) {
		Index index = new Index();
		
		index.setGoodTitle(doc.get("title"));
		
		index.setKeywords(doc.get("keywords"));
		
		index.setPicPath(doc.get("picPath"));
		
		index.setPrice(Float.parseFloat(doc.get("price")));
		
		index.setOriginalCost(Float.parseFloat(doc.get("originalCost")));
		
		index.setStar_level(Integer.parseInt(doc.get("star_level")));
		
		index.setCommentCount(Integer.parseInt(doc.get("commentCount")));
		
		index.setClickCount(Integer.parseInt(doc.get("clickCount")));
		
		return index;
	}


}
