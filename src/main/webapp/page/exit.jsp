<%@page import="com.l.bookCity.context.BookCityContext"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
	session.removeAttribute("admin");

	response.sendRedirect("/"+BookCityContext.PROJECTNAME+"/index.jsp");
%>