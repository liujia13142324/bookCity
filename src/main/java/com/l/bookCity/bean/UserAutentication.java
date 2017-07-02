package com.l.bookCity.bean;

public class UserAutentication {
	private int authenId ;
	private User user;
	private String authenType;
	private String authenIdentify;
	private String authenCheck;
	private int  authenStatus;
	
	@Override
	public String toString() {
		return "UserAutentication [authenId=" + authenId + ", user=" + user + ", authenType=" + authenType
				+ ", authenIdentify=" + authenIdentify + ", authenCheck=" + authenCheck + ", authenStatus="
				+ authenStatus + "]";
	}

	public UserAutentication() {
		// TODO Auto-generated constructor stub
	}
	
	public UserAutentication(int authenId, User user, String authenType, String authenIdentify, String authenCheck,
			int authenStatus) {
		super();
		this.authenId = authenId;
		this.user = user;
		this.authenType = authenType;
		this.authenIdentify = authenIdentify;
		this.authenCheck = authenCheck;
		this.authenStatus = authenStatus;
	}



	public int getAuthenId() {
		return authenId;
	}
	public void setAuthenId(int authenId) {
		this.authenId = authenId;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public String getAuthenType() {
		return authenType;
	}
	public void setAuthenType(String authenType) {
		this.authenType = authenType;
	}
	public String getAuthenIdentify() {
		return authenIdentify;
	}
	public void setAuthenIdentify(String authenIdentify) {
		this.authenIdentify = authenIdentify;
	}
	public String getAuthenCheck() {
		return authenCheck;
	}
	public void setAuthenCheck(String authenCheck) {
		this.authenCheck = authenCheck;
	}
	public int getAuthenStatus() {
		return authenStatus;
	}
	public void setAuthenStatus(int authenStatus) {
		this.authenStatus = authenStatus;
	}
	
}
