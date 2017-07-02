package com.l.bookCity.web.handler;



import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.l.bookCity.bean.GoodsInfo;
import com.l.bookCity.bean.Index;
import com.l.bookCity.bean.Navigation;
import com.l.bookCity.bean.PaginationBean;
import com.l.bookCity.service.IndexService;
import com.l.bookCity.service.LuceneIndexService;

@Controller
@RequestMapping("/index")

public class IndexHandle {

	@Autowired				
	LuceneIndexService luceneIndexService ;
	@Autowired
	IndexService indexService ;
	
	/**
	 * 显示首页的导航
	 * @return
	 */
	@RequestMapping("/navigation")
	@ResponseBody
	@JsonIgnore  //当传入集合对象的时候，没有get set 方法 ，这是一种办法
	public List<Navigation> findAllNavigation(){
		
		LogManager.getLogger().debug("请求主页navigation...");
		
		List<Navigation> navigations = indexService.getNavigation();
		
		return navigations;
	}
	
	/**
	 * 显示首页推荐的模块 ， 共有 6*3=18 个商品
	 * @return
	 */
	@RequestMapping("/recommend")
	@ResponseBody
	@JsonIgnore  //当传入集合对象的时候，没有get set 方法 ，这是一种办法
	public List<GoodsInfo> findAllRecommend(){
		
		LogManager.getLogger().debug("请求主页recommend...");
		
		List<GoodsInfo> goodsInfo = indexService.getRecommend();
		
		return goodsInfo;
	}
	
	/**
	 * 搜索商品+商品分页
	 * @param page 当前页
	 * @return
	 */
	@RequestMapping("/search")
	@ResponseBody
	/*@JsonIgnore  //当传入集合对象的时候，没有get set 方法 ，这是一种办法
*/	public PaginationBean<Index>  searchGoods(String page , String condition){
		
		LogManager.getLogger().debug("请求search..."+"参数page="+page+"   condition:"+condition);
		
		PaginationBean<Index> goodsInfo = luceneIndexService.findByIndex(page, condition);
		
		return goodsInfo;
	}
	
	
}
