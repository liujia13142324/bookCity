package com.l.bookCity.bean;

/**
 * 要添加的索引域对象
 */
public class IndexField {

	private int id ;  // 索引的商品对象的ID
	private String picPath; //传给页面Index的
	private int star_level; //传给页面Index的
	private String goodTitle;
	private float  price;
	private float originalCost;
	private int  clickCount ;
	private String keywords;
	private int commentCount;  //价格、点击量和评论量用来做只能排序用
	
	//书中该加的搜索索引
	private String bookAuthor;
	private String seriesName;
	private String publishingHouse;

	public IndexField() {
	}

	public IndexField(int id, String picPath, int star_level, String goodTitle, float price, int clickCount,
			String keywords, int commentCount, String bookAuthor, String seriesName, String publishingHouse) {
		super();
		this.id = id;
		this.picPath = picPath;
		this.star_level = star_level;
		this.goodTitle = goodTitle;
		this.price = price;
		this.clickCount = clickCount;
		this.keywords = keywords;
		this.commentCount = commentCount;
		this.bookAuthor = bookAuthor;
		this.seriesName = seriesName;
		this.publishingHouse = publishingHouse;
	}
	
	
	@Override
	public String toString() {
		return "IndexField [id=" + id + ", picPath=" + picPath + ", star_level=" + star_level + ", goodTitle="
				+ goodTitle + ", price=" + price + ", clickCount=" + clickCount + ", keywords=" + keywords
				+ ", commentCount=" + commentCount + ", bookAuthor=" + bookAuthor + ", seriesName=" + seriesName
				+ ", publishingHouse=" + publishingHouse + "]";
	}

	
	public float getOriginalCost() {
		return originalCost;
	}

	public void setOriginalCost(float originalCost) {
		this.originalCost = originalCost;
	}
	
	public int getStar_level() {
		return star_level;
	}


	public void setStar_level(int star_level) {
		this.star_level = star_level;
	}


	public String getPicPath() {
		return picPath;
	}


	public void setPicPath(String picPath) {
		this.picPath = picPath;
	}


	public String getBookAuthor() {
		return bookAuthor;
	}


	public void setBookAuthor(String bookAuthor) {
		this.bookAuthor = bookAuthor;
	}


	public String getSeriesName() {
		return seriesName;
	}


	public void setSeriesName(String seriesName) {
		this.seriesName = seriesName;
	}


	public String getPublishingHouse() {
		return publishingHouse;
	}


	public void setPublishingHouse(String publishingHouse) {
		this.publishingHouse = publishingHouse;
	}


	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getGoodTitle() {
		return goodTitle;
	}
	public void setGoodTitle(String goodTitle) {
		this.goodTitle = goodTitle;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	public int getClickCount() {
		return clickCount;
	}
	public void setClickCount(int clickCount) {
		this.clickCount = clickCount;
	}
	public String getKeywords() {
		return keywords;
	}
	public void setKeywords(String keywords) {
		this.keywords = keywords;
	}
	public int getCommentCount() {
		return commentCount;
	}
	public void setCommentCount(int commentCount) {
		this.commentCount = commentCount;
	}
	
	
	
}
