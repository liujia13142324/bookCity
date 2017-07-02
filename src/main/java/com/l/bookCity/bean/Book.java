package com.l.bookCity.bean;

import java.util.Date;

public class Book {

	// alt+shift+a选择删除快捷，适合删除从数据库拿来的东西

	private int bookId;
	private String bookName;
	//书的作者可能有多个
	private String bookAuthor;
	private Date publishDate;
	private int publishCount;
	private String publishingHouse;
	private Date printTime;
	private int printCount;
	private String ISBN;
	private String seriesName;
	private int bookSize;
	private int wordCount;
	
	public Book() {
	}
	public Book(int bookId, String bookName, String bookAuthor, Date publishDate, int publishCount,
			String publishingHouse, Date printTime, int printCount, String iSBN, String seriesName, int bookSize,
			int wordCount) {
		super();
		this.bookId = bookId;
		this.bookName = bookName;
		this.bookAuthor = bookAuthor;
		this.publishDate = publishDate;
		this.publishCount = publishCount;
		this.publishingHouse = publishingHouse;
		this.printTime = printTime;
		this.printCount = printCount;
		ISBN = iSBN;
		this.seriesName = seriesName;
		this.bookSize = bookSize;
		this.wordCount = wordCount;
	}
	@Override
	public String toString() {
		return "Book [bookId=" + bookId + ", bookName=" + bookName + ", bookAuthor=" + bookAuthor + ", publishDate="
				+ publishDate + ", publishCount=" + publishCount + ", publishingHouse=" + publishingHouse
				+ ", printTime=" + printTime + ", printCount=" + printCount + ", ISBN=" + ISBN + ", seriesName="
				+ seriesName + ", bookSize=" + bookSize + ", wordCount=" + wordCount + "]";
	}
	public int getBookId() {
		
		return bookId;
	}
	public void setBookId(int bookId) {
		this.bookId = bookId;
	}
	public String getBookName() {
		return bookName;
	}
	public void setBookName(String bookName) {
		this.bookName = bookName;
	}
	public String getBookAuthor() {
		return bookAuthor;
	}
	public void setBookAuthor(String bookAuthor) {
		this.bookAuthor = bookAuthor;
	}
	public Date getPublishDate() {
		return publishDate;
	}
	public void setPublishDate(Date publishDate) {
		this.publishDate = publishDate;
	}
	public int getPublishCount() {
		return publishCount;
	}
	public void setPublishCount(int publishCount) {
		this.publishCount = publishCount;
	}
	public String getPublishingHouse() {
		return publishingHouse;
	}
	public void setPublishingHouse(String publishingHouse) {
		this.publishingHouse = publishingHouse;
	}
	public Date getPrintTime() {
		return printTime;
	}
	public void setPrintTime(Date printTime) {
		this.printTime = printTime;
	}
	public int getPrintCount() {
		return printCount;
	}
	public void setPrintCount(int printCount) {
		this.printCount = printCount;
	}
	public String getISBN() {
		return ISBN;
	}
	public void setISBN(String iSBN) {
		ISBN = iSBN;
	}
	public String getSeriesName() {
		return seriesName;
	}
	public void setSeriesName(String seriesName) {
		this.seriesName = seriesName;
	}
	public int getBookSize() {
		return bookSize;
	}
	public void setBookSize(int bookSize) {
		this.bookSize = bookSize;
	}
	public int getWordCount() {
		return wordCount;
	}
	public void setWordCount(int wordCount) {
		this.wordCount = wordCount;
	}
	
	
	

}
