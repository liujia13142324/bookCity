package com.l.bookCity.service;

import java.util.List;

import com.l.bookCity.bean.GoodsInfo;
import com.l.bookCity.bean.Navigation;
import com.l.bookCity.bean.PaginationBean;

public interface IndexService {
	List<Navigation> getNavigation();

	List<GoodsInfo> getRecommend();

}
