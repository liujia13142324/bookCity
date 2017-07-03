<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<style>
#imglist img{
	margin-left:10px;
}
.selected {
    border: 2px solid red;
}
</style>

<div style="text-align:center;">
<img id="mainImg" style="width:200px; height:200px; margin-top: 30px;"/>
<div id="imglist" style="margin-top: 30px;" ></div>
</div>

<script>
	function changeImg(obj){
		$(".selected").removeClass("selected");
		$(obj).addClass("selected");
		$("#mainImg").attr("src",$(obj).attr("src"))
	}
	
</script>
