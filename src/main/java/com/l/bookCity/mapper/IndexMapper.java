package com.l.bookCity.mapper;

import java.util.List;

import com.l.bookCity.bean.GoodsInfo;
import com.l.bookCity.bean.Navigation;
import com.l.bookCity.bean.PaginationBean;

public interface IndexMapper {

	public List<Navigation> selectNavigation();

	public List<GoodsInfo> selectGoodsOfRecommend();

	/*public PaginationBean<GoodsInfo> selectGoodsOfSearchResult(PaginationBean<GoodsInfo> page);*/
}
