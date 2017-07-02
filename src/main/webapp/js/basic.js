// JavaScript Document
$(function() {
	$("#message a").mouseover(
			function(e) {
				$("#message").children().eq(0).css("background",
						"url(images/snakepuc.png) no-repeat -12px -291px");
			});
	$("#message").mouseout(
			function(e) {
				$("#message").children().eq(0).css("background",
						"url(images/snakepuc.png) no-repeat left -291px");
			});

	$("#mywowo").mouseover(
			function() {
				var mywowo = $("#mywowo");
				var offset = mywowo.offset();
				var height = mywowo.height();
				var top = offset.top + height;
				$(".ulbox").css({
					top : top,
					left : offset.left,
					display : "block"
				});
				mywowo.addClass("on");
				$("#mywowo .san").css("background",
						"url(images/snakepuc.png) no-repeat -179px -185px");
			})

	$("#mywowo").mouseout(
			function() {
				$("#mywowo ul").css({
					display : "none"
				});
				$("#mywowo .san").css("background",
						"url(images/snakepuc.png) no-repeat -179px -178px");
				$("#mywowo").removeClass("on");
			});

	$("#myFocus").mouseover(
			function() {
				var myFocus = $("#myFocus");
				var offset = myFocus.offset();
				var height = myFocus.height();
				var top = offset.top + height;
				var left = offset.left - myFocus.width();
				$(".ulbox_fo").css({
					top : top,
					left : left - 56,
					display : "block"
				});
				myFocus.addClass("on");
				$("#myFocus .san").css("background",
						"url(images/snakepuc.png) no-repeat -179px -185px");
			});

	$("#myFocus").mouseout(
			function() {
				$("#myFocus ul").css({
					display : "none"
				});
				$("#myFocus .san").css("background",
						"url(images/snakepuc.png) no-repeat -179px -178px");
				$("#myFocus").removeClass("on");
			});

	$("#h_more").mouseover(
			function() {
				var h_more = $("#h_more");
				var offset = h_more.offset();
				var height = h_more.height();
				var top = offset.top + height;
				var left = offset.left;
				$(".ulbox_more").css({
					top : top,
					left : left - 36,
					display : "block"
				});
				h_more.addClass("on");
				$("#h_more .san").css("background",
						"url(images/snakepuc.png) no-repeat -179px -185px");
			});

	$("#h_more").mouseout(
			function() {
				$("#h_more ul").css({
					display : "none"
				});
				$("#h_more .san").css("background",
						"url(images/snakepuc.png) no-repeat -179px -178px");
				$("#h_more").removeClass("on");
			});

	$("#hb_showShan").mouseover(function() {
		var hb_showShan = $("#hb_showShan");
		var offset = hb_showShan.offset();
		var height = hb_showShan.height();
		var top = offset.top + height;
		var left = offset.left;
		$("#hb_shan").css({
			top : top,
			left : left + 3,
			display : "block"
		});
		$("#hb_showShan .san").css({
			background : "url(images/snakepuc.png) no-repeat -179px -185px"
		});
	});

	$("#hb_showShan").mouseout(
			function(e) {
				if (e.toElement != document.getElementById("hb_shan")
						&& e.toElement != document.getElementById("hb_shan")
								.getElementsByTagName("a").item(0)) {
					$("#hb_shan").css({
						display : "none"
					});
				}
				$("#hb_showShan .san").css("background",
						"url(images/snakepuc.png) no-repeat -179px -178px");
			});
	$("#hb_shan").mouseout(function() {
		$("#hb_shan").css({
			display : "none"
		});
	})

});

//图轮
index = 0;
imgpath = "images/"
var continue_lis = $(".list-page ul li")
function show() {
	//图片从1开始...	
	index = (index % 4) + 1;
	$("#continue_img").attr("src", imgpath + index + ".jpg");
	continue_lis.attr("class", "");
	continue_lis.eq(index - 1).attr("class", "current");
}

timer = setInterval("show()", 1500);

function start() {
	timer = setInterval("show()", 1500);
}

continue_lis.mouseover(function(e) {
	$(this).attr("class","current");
	index = $(this).index();
	show();
	window.clearInterval(timer);
});

continue_lis.mouseout(function(e) {
	timer = setInterval("show()", 1500);
});



$("#searchBar").click(function(){
	var str = escape($("#searchCondition").val());
	//alert(str);
	window.location.href="page/searchIndex.jsp?page=1&condition="+str;
});

//
