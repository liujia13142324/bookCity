package com.l.bookCity.web.handler;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.logging.log4j.LogManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.l.bookCity.bean.Admin;
import com.l.bookCity.bean.Emp;
import com.l.bookCity.bean.GoodsInfo;
import com.l.bookCity.bean.PaginationBean;
import com.l.bookCity.service.AdminService;
import com.l.bookCity.util.PrintUtil;

@Controller
@RequestMapping("/admin")
public class AdminHandler {
	
	@Autowired
	private AdminService adminService;
	
	@RequestMapping("/login")
	@ResponseBody
	public boolean login(@ModelAttribute(binding=true)Admin admin , HttpSession session){
	
		LogManager.getLogger().debug(PrintUtil.printFormat(admin+"请求登陆后台...."));
		
		admin = adminService.login(admin);
		
		if(admin != null){
			LogManager.getLogger().debug(PrintUtil.printFormat(admin.getAdminName()+"登陆成功！..."));
			session.setAttribute("admin", admin);
			return true;
		}
		return false;
	}
	@RequestMapping("/getAdminList")
	@ResponseBody
	/**
	 * 
	 * @param page 当前第几页
	 * @param rows 页面大小
	 * @return
	 */
	public PaginationBean<Admin> findAllAdminInfo(@RequestParam(required=true)int page ,  @RequestParam(required=true)int rows){
		
		return adminService.FindAll(page , rows);
	}
	@RequestMapping("/checkModifyAdminName")
	@ResponseBody
	public boolean checkAdminName(@RequestParam(required=true)String adminName ,@RequestParam(required=true) String oldName ){
		System.out.println("checkAdminName(String adminName , String oldName )");
		if(oldName.equals(adminName)){
			return true;
		}
		return adminService.checkAdminNameExist(adminName);
	}
	
	
	@RequestMapping("/checkAdminName")
	@ResponseBody
	public boolean checkAdminName(@RequestParam(required=true)String adminName ){
		return adminService.checkAdminNameExist(adminName);
	}
	
	/**
	 * 这种没有参数的，最好传输的数据是进行加密的，在前部设置解密算法，可以更安全一点
	 * @return
	 */
	@RequestMapping("/findEmp")
	@ResponseBody
	public List<Emp> findAllEmp(){
		LogManager.getLogger().debug(PrintUtil.printFormat("查询所有的员工基本信息.."));
		List<Emp> emps = adminService.findAllEmp();
		return emps;
	}
	@RequestMapping("/addAdmin")
	@ResponseBody
	public boolean addAdmin(@ModelAttribute(binding=true)Admin admin){
		LogManager.getLogger().debug(PrintUtil.printFormat("请求添加管理员:"+admin));
		
		try {
			return adminService.addAdmin(admin);
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		
		
	}
	
	@RequestMapping("/stopAdmin")
	@ResponseBody
	public boolean stopAdmin(@RequestParam(required=true)String adminName){
		LogManager.getLogger().debug(PrintUtil.printFormat("请求停用管理员:"+adminName));
		try {
			
			return adminService.stopAdmin(adminName);
			
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
	
	@RequestMapping("/modifyAdmin")
	@ResponseBody
	public boolean modifyAdmin(@ModelAttribute(binding=true)Admin admin ,@RequestParam(required=true)String oldName){
		LogManager.getLogger().debug(PrintUtil.printFormat("请求修改管理员:"+oldName+"。修改目标为："+admin));
		
		try {
			return adminService.modifyAdmin(admin,oldName);
			
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		
	}
	
	@RequestMapping("/getGoodsList")
	@ResponseBody
	public PaginationBean<GoodsInfo> listGoods(int page, int rows){
		LogManager.getLogger().debug(PrintUtil.printFormat("Web 管理员请求查看所有商品信息..."));
		return adminService.listGoods(page, rows);
	}
	
}
