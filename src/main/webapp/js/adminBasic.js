
$(function(){
	$('input.easyui-validatebox').validatebox({
		validateOnCreate: false,
		err: function(target, message, action){
			var opts = $(target).validatebox('options');
			message = message || opts.prompt;
			$.fn.validatebox.defaults.err(target, message, action);
		}
	});
	
	$('input.textbox').validatebox().bind('blur', function(){
		$(this).validatebox('enableValidation').validatebox('validate');
	});
	
});


//校验定义部分

$.extend($.fn.validatebox.defaults.rules, {    
    equals: {    
        validator: function(value,param){    
            return value == $(param[0]).val();    
        },    
        message: '两次密码输入不一致'   
    } ,
    minLength: {    
    	validator: function(value, param){    
    		length = param;
            return value.length >= param[0];    
        },    
        message: '该字段至少{0}位'   
    }  ,
    numberOrDecimal:{
    	validator: function(value, param){    
    		var patrn = /^\d+(\.\d+)?$/;
            return patrn.exec(value);    
        },    
        message: '请输入正确的数字！' 
    },
    
    // remote方法默认的提示信息不友好，校验用户的时候有多种校验（唯一、长度），所以不能靠 invalidMessage只有一种提示信息
    // 把异步请求变成同步，不然在异步没有处理完之前，方法会自动返回false而导致一直是校验错误状态
    onlyName:{
    	validator: function(value, param){   
    		var result;
    		var urlParam = new Object();
    		urlParam.adminName = value;
    		console.info(param[1])
    		
    		if(param[1]!=null && param[1] != 'undefine'){
    			urlParam.oldName = param[1]
    		}
    		
    		$.ajax({
    			  type: "POST",
    			  url: param[0],
    			  data: urlParam ,
    			  async: false,
    			  success:function(data){
    				  result=data;
    			  }
    			});
        	return result;
    	}, 
    	message:"注册账号已存在!"
    },
    
    phone:{
    	validator: function(value, param){  
    		if(value.length == 11){
    			return true;
    		}else{
    			return false;
    		}
    	},
    	message:"手机格式不正确！"
    }
    	
});  

//进行密码和再次输入的密码匹配
function checkRpwd(){
	var rpwd = $("#rpwd").val();
	var pwd = $("#pwd").val();
	if(rpwd != pwd ){
		$("#rpwd").validatebox('enableValidation').validatebox('validate');
	}
}

function setEPosition(eposition,addParam){
	if(eposition =="经理"){
		addParam['employee.eposition'] = 1;
	}else if(eposition =="员工"){
		addParam['employee.eposition'] = 2;
	}else if(eposition =="配送员"){
		addParam['employee.eposition'] = 3;
	}
}


function setWebPosition(webPosition,addParam){
	if(webPosition == "系统管理员"){
		addParam.adminAbility=1;
	}else if(webPosition == "仓库管理员"){
		addParam.adminAbility=2;
	}else if(webPosition == '停用'){
		addParam.adminAbility=-1;
	}
}

function getEPosition(eposition){
	if(eposition == 1 ){
		return '经理'
	}else if(eposition ==2){
		return '员工'
	}else if(eposition ==3){
		return '配送员'
	}else if(eposition == 0 ){
		return '老大';
	}
}


function getWebPosition(webPosition){
	if(webPosition == 1){
		return "系统管理员";
	}else if(webPosition == 2){
		return "仓库管理员";
	}else if(webPosition > 2){
		return "老大";
	}else if(webPosition <0){
		return "停用";
	}
}

