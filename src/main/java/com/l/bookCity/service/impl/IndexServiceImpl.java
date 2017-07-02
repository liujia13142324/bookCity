package com.l.bookCity.service.impl;

import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.l.bookCity.bean.GoodsInfo;
import com.l.bookCity.bean.Navigation;
import com.l.bookCity.bean.PaginationBean;
import com.l.bookCity.context.BookCityContext;
import com.l.bookCity.mapper.IndexMapper;
import com.l.bookCity.service.IndexService;

			
@Service("indexService")
public class IndexServiceImpl implements IndexService {

	@Autowired
	IndexMapper indexMapper;
	
	@Override
	public List<Navigation> getNavigation() {
		return indexMapper.selectNavigation();
	}

	@Override
	public List<GoodsInfo> getRecommend() {
		return indexMapper.selectGoodsOfRecommend();
	}

}
