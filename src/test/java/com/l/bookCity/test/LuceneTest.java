package com.l.bookCity.test;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.l.bookCity.bean.Index;
import com.l.bookCity.bean.PaginationBean;
import com.l.bookCity.context.LuceneContext;
import com.l.bookCity.mapper.LuceneIndexMapper;
import com.l.bookCity.service.LuceneIndexService;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring.xml")
public class LuceneTest {

	@Autowired
	private LuceneIndexMapper luceneIndexMapper ;
	@Autowired
	private LuceneIndexService luceneIndexService;
	 
	@Test
	public void test1(){
		LuceneContext l = LuceneContext.getInstance();
	}
	
	@Test
	public void testList(){
		System.out.println(luceneIndexMapper.list());
	}
	
	@Test
	public void testConstructorIndex(){
		luceneIndexService.updateReconstructorIndex();
	}
	
	@Test
	public void testSearcheIndex(){
		PaginationBean<Index> result = luceneIndexService.findByIndex("1", "解忧");
		System.out.println(result);
	}
	
}
