<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<style>
#addAdmin{
	margin: auto auto;
	width:400px;
    margin-top: 30px;
}
#addAdmin div{
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
</style>
	<!-- missingMessage:'账号不能为空'在js中设置无效.. -->
	<form id="addAdmin" class="easyui-form"  data-options="novalidate:true" method="post" >   
	    <div>   
	        <label for="name">管理员账号:</label>   <br>
	        <input  class="easyui-validatebox textbox"  name="adminName" data-options="
	        required:true
	        ,iconCls:'icon-man',prompt:'请输入要注册的管理账号'
	        ,validType:['onlyName[\'admin/checkAdminName\']'
	        ,'minLength[2]']
	        , missingMessage:'账号不能为空'"   style="width:300px">    
	    </div>   
	    <div>   
	        <label for="password">登陆密码:</label>   <br>
	        <input id="pwd"  name="adminPassword" onchange="checkRpwd()" type="password" class="easyui-validatebox textbox" data-options="
	        required:true,
	        iconCls:'icon-lock',
	        prompt:'请输入要注册的管理密码',
	        validType:'minLength[6]',
	        missingMessage:'密码不能为空'"  style="width:300px"/>
	    </div> 
	    
	    <div>   
	        <label for="repassword">确认密码:</label>   <br>
		 <input id="rpwd" name="rpwd" type="password" class="easyui-validatebox textbox "  data-options="
		  required:true,
		 iconCls:'icon-lock',
		 prompt:'请再次输入要注册的管理密码' "  validType="equals['#pwd']" style="width:300px"/>    
		</div>   
	    
	    <div>
	    	<label for="authority" style="margin-bottom:5px; display:inline-block;" >设置管理权限:</label>  <br/>
	    	<select  id="selectPostion" class="easyui-combobox" name="dept" data-options="
	    	panelHeight:60,
	    	panelMaxHeight:300,
	    	editable:false,
	    	value:null,
	    	required:true,
	    	missingMessage:'设置不能为空'" style="width:100px;" >   
			    <option>系统管理员</option>   
			    <option>仓库管理员</option>   
			</select>  
	    </div>
	    
	    <div  style="margin-top:10px;">
	    	<label for="authority" name="eployee" style="margin-bottom:5px; display:inline-block;" >请选择责任人:</label>  <br/>
	    	<select  id="findEmp" class="easyui-combogrid" name="dept" style="width:150px;"  
	    	checked onchange="$('#cc').combogrid({selectOnNavigation:$(this).is(':checked')})" 
	        data-options="    
	            panelWidth:300,    
	            required:true,
	            missingMessage:'设置不能为空',
	            idField:'eid',    
	            textField:'ename',    
	            url:'admin/findEmp',
	            columns:[[    
	                {field:'eid',title:'编号',width:60,sortable:true},    
	                {field:'ename',title:'名字',width:60,sortable:true},    
	                {field:'eposition',title:'职务',width:60,sortable:true},    
	                {field:'ephone',title:'手机号码',width:100,sortable:true}    
	            ]]    
	        "></select>  <a  onclick="openAddEmp(this)">添加一个责任人</a> <a onclick="reback(this)" id="cancelAddEmp" style="display:none">取消</a>
	    </div>
	    
	    
	    <div id="addEmp" style="display: none;">
	    	 <div>   
		        <label for="ename">姓名:</label>   <br>
		        <input id="ename" name="employee.ename"  class="easyui-validatebox textbox"   data-options="
		        required:true,
		        iconCls:'icon-man',
		        prompt:'请输入要添加责任人姓名',
		        novalidate:true,
		        disabled:true,
		        missingMessage:'姓名不能为空'"   style="width:300px">    
		    </div>   
		    <div>   
		        <label for="eposition">职务:</label>   <br>
		       <select  id="eposition" class="easyui-combobox" data-options="
		       required:true,
		       value:null,
		       novalidate:true,
		       disabled:true,
		       editable:false,
		       missingMessage:'职务不能为空'"  style="width:200px;" >   
				    <option>经理</option>   
				    <option>员工</option>   
				    <option>配送员</option>   
				</select>  
		    </div> 
		    
		    <div>   
		        <label for="ephone">手机号码:</label>   <br>
			 <input  id="ephone" name="employee.ephone" class="easyui-validatebox textbox "  data-options="
			 required:true,
			 iconCls:'icon-lock',
			 prompt:'请输入要添加责任人的手机号码',
			 novalidate:true,
			 disabled:true,
			 missingMessage:'电话号码不能为空'"  validType="phone[]" style="width:300px"/>    
			</div> 
	    
	    </div>
	    
	    
	    <div  style="margin-top:20px;">
	    	<button  id="addMgrSubmit" type="button" onclick="addAdmin()" class="easyui-linkbutton" data-options="width:70">确定</button>
	    	&nbsp; &nbsp; &nbsp; &nbsp;
	    	<button  id="addMgrCancel" type="button"  class="easyui-linkbutton" data-options="width:70">取消(清空)</button>
	    </div>
	    
	</form>
	<script type="text/javascript"  src="js/adminBasic.js"></script>
<script type="text/javascript">
var isAdd = false;
 function setAdd(){
	if(isAdd){
		$("#ename").validatebox("enable");
		$("#eposition").combobox("enable")
		$("#ephone").validatebox("enable");
		$("#findEmp").combobox("disable")
	}else{
		
		$("#ename").validatebox("disable");
		$("#eposition").combobox("disable")
		$("#ephone").validatebox("disable"); 
		$("#findEmp").combobox("enable")
	}
} 

function openAddEmp(obj){
	$("#findEmp").next().css("display","none");
	$(obj).next().css("display","inline");
	$(obj).css("display","none");
	$("#addEmp").css("display","block");
	isAdd=true;
	setAdd();
}


function reback(obj){
	$("#findEmp").next().css("display","inline-block");
	$(obj).prev().css("display","inline");
	$(obj).css("display","none");
	$("#addEmp").css("display","none");
	isAdd=false;
	setAdd();
}

$("#addMgrCancel").linkbutton({
	onClick : function(){
		$('#addAdmin').form('clear');
		$("#cancelAddEmp").click();
		$(this).form('disableValidation');
    }
})

var addParam = new Object();


$("#addAdmin").form({
	url:"admin/addAdmin",
	queryParams:addParam,
    onSubmit: function(){    
    	return $(this).form('enableValidation').form('validate');
    },    
    success:function(data){    
        if(data == 'true' || data == true){
        	alert("管理员注册成功");
        	
        	var AddMgrContinue = confirm("需要继续添加吗？");
        	if(AddMgrContinue){
        		$('#addAdmin').form('clear');
        		$(this).form('disableValidation');
        	}else{
        		closeTab(null);
        		openOp("查看管理员");
        		 $('#editAdmin').datagrid("reload");
        	}
        	
        } else {
        	alert("管理员注册失败！！请稍后再试");
        }
    }  
})

function addAdmin(){
	var webPosition = $("#selectPostion").combobox("getText");
	setWebPosition(webPosition,addParam);
	
	if(isAdd){
		var eposition = $("#eposition").combobox("getText");
		setEPosition(eposition,addParam);
		
	}else{
		var eid =  $('#findEmp').combogrid('getValue');
		addParam['employee.eid']=eid; 
	}
	
	$('#addAdmin').form('submit');
}

</script>

