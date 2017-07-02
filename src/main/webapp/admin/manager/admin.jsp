<%@page import="com.l.bookCity.bean.Admin"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="/bookCity/"/>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>后台管理</title>
<link rel="stylesheet" type="text/css" href="easyui/themes/icon.css" >
<link  rel="stylesheet" href="easyui/themes/default/easyui.css">
<link  rel="stylesheet" href="css/admin.css">
</head>



<body class="easyui-layout" id="adminBody"> 

	  <div data-options="iconCls:'icon-man'" id="adminInfo">
	   	欢迎 <span style="color:red;">${sessionScope.admin.adminName }</span> 登陆   &nbsp;&nbsp;<a href="javascript:void(0);" onclick="exit()">注销</a>
	  </div>

    <div data-options="region:'west',title:'菜单栏',collapsible:false" style="width:180px">
    	<div id="leftSide" style="width:300px;height:200px;">   
    		<c:if test="${sessionScope.admin.adminAbility >100 }" >
			    <div title="管理员管理" data-options="iconCls:'icon-man'"  >   
			    	<ul class="Menutree">   
			    		 <li><span>添加管理员</span></li> 
			    		 <li><span>查看管理员</span></li> 
			    	</ul>
			    </div>
		    </c:if>
		    <c:if test="${sessionScope.admin.adminAbility == 1 || sessionScope.admin.adminAbility >100 }">
			     <div title="书架管理" data-options="iconCls:'icon-man'" >   
			    	<ul class="Menutree">   
			    		 <li><span>书籍上架</span></li>   
			    		 <li><span>查看上架书籍</span></li>   
			    	</ul>
			    </div>
			      
			    <div title="上架书籍标签管理" data-options="iconCls:'icon-man'">   
			    	<ul class="Menutree">   
			    		 <li><span>查看标签</span></li>   
			    		 <li><span>添加标签</span></li>    
			    	</ul>
			    </div>
			    
			     <div title="销售管理" data-options="iconCls:'icon-man'"  >   
			    	<ul class="Menutree">   
			    		 <li><span>查看订单</span></li>   
			    		 <li><span>查看销量信息</span></li>    
			    	</ul>
			    </div> 
			    
			    <div title="仓库管理" data-options="iconCls:'icon-man'"  class="auhority_2 auhority_3">   
			    	<ul class="Menutree">   
			    		 <li><span>查看仓库信息</span></li>   
			    		 <li><span>查看全国仓库</span></li>   
			    		 <li><span>添加仓库</span></li>    
			    	</ul>
			    </div>
		    </c:if>
		    
		    <c:if test="${sessionScope.admin.adminAbility == 2 ||  sessionScope.admin.adminAbility > 100}"> 
		    <div>
			    <div title="书籍管理" data-options="iconCls:'icon-man'"  class="auhority_1 auhority_3">   
			    	<ul class="Menutree">   
			    		 <li><span>查看书籍</span></li>   
			    		 <li><span>添加书籍</span></li>    
			    	</ul>
			    </div>
			    <div title="库存管理" data-options="iconCls:'icon-man'" class="auhority_1 auhority_3">   
			    	<ul class="Menutree">   
			    		
			    		 <li><span>查看仓库进出</span></li>   
			    		 <li><span>进货</span></li>  
			    		 <li><span>发货</span></li>    
			    	</ul>
			    </div>
			    <div title="配送员管理" data-options="iconCls:'icon-man'" class="auhority_1 auhority_3">   
			    	<ul class="Menutree">   
			    		 <li><span>查看所有配送员</span></li>   
			    		 <li><span>添加配送员</span></li>
			    		 <li><span>查询配送订单情况</span></li>   
			    	</ul>
			    </div>
			</div> 
			
   		  </c:if>
   
    </div>  
 </div>
    <div data-options="region:'center'," style="padding:5px;background:#eee;">
    	<div id="contents" >   
		    <div title="主界面" style="padding:20px;display:none;">   
		       	<h1 class="main_h1">欢迎使用小书屋后台管理系统</h1>  
		    </div>   
		</div>
    </div>   
</body>
<script type="text/javascript" src="easyui/jquery.min.js"></script>
<script type="text/javascript" src="easyui/jquery.easyui.min.js"></script>
<script type="text/javascript" src="easyui/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript"  src="js/admin.js"></script>



<script type="text/javascript">

</script>
</html>