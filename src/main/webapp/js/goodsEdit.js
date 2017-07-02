$('#editGoods').datagrid({    
	    url:'admin/getGoodsList',
		fitColumns:true,
		singleSelect:true,
		pagination:true,
	    columns:[[  
	    	{field:'goodId',title:'商品号',width:40,align:'center'}, 
	        {field:'goodTitle',title:'商品标题',width:50,align:'center'},    
	        {field:'bookOrSeries',title:'商品号/套装号',width:40,align:'center',
	        	formatter :function(value,row,index){
	        		return row.bookOrSeries.bookId
	        	}
	        }, 
	        {field:'price',title:'价格',width:40,align:'center'}, 
	        {field:'eprice',title:'电子书价格',width:30,align:'center'}, 
	        {field:'originalCost',title:'原价',width:30,align:'center'},
	        {field:'star_level',title:'评价星级',width:30,align:'center'},
	        //TODO 修改数据库，建立图片关系模式
	        {field:'imgs',title:'商品图片',width:50,align:'center',
	        	formatter :function(value,row,index){
	        		return "<img style='width:100px;height:100px' src='"+row.imgs[0].imgPath+"'/>"
	        	}}, 
	        {field:'isSeries',title:'成套',width:14,align:'center',
	        		formatter :function(value,row,index){
		        		if(row.isSeries == 0){
		        			return "否";
		        		}else{
		        			return "是";
		        		}
		        	}
	        },
	        
	        {field:'clickCount',title:'点击量',width:40,align:'center'}, 
	        {field:'commentCount',title:'评论量',width:40,align:'center'}, 
	        {field:'keywords',title:'关键字',width:40,align:'center',
	        	formatter :function(value,row,index){
	        		if(value!=null && value!='undefine'){
	        			console.info(value+"  "+value.length)
		        		return "<div style='height:"+value.length/6*20+"px; white-space: normal;'>"+value+"</div>";
	        		}
	        	} 
	        },
	        {field:'operator',title:'操作',width:60,align:'center',
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