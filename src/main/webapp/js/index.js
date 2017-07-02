
//获得菜单数据
$.ajax({
   type: "POST",
   url: "index/navigation",
   success: function(data){
	  
	  // console.info(data);
	   
	  var menulist = new Array();
	 
	  //对后台数据进行父子菜单归类 ---》{父标签：父标签名字, 子标签s:[子标签、子标签、子标签、...]}
	  for(i=0 ; i<data.length ; i++){
		  if(data[i].fid == 0){
			  var first = new Object();
			  first.name = data[i].menuName;
			  first.id = data[i].menuId;
			  first.secondList = new Array();
			  menulist[menulist.length]=first;
			  
		  }else if(data[i].fid != 0 ){
			  for(j=0 ; j<menulist.length ; j++){
				  if(menulist[j].id == data[i].fid){
					  var second = new Object();
					  second.name = data[i].menuName;
					  second.id = data[i].menuId;
					  menulist[j].secondList[menulist[j].secondList.length]=second;
					  break;
				  }
			  }
		  }
	  }
	  
	 // console.info(menulist);
	  
	  for(i=0 ; i<menulist.length ; i++){
		  $("#menuBody").append(' <div class="level_one " type="bar" father="1"> '
				  				+' <dl class="con primary_dl" son="1"> '
				  				+' <dt class="con "> '
				  				+'<span>'+menulist[i].name+'</span>'
				  				+'</dt> '
				  				+'<dd class="con sec_cate dd_level1" id="menuId_'+menulist[i].id+'"> ');
		  
		  for(j=0 ; j< menulist[i].secondList.length ; j++){
			  $("#menuId_"+menulist[i].id).append(' <a href="#" target="_blank" title="教材" id="menuId_"'
					  +menulist[i].secondList[j].id+'> '+menulist[i].secondList[j].name+' </a>');
		  }
		  $("#menuBody").append('</dd></dl>');
	  }
	  
   },
   dataType:"json"
});

//获得首页推荐书本数据
$.ajax({
	   type: "POST",
	   url: "index/recommend",
	   success: function(data){
		   var recommend = new Object();
		   recommend.bookRecommend = new Array();
		   recommend.hotBook = new Array();
		   recommend.hotNewBook = new Array();
		   
		   for(i=0 ; i<data.length ; i++){
			   if(i<=5){
				   recommend.bookRecommend[ recommend.bookRecommend.length]=data[i];
			   }
			   if(5<i && i<=11){
				   recommend.hotBook[ recommend.hotBook.length]=data[i];
			   }
			   if(11<i  && i<=17){
				   recommend.hotNewBook[ recommend.hotNewBook.length]=data[i];
			   }
		   }
		   
		   $("#recomment_detail").append('<div class="ch-tabwidget-pc-content" id="index_recommend-content-line0" style="height: 239px; padding-left: 37px;">'
  					+'<div class="ch-tabwidget-pc-contentlist">');
		   for(i=0 ; i< recommend.bookRecommend.length ; i++){
			   var starCount =recommend.bookRecommend[i].star_level/2;
			   var starCountStr='_'+starCount+"_0"
			   if(recommend.bookRecommend[i].star_level%2 != 0 ){
				   starCountStr='_'+starCount+"_5"
			   }
			   
			   $("#index_recommend-content-line0").append('<div class="ch-tabwidget-pc-contentAsin" style="width: 205px; display: block; margin-right: 5px;">'
					   						+'<div class="ch-tabwidget-top">&nbsp;</div>'
					   						+'<div class="ch-tabwidget-pc-contentAsinImg">'
					   						+'<div class="ch-tabwidget-pc-contentAsinImgBody">'
					   						+' <a href="#"> <img  src="'+recommend.bookRecommend[i].imgs[0].imgPath+'" style="width: 110px; height: 110px;"> </a>'
					   						+'</div></div>'
					   						+'<div class="ch-tabwidget-asintitle" style="height:20px;overflow:hidden;text-overflow:ellipsis;-o-text-overflow:ellipsis;white-space:nowrap;font-weight:700">'
					   						+' <a href="#">'+recommend.bookRecommend[i].goodTitle+'</a> '
					   						+'</div>'
					   						+'<div class="ch-tabwidget-price"> ￥ '
					   						+recommend.bookRecommend[i].price
					   						+'</div> '
					   						+'<div style="position:relative;height:22px;"> '
					   						+' <div class="ch-tabwidget-star ch-tabwidget-starbk ch-tabwidget-starbk'+starCountStr+'"></div> '
					   						+' <div class="ch-tabwidget-review"> '
					   						+' <a href="#" target="_blank">('+recommend.bookRecommend[i].clickCount+')</a>'
					   						+'</div></div> '
					   						+'<div class="ch-tabwidget-agsbadge"></div> '
					   						+'<div class="ch-tabwidget-promo1">'
					   						+'<div style="overflow:hidden;white-space:nowrap;width:165px;text-overflow:ellipsis;"></div> '
					   						+'</div></div> '
					   						);
		   }
		   
		   $("#recomment_detail").append('</div><div>');
		   
	   },
	   dataType:"json"
});


