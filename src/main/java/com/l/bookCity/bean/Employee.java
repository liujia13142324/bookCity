package com.l.bookCity.bean;

public class Employee {

	private int eid;
	private String ename;
	private int eposition;
	private int esalary;
	private int ebonus;
	private String ephone;
	
	public Employee() {
	}
	
	public Employee(int eid, String ename, int eposition, int esalary, int ebonus, String ephone) {
		super();
		this.eid = eid;
		this.ename = ename;
		this.eposition = eposition;
		this.esalary = esalary;
		this.ebonus = ebonus;
		this.ephone = ephone;
	}
	@Override
	public String toString() {
		return "Employee [eid=" + eid + ", ename=" + ename + ", eposition=" + eposition + ", esalary=" + esalary
				+ ", ebonus=" + ebonus + ", ephone=" + ephone + "]";
	}
	public int getEid() {
		return eid;
	}
	public void setEid(int eid) {
		this.eid = eid;
	}
	public String getEname() {
		return ename;
	}
	public void setEname(String ename) {
		this.ename = ename;
	}
	public int getEposition() {
		return eposition;
	}
	public void setEposition(int eposition) {
		this.eposition = eposition;
	}
	public int getEsalary() {
		return esalary;
	}
	public void setEsalary(int esalary) {
		this.esalary = esalary;
	}
	public int getEbonus() {
		return ebonus;
	}
	public void setEbonus(int ebonus) {
		this.ebonus = ebonus;
	}
	public String getEphone() {
		return ephone;
	}
	public void setEphone(String ephone) {
		this.ephone = ephone;
	}
	
	
	
	
}
