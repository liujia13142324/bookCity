<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
#modifyAdmin{
	margin: auto auto;
	width:400px;
    margin-top: 30px;
}
#modifyAdmin div{
	margin-top:10px;
}

.combobox-item{
 cursor: pointer;
}

a{
	text-decoration: none;
	cursor: pointer;
}
#ddMgrCancel span{
	font-size: 10px;
}
.combo{
margin-right:20px;
}

.textboxDisabled{
    background-color: #ccc;
}

</style>
	<!-- missingMessage:'账号不能为空'在js中设置无效.. -->
	<form id="modifyAdmin" class="easyui-form"  data-options="novalidate:true" method="post" >   
	   	<input type="hidden" name="oldName" id="oldName">
	    <div>   
	        <label for="name">修改后新的账号:</label>   <br>
	        <input id="mAdminName" class="easyui-validatebox textbox"  name="adminName" data-options="
	        required:true
	        ,iconCls:'icon-man',prompt:'请输入修改后的管理账号'
	        ,validType:['onlyName[\'admin/checkModifyAdminName\',document.getElementById(\'oldName\').value]'
	        ,'minLength[2]']
	        , missingMessage:'账号不能为空'"   style="width:300px">    
	    </div> 
	    
	    <div style=" position: relative;">   
	        <label for="password">新的密码:</label>   <br>
	        <input id="mPwd"  name="adminPassword" type="password" class="easyui-validatebox textbox" data-options="
	        required:true,
	        iconCls:'icon-lock',
	        prompt:'请输入修改后的管理密码',
	        validType:'minLength[6]',
	        missingMessage:'密码不能为空'"  style="width:300px"/>
	        &nbsp;&nbsp;&nbsp;
	        
	        <input type="checkbox" onchange="passwordIsneed(this)" style="width: 20px; height: 20px; position: absolute;  top: 22px;">
	    </div> 
	    
	    <%
	    	request.setAttribute("adminAbility", request.getParameter("adminAbility"));
	    %>
	    
	    <c:if test="${adminAbility <100 }">
		    <div>
		    	<label for="authority" style="margin-bottom:5px; display:inline-block;" >设置管理权限:</label>  <br/>
		    	<select  id="mSelectPostion" class="easyui-combobox" name="dept" data-options="
		    	panelHeight:60,
		    	panelMaxHeight:300,
		    	editable:false,
		    	value:null,
		    	required:true,
		    	missingMessage:'设置不能为空'" style="width:100px;" >   
				    <option>系统管理员</option>   
				    <option>仓库管理员</option>  
				     <option>停用</option>   
				</select>  
		    </div>
	    </c:if>
	    
	    
	     <div  style="margin-top:20px;">
	    	<button  id="modifyMgrSubmit" type="button" onclick="modifyAdmin()" class="easyui-linkbutton" data-options="width:70">确定</button>
	    	&nbsp; &nbsp; &nbsp; &nbsp;
	    	<button  id="modifyCancel" type="button"  class="easyui-linkbutton" data-options="width:70">取消(清空)</button>
	    </div>
	</form>
	
<script type="text/javascript" src="js/adminBasic.js"></script>
<script type="text/javascript">



$("#modifyCancel").linkbutton({
	onClick : function(){
		$('#modifyAdmin').form('clear');
		$(this).form('disableValidation');
    }
})

var addParam = new Object();

$("#modifyAdmin").form({
	url:"admin/modifyAdmin",
	queryParams:addParam,
    onSubmit: function(){    
    	return $(this).form('enableValidation').form('validate');
    },    
    success:function(data){    
        if(data == 'true' || data == true){
        	alert("管理员修改成功");
        	closeWind('mAdmin');
        	reloadData();
        } else {
        	alert("管理员修改失败！！请稍后再试");
        }
    }  
})

function modifyAdmin(){
	
	if(document.getElementById("mSelectPostion")!=null && document.getElementById("mSelectPostion") !="undefine" ){
		var webPosition = $("#mSelectPostion").combobox("getText");
		setWebPosition(webPosition,addParam)
	}
	$('#modifyAdmin').form('submit');
}


function passwordIsneed(obj){
	if($(obj).is(':checked')){
		$("#mPwd").val("");
		$("#mPwd").validatebox("disable"); 
		$("#mPwd").addClass("textboxDisabled");
	}else{
		$("#mPwd").validatebox("enable"); 
		$("#mPwd").removeClass("textboxDisabled");
	}
}

</script>

