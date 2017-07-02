function regContinue() {
	sendEmailMsg();
	//TODO 发送邮件成功跳转，不成功报错
	
	
	
	var basic_info = $(".basic_info").css("display", "none");
	$("#continue").css("display", "none");

	$(".identifiedCode").css("display", "block");
	$("#sendEmail").css("display", "block");
	$("#submit").css("display", "block");
	
	$("#content").css("min-height", "200px");
}
function sendEmailMsg() {
	alert("发送邮件");
	
	$.post("../user/register",function(data){
		alert("发送成功");
	})
	var sendbt = document.getElementById("sendbt");
	sendbt.disabled = true;
	change();
}
function register() {
	alert("注册操作");
}
var i = 10;
var mytime;
function change() {
	i--;
	if (i == 0) {
		sendbt.disabled = false;
		sendbt.value = "重新发送";
		$(sendbt).css({
			"background" : "#e4393c"
		});
		i = 10;
	} else {
		sendbt.value = " 重新发送 (" + i + "s)";
		$(sendbt).css({
			"font-size" : "15px",
			"background" : "#666"
		});

		mytime = setTimeout("change()", 1000);
	}
}
