
$('#LoginDiv').dialog({    
    title: '',  
    top: 50,  
    width: 320,    
    height: 200,    
    closable: false,
    cache: false,   
    draggable:false,
    modal: true,
    border:false
});    



$('#bnt_login').linkbutton({    
    iconCls: 'icon-man'
   ,onClick : function(){
    	$('#loginForm').submit();
    }
});  


$('#loginForm').form({
	url:'admin/login',
	ajax:true,
	onSubmit: function(){   
		return $(this).form('enableValidation').form('validate');
    }
	,
	success:function(data){   
	    if(data == 'true'){
	    	//以项目为根目录
	    	window.location.href="admin/manager/admin.jsp";
	    }else{
	    	alert('账号或者密码错误，或者您的账号已被停用，请查证后再登陆！！');
	    }
	}    
})


/*$('#loginForm').form({    
    url:'User_login',    
    success:function(data){    
        if(data.trim() == "true"){
        	location.replace("easyui_page/user_edit.jsp");
        }else{
        	$.messager.show({
        		title:'登陆消息',
        		msg:'登陆失败',
        		showType:'show',
        		timeout:1000,
        		style:{
        			right:'',
        			top:document.body.scrollTop+document.documentElement.scrollTop,
        			bottom:''
        		}
        	});
        }
    }    
});*/


