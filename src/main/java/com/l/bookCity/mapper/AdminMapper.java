package com.l.bookCity.mapper;

import java.util.List;

import com.l.bookCity.bean.Admin;
import com.l.bookCity.bean.Emp;
import com.l.bookCity.bean.Employee;
import com.l.bookCity.bean.GoodsInfo;
import com.l.bookCity.bean.PaginationBean;

public interface AdminMapper {

	public Admin selectAdmin(Admin admin);

	public PaginationBean<Admin> selectAllByPage(PaginationBean<Admin> pageObje);

	//mybadits 返回是单个参数的话， 只有总记录数为1时候才能正常工作， 总记录数为0的时候返回都是null這时候会有异常
	public boolean selectAdminIsExist(String adminName);

	public List<Emp> selectAllEmps();

	public void insertEmp(Employee employee);

	public void insertAdminWithExitEmp(Admin admin);

	public int stopAdmin(String adminName);

	public int updateAdmin(Admin admin ,String oldName);

	public PaginationBean<GoodsInfo> selectGoodsOfSearchResult(PaginationBean<GoodsInfo> pageBean);
	
}
