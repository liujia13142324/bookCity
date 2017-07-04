<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<style>
#imglist img {
	margin-left: 10px;
}

.selected {
	border: 2px solid red;
}
</style>

<div style="text-align: center;">
	<img id="mainImg"
		style="width: 200px; height: 200px; margin-top: 30px;" />
	<div id="imglist" style="margin-top: 30px;"></div>
</div>
<div id="menu" class="easyui-menu" style="width: 120px;">
	<div id="upload" onclick="javascript:alert('new')">上传</div>
	<div id="exit" onclick="closeWind('lookImg')">退出</div>
	<div id="delete">刪除</div>
</div>

<script>

	var document_menu_hander =  function(e) {
		e.preventDefault();
		$("#menu").menu("hideItem",$("#delete")[0])
		$("#menu").menu("showItem",$("#exit")[0])
		$("#menu").menu("showItem",$("#upload")[0])
		$('#menu').menu('show', {
			left : e.pageX,
			top : e.pageY
		});
	}
	
	//还不能用Body或者document，传过去只是窗口的范围有效，不能波及窗口外的
	$('#lookImg').bind('contextmenu',document_menu_hander)
		
	
	$("#menu").menu({
		//每次右击完菜单，菜单消失了，再恢复body或者document的菜单事件。
		onHide:function(){
			$('#lookImg').bind('contextmenu', document_menu_hander)
		}
	})
		
</script>
