package com.l.bookCity.bean;

public class Packagebook {

	private int packageBookId;
	private String packageBookName;
	private String packageDescribe;
	
	public Packagebook() {
	}
	
	public Packagebook(int packageBookId, String packageBookName, String packageDescribe) {
		super();
		this.packageBookId = packageBookId;
		this.packageBookName = packageBookName;
		this.packageDescribe = packageDescribe;
	}
	@Override
	public String toString() {
		return "Packagebook [packageBookId=" + packageBookId + ", packageBookName=" + packageBookName
				+ ", packageDescribe=" + packageDescribe + "]";
	}
	public int getPackageBookId() {
		return packageBookId;
	}
	public void setPackageBookId(int packageBookId) {
		this.packageBookId = packageBookId;
	}
	public String getPackageBookName() {
		return packageBookName;
	}
	public void setPackageBookName(String packageBookName) {
		this.packageBookName = packageBookName;
	}
	public String getPackageDescribe() {
		return packageDescribe;
	}
	public void setPackageDescribe(String packageDescribe) {
		this.packageDescribe = packageDescribe;
	}
	
	
	
	
}
