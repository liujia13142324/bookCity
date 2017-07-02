package com.l.bookCity.bean;

public class Index {
	private String goodTitle;
	private float  price;
	private String picPath;
	private int commentCount;
	private int  clickCount ;
	private String keywords;
	private int star_level;
	private float originalCost;

	public Index() {
	}

	
	public Index(String goodTitle, float price, String picPath, int commentCount, int clickCount, String keywords,
			int star_level, float originalCost) {
		super();
		this.goodTitle = goodTitle;
		this.price = price;
		this.picPath = picPath;
		this.commentCount = commentCount;
		this.clickCount = clickCount;
		this.keywords = keywords;
		this.star_level = star_level;
		this.originalCost = originalCost;
	}


	@Override
	public String toString() {
		return "Index [goodTitle=" + goodTitle + ", price=" + price + ", picPath=" + picPath + ", commentCount="
				+ commentCount + ", clickCount=" + clickCount + ", keywords=" + keywords + ", star_level=" + star_level
				+ ", originalCost=" + originalCost + "]";
	}


	public float getOriginalCost() {
		return originalCost;
	}

	public void setOriginalCost(float originalCost) {
		this.originalCost = originalCost;
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

	public String getPicPath() {
		return picPath;
	}

	public void setPicPath(String picPath) {
		this.picPath = picPath;
	}

	public int getCommentCount() {
		return commentCount;
	}

	public void setCommentCount(int commentCount) {
		this.commentCount = commentCount;
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

	public int getStar_level() {
		return star_level;
	}

	public void setStar_level(int star_level) {
		this.star_level = star_level;
	}

	
}
