package com.l.bookCity.web.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.logging.log4j.LogManager;

import com.l.bookCity.bean.Admin;
import com.l.bookCity.context.BookCityContext;
import com.l.bookCity.util.PrintUtil;

/**
 * Servlet Filter implementation class AdminFilter
 */
@WebFilter("/admin/manager/*")
public class AdminFilter implements Filter {

    public AdminFilter() {
        LogManager.getLogger().debug(PrintUtil.printFormat("admin登陆验证过滤器创建了..."));
    }

	public void destroy() {
		LogManager.getLogger().debug(PrintUtil.printFormat("admin登陆验证过滤器销毁了..."));
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		HttpServletRequest httpRequest = (HttpServletRequest)request;
		HttpServletResponse httpResponse = (HttpServletResponse)response;
		HttpSession session = (httpRequest).getSession();
		if(session.getAttribute("admin") == null){
			session.setAttribute("errorMsg", "管理员未登陆！！！");
			httpResponse.sendRedirect(BookCityContext.WEBROOT+"admin/login.jsp");
		}else {
			if(httpRequest.getRequestURL().toString().contains("superAdmin")){
				Admin admin = (Admin)session.getAttribute("admin");
				if(admin.getAdminAbility()<100){
					session.removeAttribute("admin");
					session.setAttribute("errorMsg", "越权操作，警告一次！！！");
					httpResponse.sendRedirect(BookCityContext.WEBROOT+"admin/login.jsp");
				}
			}
		}
			chain.doFilter(request, response);
	}

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		
	}


}
