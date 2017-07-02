package com.l.bookCity.service.impl;

import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.l.bookCity.bean.Admin;
import com.l.bookCity.bean.Emp;
import com.l.bookCity.bean.GoodsInfo;
import com.l.bookCity.bean.PaginationBean;
import com.l.bookCity.mapper.AdminMapper;
import com.l.bookCity.service.AdminService;
import com.l.bookCity.util.Encrypt;

@Service
public class AdminServiceImpl implements AdminService {

	@Autowired
	private AdminMapper adminMapper;

	@Override
	public Admin login(Admin admin) {
		admin.setAdminPassword(Encrypt.md5AndSha(admin.getAdminPassword()));
		return adminMapper.selectAdmin(admin);
	}

	@Override
	public PaginationBean<Admin> FindAll(int page, int pageSize) {

		PaginationBean<Admin> pageObj = new PaginationBean<Admin>();

		pageObj.setPage(page);

		pageObj.setPageSize(pageSize);

		pageObj = adminMapper.selectAllByPage(pageObj);

		return pageObj;
	}

	@Override
	public boolean checkAdminNameExist(String adminName ) {
		
		return !adminMapper.selectAdminIsExist(adminName);
		
	}
	

	@Override
	public List<Emp> findAllEmp() {

		return adminMapper.selectAllEmps();
	}

	/**
	 * 事务处理，如果捕捉了异常，就不会在回滚处理 ， 所以事务处理需要在上级捕获异常
	 */
	@Transactional
	public boolean addAdmin(Admin admin) {

		admin.setAdminPassword(Encrypt.md5AndSha(admin.getAdminPassword()));
		
		if (admin.getEmployee().getEname() != null) {
			adminMapper.insertEmp(admin.getEmployee());
		}
		adminMapper.insertAdminWithExitEmp(admin);

		return true;
	}

	@Override
	public boolean stopAdmin(String adminName) {
		return adminMapper.stopAdmin(adminName)>0;
	}

	@Override
	public boolean modifyAdmin(Admin admin,String oldName) {
		if(admin.getAdminPassword()!=null){
			admin.setAdminPassword(Encrypt.md5AndSha(admin.getAdminPassword()));
		}
		
		return adminMapper.updateAdmin(admin,oldName)>0;
	}
	
	public PaginationBean<GoodsInfo> listGoods(int page , int rows){
		PaginationBean<GoodsInfo> pageBean = new PaginationBean<GoodsInfo>();
		pageBean.setPage(page);
		pageBean.setPageSize(rows);
		pageBean = adminMapper.selectGoodsOfSearchResult(pageBean);
		return pageBean;
	}
	

}
