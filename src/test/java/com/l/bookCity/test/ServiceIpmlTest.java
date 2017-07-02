package com.l.bookCity.test;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.l.bookCity.service.UserService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring.xml")
public class ServiceIpmlTest {

	@Autowired
	UserService userService;
	@Test
	public void testTransanction(){
		userService.testTranSanction();
	}
}
