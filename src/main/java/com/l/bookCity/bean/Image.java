package com.l.bookCity.bean;

public class Image {

	private int imgId ;
	private String imgPath;
	
	public Image() {
	}

	public Image(int imgId, String imgPath) {
		super();
		this.imgId = imgId;
		this.imgPath = imgPath;
	}

	@Override
	public String toString() {
		return "Image [imgId=" + imgId + ", imgPath=" + imgPath + "]";
	}

	public int getImgId() {
		return imgId;
	}

	public void setImgId(int imgId) {
		this.imgId = imgId;
	}

	public String getImgPath() {
		return imgPath;
	}

	public void setImgPath(String imgPath) {
		this.imgPath = imgPath;
	}

	
	
}
