package com.l.bookCity.test;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.l.bookCity.bean.Admin;
import com.l.bookCity.bean.Employee;
import com.l.bookCity.context.BookCityContext;
import com.l.bookCity.mapper.AdminMapper;
import com.l.bookCity.service.AdminService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring.xml")
public class AdminTest {

	@Autowired
	private AdminService adminService;
	
	@Autowired
	private AdminMapper adminMapper;
	@Test
	public void testLogin(){
		Admin admin  = new Admin();
		admin.setAdminName("admin");
		admin.setAdminPassword("a");
		admin=adminService.login(admin);
		System.out.println(admin);
	}
	
	
	
	@Test
	public void testFindAdminByPage(){
		System.out.println(adminService.FindAll(1,20));
	}
	
	@Test
	public void testCheck(){
		System.out.println(adminMapper.selectAdminIsExist("1"));
	}

	@Test
	public void testFindEmps(){
		System.out.println(adminMapper.selectAllEmps());
	}
	
	
	@Test
	public void testInsertAdmin(){
		Admin admin = new Admin();
		admin.setAdminName("ss");
		admin.setAdminPassword("asdasdasdas");
		admin.setAdminAbility(BookCityContext.BOOKSYSTEM_ADMIN);
		
		Employee emp  = new Employee();
		emp.setEname("bbbbb");
		emp.setEphone("1234278as88");
		emp.setEposition(BookCityContext.EMPDELIVERY);
		
		admin.setEmployee(emp);
		
		
		adminService.addAdmin(admin);
	}
	
	@Test
	public void testupdateAdmin(){
		Admin admin = new Admin();
		admin.setAdminName("111");
		admin.setAdminAbility(BookCityContext.BOOKSYSTEM_ADMIN);
		
		adminMapper.updateAdmin(admin, "test");
	}
	
	@Test
	public void testustopAdmin(){
		adminService.stopAdmin("qqqqq");
	}
	
	@Test
	public void testGoodsList(){
		System.out.println(adminService.listGoods(1, 10));
	}
	
	
}
