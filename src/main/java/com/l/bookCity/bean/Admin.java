package com.l.bookCity.bean;

public class Admin {

	private String adminName ;
	private String adminPassword ;
	private int adminAbility ;
	private Employee employee;
	
	public Admin() {
	}

	
	public Admin(String adminName, String adminPassword, int adminAbility, Employee employee) {
		super();
		this.adminName = adminName;
		this.adminPassword = adminPassword;
		this.adminAbility = adminAbility;
		this.employee = employee;
	}




	@Override
	public String toString() {
		return "Admin [adminName=" + adminName + ", adminPassword=" + adminPassword + ", adminAbility=" + adminAbility
				+ ", employee=" + employee + "]";
	}




	public Employee getEmployee() {
		return employee;
	}




	public void setEmployee(Employee employee) {
		this.employee = employee;
	}




	public String getAdminName() {
		return adminName;
	}
	public void setAdminName(String adminName) {
		this.adminName = adminName;
	}
	public String getAdminPassword() {
		return adminPassword;
	}
	public void setAdminPassword(String adminPassword) {
		this.adminPassword = adminPassword;
	}
	public int getAdminAbility() {
		return adminAbility;
	}
	public void setAdminAbility(int adminAbility) {
		this.adminAbility = adminAbility;
	}
	
	
	
}
