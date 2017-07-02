$('#editAdmin').datagrid({    
	    url:'admin/getAdminList',
		fitColumns:true,
		singleSelect:true,
		pagination:true,
	    columns:[[  
	    	{field:'eid',title:'工号',width:50,align:'center',
	        	formatter :function(value,row,index){
	        		return row.employee.eid;
	        	}
	        }, 
	        {field:'ename',title:'姓名',width:30,align:'center',
	        	formatter :function(value,row,index){
	        		return row.employee.ename;
	        	}
	        },    
	        {field:'eposition',title:'职务',width:50,align:'center',
	        	formatter :function(value,row,index){
	        		return getEPosition(row.employee.eposition);
	        	}
	        }, 
	        {field:'esalary',title:'工资',width:40,align:'center',
	        	formatter :function(value,row,index){
	        		return row.employee.esalary;
	        	}
	        }, 
	        {field:'ebonus',title:'奖金',width:30,align:'center',
	        	formatter :function(value,row,index){
	        		return row.employee.ebonus;
	        	}
	        }, 
	        {field:'ephone',title:'手机号码',width:50,align:'center',
	        	formatter :function(value,row,index){
	        		return row.employee.ephone;
	        	}
	        }, 
	        {field:'adminName',title:'管理员账号',width:40,align:'center'},
	        {field:'adminAbility',title:'管理员权限',width:40,align:'center',
	        	formatter :function(value,row,index){
	        		return getWebPosition(row.adminAbility)
	        	}
	        }, {field:'operator',title:'操作',width:60,align:'center',
	        	formatter :function(value,row,index){
	        		var fun1 ='<a class="opBtn" href="javascript:void(0);" onClick="OpWindow(this.innerText,'+index+')">修改</a> &nbsp;'
	        		var fun2
	        		if(row.adminAbility < 0 || row.adminAbility > 100){
	        			fun2 = '<a class="opBtn" href="javascript:void(0);" data-options="disabled:true"  onClick="OpWindow(this.innerText,'+index+')">停用</a>';
	        		}else{
	        			fun2 ='<a class="opBtn" href="javascript:void(0);" onClick="OpWindow(this.innerText,'+index+')">停用</a>';
	        		}
	        		
	        		var str = fun1+fun2;
	        		str+="<script>$('.opBtn').linkbutton({});</script>";
	        		return str;
	        	}
	        },
	    ]]    
	});



function OpWindow(opStr,index){
	switch(opStr){
		case opType='修改':openMA(index);break;
		case opType='停用':stopAdmin(index);break;
	}
}

function closeWind(id){
	$("#"+id).dialog('destroy');
}

function reloadData(){
	$("#editAdmin").datagrid("reload");
}

function stopAdmin(index){
	
	var row = $('#editAdmin').datagrid('getRows')[index];
	
	$.messager.confirm('确认','您确定要停用此管理员？', function(r){
		if (r){
			$.get("admin/stopAdmin?adminName="+row.adminName,function(data){
				$.messager.show({
					title:'通知',
					msg:data ? '停用成功!':'停用失败！',
					showType:'show',
					timeout:1000,
					style:{
						right:screen.availWidth/2+this.clientWidth/2,
						top:document.body.scrollTop+document.documentElement.scrollTop+screen.availHeight/2-this.clientHeight/2,
						bottom:''
					}
				});
				
				if(data){
					 reloadData()
				}
			},"json");
		}
	});
}

function openMA(index){
	var row = $('#editAdmin').datagrid('getRows')[index];
	$("<div></div>").dialog({
		id:"mAdmin",
		title:'修改管理员',
		width:600,
		height:300,
		left:300,
		top:60 + $(document).scrollTop(),
		resizable:true,
		maximizable:true,
		modal:true,
		href:"admin/manager/superAdmin/adminModify.jsp?adminAbility="+row.adminAbility,
		onClose:function(){
			 $(this).dialog('destroy');
		},
		onLoad:function(){
			$("#mAdminName").val(row.adminName);
			$("#oldName").val(row.adminName);
			$("#mSelectPostion").combobox('select', getWebPosition(row.adminAbility));
		}
	});
}