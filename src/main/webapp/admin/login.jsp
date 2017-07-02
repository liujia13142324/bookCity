<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>后台登陆界面</title>
<base href="/bookCity/">
<link rel="stylesheet" href="easyui/themes/icon.css">
<link  rel="stylesheet" href="easyui/themes/default/easyui.css">
<link  rel="stylesheet" href="css/login.css">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
</head>
<style scoped="scoped">
		.textbox{
			height:20px;
			margin:0;
			padding:0 2px;
			box-sizing:content-box;
		}
</style>
<body>
	<div id="LoginDiv">
		<form id="loginForm" class="easyui-form" name="loginForm" method="post">
		<table>
			<tr>
				<td colspan="2">
					<label id="errorMsg">${sessionScope.errorMsg}&nbsp;</label>
					<c:remove var="errorMsg"/>
				</td>
			</tr>
			<tr>
				<td>
					账号：
				</td>
				<td>
					<input   class="easyui-validatebox textbox" data-options="
					prompt:'请输入您的账号',
					required:'required',
					 missingMessage:'账号不能为空'" 
					 name="adminName" id="code"/>
				</td>
			</tr>
			<tr>
				<td>
					密码：
				</td>
				<td>
					<input class="easyui-validatebox textbox" data-options="
					prompt:'请输入您的密码',
					required:'required',
					 missingMessage:'密码不能为空'" 
					  type="password" name="adminPassword" id="password" />
				</td>
			</tr>
			<tr>
				<td></td>
				<td><button type="button" id="bnt_login">登陆</button></td>
			</tr>
		</table>
			
		</form>
	</div>
</body>
<script type="text/javascript" src="easyui/jquery.min.js"></script>
<script type="text/javascript" src="easyui/jquery.easyui.min.js"></script>
<script type="text/javascript" src="easyui/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript" src="js/login.js"></script>
<script type="text/javascript" src="js/adminBasic.js"></script>
</html>