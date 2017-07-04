var editorRow ;
$('#editGoods').datagrid({    
	    url:'admin/getGoodsList',
		fitColumns:true,
		singleSelect:true,
		pagination:true,
		toolbar: '#tb',
	    columns:[[  
	    	{field:'goodId',title:'商品号',width:40,align:'center'}, 
	        {field:'goodTitle',title:'商品标题',width:50,align:'center',editor: { type: 'validatebox', options: { required: true} }},    
	        {field:'bookOrSeries',title:'书籍号/套装号',width:40,align:'center',
	        	formatter :function(value,row,index){
	        		return row.bookOrSeries.bookId
	        	}
	        }, 
		        {field:'price',title:'价格',width:40,align:'center',
	        	
	        	editor:{type:'validatebox' ,
	        		options:{
	        			required:true,
	        			validType:'numberOrDecimal[]'
	        		}
		        }
	        }, 
	        {field:'eprice',title:'电子书价格',width:30,align:'center',
	        	editor:{type:'validatebox' ,
	        		options:{
	        			required:true,
	        			validType:'numberOrDecimal[]'
	        		}
		        }
	        },
	        {field:'originalCost',title:'原价',width:30,align:'center'},
	        {field:'star_level',title:'评价星级',width:30,align:'center'},
	        
	        //TODO 修改数据库，建立图片关系模式 ， 设计可设置多张图片方案
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
		        		return "<div style='height:"+value.length/6*29+"px; white-space: normal;'>"+value+"</div>";
	        		}
	        	} ,
	        	//TODO 可设置关键字最大长度为20个汉字
	        	editor:"text"
	        },
	        {field:'operator',title:'操作',width:60,align:'center',
	        	formatter :function(value,row,index){
	        		var fun2
        			fun2 = '<a class="opBtn" href="javascript:void(0);"  onClick="OpWindow(this.innerText,'+index+')">下架</a>';
	        		var str = fun2;
	        		str+="<script>$('.opBtn').linkbutton({});</script>";
	        		return str;
	        	}
	        },
	        
	    ]] ,
	   
		onDblClickCell: function(index,field,value){
			$(this).datagrid('beginEdit', index);
			var ed = $(this).datagrid('getEditor', {index:index,field:field});
			if(ed != null && ed != 'undefine'){
				$(ed.target).focus();
			}
			editorRow = index;
		},

		onSelect:function(index,row){
			$(this).datagrid('endEdit', editorRow);
		},
		onClickCell:function(index, field, value){
			if(field == 'imgs'){
			    var rows = $('#editGoods').datagrid('getRows');
			    var row = rows[index];
				openImgs(row,index);
			}
		}

		
		
	});

/*	这种可编辑表格无法显示哪些可以修改，哪些不能修改
 * $.extend($.fn.datagrid.methods, {
	editCell: function(jq,param){
		return jq.each(function(){
			var opts = $(this).datagrid('options');
			var fields = $(this).datagrid('getColumnFields',true).concat($(this).datagrid('getColumnFields'));
			for(var i=0; i<fields.length; i++){
				var col = $(this).datagrid('getColumnOption', fields[i]);
				col.editor1 = col.editor;
				if (fields[i] != param.field){
					col.editor = null;
				}
			}
			$(this).datagrid('beginEdit', param.index);
            var ed = $(this).datagrid('getEditor', param);
            if (ed){
                if ($(ed.target).hasClass('textbox-f')){
                    $(ed.target).textbox('textbox').focus();
                } else {
                    $(ed.target).focus();
                }
            }
			for(var i=0; i<fields.length; i++){
				var col = $(this).datagrid('getColumnOption', fields[i]);
				col.editor = col.editor1;
			}
		});
	},
    enableCellEditing: function(jq){
        return jq.each(function(){
            var dg = $(this);
            var opts = dg.datagrid('options');
            opts.oldOnClickCell = opts.onClickCell;
            opts.onClickCell = function(index, field){
                if (opts.editIndex != undefined){
                    if (dg.datagrid('validateRow', opts.editIndex)){
                        dg.datagrid('endEdit', opts.editIndex);
                        opts.editIndex = undefined;
                    } else {
                        return;
                    }
                }
                dg.datagrid('selectRow', index).datagrid('editCell', {
                    index: index,
                    field: field
                });
                opts.editIndex = index;
                opts.oldOnClickCell.call(this, index, field);
            }
        });
    }
});

$(function(){
	$('#editGoods').datagrid().datagrid('enableCellEditing');
})*/


function openImgs(row,index){
	$("<div></div>").dialog({
		id:"lookImg",
		title:'查看商品图片',
		width:700,
		height:400,
		left:300,
		top:60 + $(document).scrollTop(),
		resizable:true,
		maximizable:true,
		modal:true,
		href:"admin/manager/lookImg.jsp",
		onClose:function(){
			 $(this).dialog('destroy');
		},
		onLoad:function(){
			var imgs = row.imgs;
			$("#mainImg").attr("src",imgs[0].imgPath);
			$("#mainImg").attr("rowIndex",index);
			for(var i=0 ; i<imgs.length ; i++){
				//默认第一张是选中的标题图片
				if( i == 0 ){
					$("#imglist").append('<img src=/bookCity/'+imgs[i].imgPath+' imgIndex='+i+' class="listImg selected" style="width:50px;height:50px;"/>');
				}else{
					$("#imglist").append('<img src=/bookCity/'+imgs[i].imgPath+' imgIndex='+i+' class="listImg" style="width:50px;height:50px;" />');
				}
			}
			$(".listImg").on({
				dblclick:function(){
					var selectedIndex = $(this).attr("imgIndex");
					var temp = imgs[0] ;
					imgs[0] = imgs[selectedIndex];
					imgs[selectedIndex]=temp;
					updateImg(index,imgs);
					closeWind("lookImg");
				},
				click:function () {
					$(".selected").removeClass("selected");
					$(this).addClass("selected");
					$("#mainImg").attr("src", $(this).attr("src"))
				},
				contextmenu:function(e){
					//右击图片的时候，body或者document的菜单时间去除，以显示图片的菜单事件
					$('#lookImg').unbind()
					$("#menu").menu("hideItem",$("#exit")[0])
					$("#menu").menu("hideItem",$("#upload")[0])
					$("#menu").menu("showItem",$("#delete")[0])
					e.preventDefault();
					$('#menu').menu('show', {
						left : e.pageX,
						top : e.pageY
					});
					// 切记！！ 千万不要在这里写恢复 body或者document的菜单事件，因为easyui的方法都是异步，
					//在上面的 show方法还没执行完，下面就已经运行完，也就恢复了原先的事件，就不会有期待的效果
				}
				
			})
		}
	});
}
function updateImg(index,imgs){
	$('#editGoods').datagrid('updateRow',{
			index: index,
			row:{
				imgs:imgs
        }
	})
	$('#editGoods').datagrid('refreshRow',index);
}

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

