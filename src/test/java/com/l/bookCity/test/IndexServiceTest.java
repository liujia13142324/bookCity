package com.l.bookCity.test;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.l.bookCity.bean.GoodsInfo;
import com.l.bookCity.bean.PaginationBean;
import com.l.bookCity.service.IndexService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring.xml")
public class IndexServiceTest {

	@Autowired
	IndexService indexService;

	@Test
	public void testFindNavigation() {
		System.out.println(indexService.getNavigation());
	}

	@Test
	public void testFindServices() {
		System.out.println(indexService.getNavigation());
	}

	@Test
	public void testFindCommend() {
		System.out.println(indexService.getRecommend());
	}

}
