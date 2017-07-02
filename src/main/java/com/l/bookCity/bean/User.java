package com.l.bookCity.bean;

import java.util.Date;

public class User {
	private int uid ;
    private String uname ;
    private String headimg ;
    private  Date udate ;
    private int urank ;
    private String uemail ;
    private String uphone ;
    
    @Override
	public String toString() {
		return "User [uid=" + uid + ", uname=" + uname + ", headimg=" + headimg + ", udate=" + udate + ", urank="
				+ urank + ", uemail=" + uemail + ", uphone=" + uphone + "]";
	}

	public User() {
		// TODO Auto-generated constructor stub
	}
    
	public User(int uid, String uname, String headimg, Date udate, int urank, String uemail, String uphone) {
		super();
		this.uid = uid;
		this.uname = uname;
		this.headimg = headimg;
		this.udate = udate;
		this.urank = urank;
		this.uemail = uemail;
		this.uphone = uphone;
	}
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getHeadimg() {
		return headimg;
	}
	public void setHeadimg(String headimg) {
		this.headimg = headimg;
	}
	public Date getUdate() {
		return udate;
	}
	public void setUdate(Date udate) {
		this.udate = udate;
	}
	public int getUrank() {
		return urank;
	}
	public void setUrank(int urank) {
		this.urank = urank;
	}
	public String getUemail() {
		return uemail;
	}
	public void setUemail(String uemail) {
		this.uemail = uemail;
	}
	public String getUphone() {
		return uphone;
	}
	public void setUphone(String uphone) {
		this.uphone = uphone;
	}
    
    
}
