package com.l.bookCity.bean;

import java.util.List;

public class GoodsInfo {

	private int goodId;
	private String goodTitle;
	private Object bookOrSeries; // Book或者Packagebook对象
	private float price;
	private float eprice;
	private float originalCost;
	private int star_level; // (0~10)
	
	private List<Image> imgs;
	
	private int isSeries;
	private String editorCommend;
	private String contentDescribe; // 内容简介
	private String authorDescribe;
	private String conent; // 目录
	private String preface;
	private int clickCount;
	private String keywords;
	private int commentCount;

	
	@Override
	public String toString() {
		return "GoodsInfo [goodId=" + goodId + ", goodTitle=" + goodTitle + ", bookOrSeries=" + bookOrSeries
				+ ", price=" + price + ", eprice=" + eprice + ", originalCost=" + originalCost + ", star_level="
				+ star_level + ", imgs=" + imgs + ", isSeries=" + isSeries + ", editorCommend=" + editorCommend
				+ ", contentDescribe=" + contentDescribe + ", authorDescribe=" + authorDescribe + ", conent=" + conent
				+ ", preface=" + preface + ", clickCount=" + clickCount + ", keywords=" + keywords + ", commentCount="
				+ commentCount + "]";
	}


	public GoodsInfo() {
	}

	
	public GoodsInfo(int goodId, String goodTitle, Object bookOrSeries, float price, float eprice, float originalCost,
			int star_level, List<Image> imgs, int isSeries, String editorCommend, String contentDescribe,
			String authorDescribe, String conent, String preface, int clickCount, String keywords, int commentCount) {
		super();
		this.goodId = goodId;
		this.goodTitle = goodTitle;
		this.bookOrSeries = bookOrSeries;
		this.price = price;
		this.eprice = eprice;
		this.originalCost = originalCost;
		this.star_level = star_level;
		this.imgs = imgs;
		this.isSeries = isSeries;
		this.editorCommend = editorCommend;
		this.contentDescribe = contentDescribe;
		this.authorDescribe = authorDescribe;
		this.conent = conent;
		this.preface = preface;
		this.clickCount = clickCount;
		this.keywords = keywords;
		this.commentCount = commentCount;
	}


	public int getGoodId() {
		return goodId;
	}

	public void setGoodId(int goodId) {
		this.goodId = goodId;
	}

	public String getGoodTitle() {
		return goodTitle;
	}

	public void setGoodTitle(String goodTitle) {
		this.goodTitle = goodTitle;
	}

	public Object getBookOrSeries() {
		return bookOrSeries;
	}

	public void setBookOrSeries(Object bookOrSeries) {
		this.bookOrSeries = bookOrSeries;
	}

	public float getPrice() {
		return price;
	}

	public void setPrice(float price) {
		this.price = price;
	}

	public float getEprice() {
		return eprice;
	}

	public void setEprice(float eprice) {
		this.eprice = eprice;
	}

	public int getStar_level() {
		return star_level;
	}

	public void setStar_level(int star_level) {
		this.star_level = star_level;
	}



	public List<Image> getImgs() {
		return imgs;
	}


	public void setImgs(List<Image> imgs) {
		this.imgs = imgs;
	}


	public int getIsSeries() {
		return isSeries;
	}

	public void setIsSeries(int isSeries) {
		this.isSeries = isSeries;
	}

	public String getEditorCommend() {
		return editorCommend;
	}

	public void setEditorCommend(String editorCommend) {
		this.editorCommend = editorCommend;
	}

	public String getContentDescribe() {
		return contentDescribe;
	}

	public void setContentDescribe(String contentDescribe) {
		this.contentDescribe = contentDescribe;
	}

	public String getAuthorDescribe() {
		return authorDescribe;
	}

	public void setAuthorDescribe(String authorDescribe) {
		this.authorDescribe = authorDescribe;
	}

	public String getConent() {
		return conent;
	}

	public void setConent(String conent) {
		this.conent = conent;
	}

	public String getPreface() {
		return preface;
	}

	public void setPreface(String preface) {
		this.preface = preface;
	}

	public int getClickCount() {
		return clickCount;
	}

	public void setClickCount(int clickCount) {
		this.clickCount = clickCount;
	}

	public float getOriginalCost() {
		return originalCost;
	}

	public void setOriginalCost(float originalCost) {
		this.originalCost = originalCost;
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