/*
	三级菜单如下，为浮层
<div class="con " name="m403752_pid5367_t10278"> 
 <div class="hide submenu " name="m403752_pid5367_5435_t9145" type="item"> 
  <div class="con eject_main" name="m403752_pid5367_5435_t9146"> 
   <div class="col eject_left" name="m403752_pid5367_5435_t9147"> 
    <dl class="inner_dl" ddt-area="mix_5358"> 
     <dt> 
      <a name="教育浮层11" class="" href="#" target="_blank" title="教材" ddt-pit="textlistcustom_1">教材 </a> 
     </dt> 
     <dd> 
      <a class="dd_first " href="#" target="_blank" title="研究生/本科/专科教材" name="教育浮层12"><span>研究生/本科/</span></a> 
      <a class="" href="#" target="_blank" title="高职高专教材" name="教育浮层13"><span>高职高专教材</span></a> 
      <a class="" href="#" target="_blank" title="中职教材" name="教育浮层14"><span>中职教材</span></a> 
      <a class="" href="#" target="_blank" title="成人教育教材" name="教育浮层15"><span>成人教育教材</span></a> 
      <a class="" href="#" target="_blank" title="职业技术培训教材" name="教育浮层16"><span>职业技术培训</span></a> 
      <a class="" href="#" target="_blank" title="公共课" name="教育浮层17"><span>公共课</span></a> 
      <a class="" href="#" target="_blank" title="经济管理类" name="教育浮层18"><span>经济管理类</span></a> 
      <a class="" href="#" target="_blank" title="工学类" name="教育浮层19"><span>工学类</span></a> 
      <a class="" href="#" target="_blank" title="文法类" name="教育浮层110"><span>文法类</span></a> 
      <a class="" href="#" target="_blank" title="医学类" name="教育浮层111"><span>医学类</span></a> 
      <a class="" href="#" target="_blank" title="理学类" name="教育浮层112"><span>理学类</span></a> 
      <a class="" href="#" target="_blank" title="农学" name="教育浮层113"><span>农学</span></a> 
      <a class="" href="#" target="_blank" title="更多" name="教育浮层114"><span>更多</span></a> 
     </dd> 
    </dl> 
    <dl class="inner_dl" ddt-area="mix_5359"> 
     <dt> 
      <a class="" href="#" target="_blank" title="外语" ddt-pit="textlistcustom_1">外语 </a> 
     </dt> 
     <dd> 
      <a class="dd_first " href="#" target="_blank" title="英语综合教程"><span>英语综合教程</span></a> 
      <a class="" href="#" target="_blank" title="英语专项训练"><span>英语专项训练</span></a> 
      <a class="" href="#" target="_blank" title="英语读物"><span>英语读物</span></a> 
      <a class="" href="#" target="_blank" title="英语考试"><span>英语考试</span></a> 
      <a class="" href="#" target="_blank" title="英语工具书"><span>英语工具书</span></a> 
      <a class="" href="#" target="_blank" title="小语种"><span>小语种</span></a> 
      <a class="" href="#" target="_blank" title="新概念"><span>新概念</span></a> 
      <a class="" href="#" target="_blank" title="口语"><span>口语</span></a> 
      <a class="" href="#" target="_blank" title="听力"><span>听力</span></a> 
      <a class="" href="#" target="_blank" title="英文版读物"><span>英文版读物</span></a> 
      <a class="" href="#" target="_blank" title="IELTS"><span>IELTS</span></a> 
      <a class="" href="#" target="_blank" title="TOEFL"><span>TOEFL</span></a> 
      <a class="" href="#" target="_blank" title="GRE"><span>GRE</span></a> 
      <a class="" href="#" target="_blank" title="GMAT"><span>GMAT</span></a> 
      <a class="" href="#" target="_blank" title="SAT"><span>SAT</span></a> 
      <a class="" href="#" target="_blank" title="TOEIC"><span>TOEIC</span></a> 
      <a class="" href="#" target="_blank" title="BEC"><span>BEC</span></a> 
      <a class="" href="#" target="_blank" title="翻译资格"><span>翻译资格</span></a> 
      <a class="" href="#" target="_blank" title="职称英语"><span>职称英语</span></a> 
      <a class="" href="#" target="_blank" title="CET-4"><span>CET-4</span></a> 
      <a class="" href="#" target="_blank" title="CET-6"><span>CET-6</span></a> 
      <a class="" href="#" target="_blank" title="专四/八"><span>专四/八</span></a> 
      <a class="" href="#" target="_blank" title="日语"><span>日语</span></a> 
      <a class="" href="#" target="_blank" title="法语"><span>法语</span></a> 
      <a class="" href="#" target="_blank" title="韩语"><span>韩语</span></a> 
      <a class="" href="#" target="_blank" title="对外汉语"><span>对外汉语</span></a> 
      <a class="" href="#" target="_blank" title="更多"><span>更多</span></a> 
     </dd> 
    </dl> 
    <dl class="inner_dl" ddt-area="mix_5360"> 
     <dt> 
      <a class="" href="#" target="_blank" title="考试" ddt-pit="textlistcustom_1">考试 </a> 
     </dt> 
     <dd> 
      <a class="dd_first " href="#" target="_blank" title="学历考试"><span>学历考试</span></a> 
      <a class="" href="#" target="_blank" title="公职"><span>公职</span></a> 
      <a class="" href="#" target="_blank" title="财税外贸保险"><span>财税外贸保险</span></a> 
      <a class="" href="#" target="_blank" title="建筑工程"><span>建筑工程</span></a> 
      <a class="" href="#" target="_blank" title="计算机"><span>计算机</span></a> 
      <a class="" href="#" target="_blank" title="医药卫生"><span>医药卫生</span></a> 
      <a class="" href="#" target="_blank" title="艺术/体育"><span>艺术/体育</span></a> 
      <a class="" href="#" target="_blank" title="考研"><span>考研</span></a> 
      <a class="" href="#" target="_blank" title="MBA/MPA/MPAcc"><span>MBA/MPA/MPAc</span></a> 
      <a class="" href="#" target="_blank" title="公务员"><span>公务员</span></a> 
      <a class="" href="#" target="_blank" title="事业单位"><span>事业单位</span></a> 
      <a class="" href="#" target="_blank" title="注册会计师"><span>注册会计师</span></a> 
      <a class="" href="#" target="_blank" title="会计职称"><span>会计职称</span></a> 
      <a class="" href="#" target="_blank" title="会计从业"><span>会计从业</span></a> 
      <a class="" href="#" target="_blank" title="一级建造师"><span>一级建造师</span></a> 
      <a class="" href="#" target="_blank" title="二级建造师"><span>二级建造师</span></a> 
      <a class="" href="#" target="_blank" title="卫生职称"><span>卫生职称</span></a> 
      <a class="" href="#" target="_blank" title="医师资格"><span>医师资格</span></a> 
      <a class="" href="#" target="_blank" title="人力资源管理师"><span>人力资源管理</span></a> 
      <a class="" href="#" target="_blank" title="更多"><span>更多</span></a> 
     </dd> 
    </dl> 
    <dl class="inner_dl" ddt-area="mix_5361"> 
     <dt> 
      <a class="" href="#" target="_blank" title="中小学教辅" ddt-pit="textlistcustom_1">中小学教辅 </a> 
     </dt> 
     <dd> 
      <a class="dd_first " href="#" target="_blank" title="一年级"><span>一年级</span></a> 
      <a class="" href="#" target="_blank" title="二年级"><span>二年级</span></a> 
      <a class="" href="#" target="_blank" title="三年级"><span>三年级</span></a> 
      <a class="" href="#" target="_blank" title="四年级"><span>四年级</span></a> 
      <a class="" href="#" target="_blank" title="五年级"><span>五年级</span></a> 
      <a class="" href="#" target="_blank" title="六年级"><span>六年级</span></a> 
      <a class="" href="#" target="_blank" title="小学升初中"><span>小学升初中</span></a> 
      <a class="" href="#" target="_blank" title="小学通用"><span>小学通用</span></a> 
      <a class="" href="#" target="_blank" title="七年级"><span>七年级</span></a> 
      <a class="" href="#" target="_blank" title="八年级"><span>八年级</span></a> 
      <a class="" href="#" target="_blank" title="九年级"><span>九年级</span></a> 
      <a class="" href="#" target="_blank" title="中考"><span>中考</span></a> 
      <a class="" href="#" target="_blank" title="初中通用"><span>初中通用</span></a> 
      <a class="" href="#" target="_blank" title="高一"><span>高一</span></a> 
      <a class="" href="#" target="_blank" title="高二"><span>高二</span></a> 
      <a class="" href="#" target="_blank" title="高三"><span>高三</span></a> 
      <a class="" href="#" target="_blank" title="高考"><span>高考</span></a> 
      <a class="" href="#" target="_blank" title="高中通用"><span>高中通用</span></a> 
      <a class="" href="#" target="_blank" title="中小学阅读"><span>中小学阅读</span></a> 
      <a class="" href="#" target="_blank" title="英语专项"><span>英语专项</span></a> 
      <a class="" href="#" target="_blank" title="语文作文"><span>语文作文</span></a> 
      <a class="" href="#" target="_blank" title="工具书"><span>工具书</span></a> 
      <a class="" href="#" target="_blank" title="写字/字帖"><span>写字/字帖</span></a> 
      <a class="" href="#" target="_blank" title="学习方法"><span>学习方法</span></a> 
      <a class="" href="#" target="_blank" title="教育理论/教师用书"><span>教育理论/教</span></a> 
      <a class="" href="#" target="_blank" title="更多"><span>更多</span></a> 
     </dd> 
    </dl> 
    <dl class="inner_dl last" ddt-area="mix_5362"> 
     <dt> 
      <a class="" href="#" target="_blank" title="工具书" ddt-pit="textlistcustom_1">工具书 </a> 
     </dt> 
     <dd> 
      <a class="dd_first " href="#" target="_blank" title="汉语工具书"><span>汉语工具书</span></a> 
      <a class="" href="#" target="_blank" title="英语工具书"><span>英语工具书</span></a> 
      <a class="" href="#" target="_blank" title="其他语种工具书"><span>其他语种工具</span></a> 
      <a class="" href="#" target="_blank" title="百科全书/年鉴"><span>百科全书/年</span></a> 
      <a class="" href="#" target="_blank" title="文学鉴赏辞典"><span>文学鉴赏辞典</span></a> 
      <a class="" href="#" target="_blank" title="牛津系列"><span>牛津系列</span></a> 
      <a class="" href="#" target="_blank" title="朗文系列"><span>朗文系列</span></a> 
      <a class="" href="#" target="_blank" title="民族语工具书"><span>民族语工具书</span></a> 
      <a class="" href="#" target="_blank" title="英文原版书-工具书"><span>英文原版书-</span></a> 
     </dd> 
    </dl> 
   </div> 
   <div class="col eject_right" name="m403752_pid5367_5435_t9148"> 
    <a class=" _1  pic" href="#" ddt-pit="image_1" ddt-area="mix_5365" title="教育" target="_blank"></a> 
   </div> 
  </div> 
 </div> 
</div> 
*/