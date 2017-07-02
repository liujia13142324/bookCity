package com.l.bookCity.web.listener;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

import org.apache.logging.log4j.LogManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import com.l.bookCity.service.LuceneIndexService;
import com.l.bookCity.util.PrintUtil;

/*@WebListener*/
public class LoadIndexListener implements ServletContextListener {

	@Autowired
	private LuceneIndexService luceneIndexService;
	
    /**
     * Default constructor. 
     */
    public LoadIndexListener() {
    	LogManager.getLogger().debug(PrintUtil.printFormat("LoadIndexListener创建"));
    }

	/**
     * @see ServletContextListener#contextDestroyed(ServletContextEvent)
     */
    public void contextDestroyed(ServletContextEvent sce)  { 
    	LogManager.getLogger().debug(PrintUtil.printFormat("LoadIndexListener销毁了"));
    }

	/**
     * @see ServletContextListener#contextInitialized(ServletContextEvent)
     */
    public void contextInitialized(ServletContextEvent sce)  { 
    	//在监听器里面的 springmvc bean得这么取
    	LogManager.getLogger().debug(PrintUtil.printFormat("LoadIndexListener初始化"));
    	WebApplicationContext appctx = WebApplicationContextUtils.getWebApplicationContext(sce.getServletContext());
    	luceneIndexService = (LuceneIndexService) appctx.getBean("luceneIndexService");
    	luceneIndexService.updateReconstructorIndex();
    	
    }
	
}
