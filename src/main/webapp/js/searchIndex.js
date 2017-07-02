
//页面间传参，通过URL，缺点很多，以后有空再研究更好的办法
var url=location.search;  //?以后的部分
var Request = new Object();
if(url.indexOf("?")!=-1){
	var str = url.substr(1)　// 去掉?号
	if(str.indexOf("&")!=-1){
		strs = str.split("&");
		for(var i=0;i<strs.length;i++){
			 　 Request[strs[i].split("=")[0]]=unescape(strs[ i].split("=")[1]);
		}
		
	}else{
		 Request[str.split("=")[0]]=unescape(str.split("=")[1]);
	}
	
}

console.info(Request['page'] +"  condition: " +Request['condition']);

	$.ajax({
		   type: "POST",
		   url: "index/search",
		   data: "page="+Request['page']+"&condition="+Request['condition'],
		   success: function(data){
			   
			   var goods = data.rows;
			   console.info(goods);
			   // 显示搜索出来的商品
			   for(i=0 ; i<goods.length ; i++){
				   
				   var starCount =goods[i].star_level/2;
				   var starCountStr='ch-tabwidget-starbk_'+starCount+"_0"
				   if(goods[i].star_level%2 != 0 ){
					   starCountStr='ch-tabwidget-starbk_'+starCount+"_5"
				   }
				   
				   $("#goodsList").append('<li ddt-pit="'+i+'" class="line1">'
						   +'<a class="pic"  href="#" target="_blank">'
						   +'<img src="'+goods[i].picPath+'" alt=" 理想国 "></a>'
						   +'<p class="price">'
						   +'<span class="price_n">￥'+goods[i].price+'</span>'
						   +'<a style="color: #878787; text-decoration: none;">定价：</a>'
						   +'<span class="price_r">￥'+goods[i].originalCost+'</span>'
						   +'(<span class="price_s">'+getDisCount(goods[i].price,goods[i].originalCost) + '折</span>)'
						   +'</p>'
						   +'<p class="name" name="title">'
						   +'<a href="#" target="_blank">'+goods[i].goodTitle+'</a></p>'
						   +'<p class="search_hot_word">'+goods[i].keywords+'</p>'
						   +'<p class="star">'
						   +'<span class="level"><span style="width: 100%;"></span></span>'
						   +'<a href="#" target="_blank" >36867条评论</a>'
						   +'</p>'
						   +'<p class="dang_big '+starCountStr+'" style="display: block"></p>'
						   +'<span class="tag_box" style="background: url(images/xsg.png) no-repeat 0 0;"></span>'
						   +'</li>'
						   )
			   }
			  
			   
			   // 底部分页设定
			   
			   var current_page = data.page;
			   var allPage = data.allPage;
			   console.info(current_page+"   "+allPage);
			   
			   for(i=1 ; i<=allPage ; i++){
				   if(i == current_page){
					   //同样也需要对中文的参数进行转码处理
					   $("#bottom_page").append('<li><a href="page/searchIndex.jsp?page='+i+'&condition='+escape(Request['condition']) +' " class=" current" name="bottom-page-turn">'+i+'</a></li>');
				   }else{
					   $("#bottom_page").append('<li><a href="page/searchIndex.jsp?page='+i+'&condition='+escape(Request['condition']) +' "  name="bottom-page-turn">'+i+'</a></li>');
				   }
			   }
			   $("#bottom_page").append('<li class="page_input"><span>到第</span>' 
					   			+'<input id="t__cp" type="text" class="number" value="1"> '
					   			+'<span>页</span> '
					   			+'<span>页</span> '
					   			+' <input class="button" id="click_get_page" value="确定" type="button" name="bottom-page-turn"></li>'
					   			);
						
			   
		   },
		   dataType:"json"
		});




function getDisCount(priceNow,originCost){
	return (priceNow/originCost*10).toFixed(1);
}