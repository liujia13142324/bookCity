var urlJson = {
	"查看管理员" : "superAdmin/adminEdit.jsp",
	"添加管理员" : "superAdmin/addManager.jsp",
	"查看上架书籍" : "bookAdmin/goodsEdit.jsp",
	"添加新闻" : "addNews.jsp",
	"编辑主题" : "topic_edit.jsp",
	"添加主题" : "topic_add.jsp"
};

$(".Menutree").tree({
	onClick : function(node) {
		var nt = node.text;
		openOp(nt);
	}
	
});

$("#contents").tabs({
	fit : true,
});

$("#leftSide").accordion({
	fit : true,
});

function closeTab(nt){
	console.info("1");
	if(nt != null && nt != ""){
		$('#contents').tabs("close",nt);
	}else{
		console.info("2");
		//没有参数，关闭当前的选项卡
		var tab = $('#contents').tabs('getSelected');
		var index = $('#contents').tabs('getTabIndex',tab);
		console.info(tab+"   " + index);
		$('#contents').tabs("close",index);
	}
}

function openOp(nt) {
	if ($('#contents').tabs('exists', nt)) {
		$('#contents').tabs('select', nt);
	} else {

		if (urlJson[nt]) {
			$('#contents').tabs('add', {
				title : nt,
				// 加载整个页面的内容
				href : "admin/manager/" + urlJson[nt],
				closable : true,
			});
		} else {
			$('#contents').tabs('add', {
				title : nt,
				content : "<h1 class='main_h1'>" + nt + "</h1>",
				closable : true,
			});
		}

	}
}



function exit(){
	var exitResult = confirm("真的要注销吗？");
	if(exitResult){
		document.location.href="page/exit.jsp";
	}
}