package com.l.bookCity.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.l.bookCity.bean.User;
import com.l.bookCity.bean.UserAutentication;
import com.l.bookCity.mapper.UserMapper;
import com.l.bookCity.service.UserService;

@Service("userService")
public class UserServiceImpl implements UserService{

	
	@Autowired
	UserMapper userMapper;
	
	@Transactional
	public void testTranSanction(){
		User user = new User();
		user.setUname("小黑");
		user.setUemail("52343234@qq.com");
		UserAutentication userAutentication = new UserAutentication();
		userAutentication.setAuthenIdentify(user.getUemail());
		userAutentication.setAuthenType("邮箱登陆");
		userAutentication.setAuthenCheck("12345");
		userAutentication.setAuthenStatus(1);
		userAutentication.setUser(user);
		
		userMapper.insertUser (user);
		
		System.out.println(userAutentication.getUser());
		
		userMapper.inserAuthentication(userAutentication);
	}
	
}
