package com.l.bookCity.service;

import java.util.List;

import com.l.bookCity.bean.Admin;
import com.l.bookCity.bean.Emp;
import com.l.bookCity.bean.GoodsInfo;
import com.l.bookCity.bean.PaginationBean;

public interface AdminService {

	public Admin login (Admin admin);
	
	public PaginationBean<Admin> FindAll(int page , int pageSize);

	public boolean checkAdminNameExist(String adminName);

	public List<Emp> findAllEmp();

	public boolean addAdmin(Admin admin);

	public boolean stopAdmin(String adminName);

	public boolean modifyAdmin(Admin admin, String oldName);

	public PaginationBean<GoodsInfo> listGoods(int page , int rows );
	
}
