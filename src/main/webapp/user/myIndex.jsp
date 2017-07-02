<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<html>
 <head></head>
 <body>

<%
String basePath = "../";
%>

  <meta charset="utf-8"> <li>
  <title>欢迎--小书屋</title> 
  <meta content="小书屋,心灵之旅" name="Keywords"> 
  <meta content="小书屋，心灵休憩的角落" name="Description"> 
  
  <!-- 本页面引入 -->
  <link href="../css/css_dan/mydd_head.css" rel="stylesheet" type="text/css"> 
  <link href="../css/css_dan/mydd_public.css" rel="stylesheet" type="text/css"> 
  <link href="../css/css_dan/mydd_title.css" rel="stylesheet" type="text/css"> 
  <link href="../css/css_dan/mydd_leftnavi.css" rel="stylesheet" type="text/css"> 
  <link href="../css/css_dan/mydd_foot.css" rel="stylesheet" type="text/css"> 
  <link href="../css/css_dan/rightSidebar.css" rel="stylesheet" type="text/css"> 
  <link href="../css/css_dan/menu.css" rel="stylesheet" type="text/css"> 
  <link href="../css/css_dan/style.css" rel="stylesheet" type="text/css"> 
  <link href="../css/css_dan/ad.css" rel="stylesheet" type="text/css"> 
  <!-- 首页样式 -->
  <link rel="stylesheet" type="text/css" href="<%=basePath %>css/basic.css"> 
  <link rel="stylesheet" type="text/css" href="<%=basePath %>css/index.css"> 
  <link rel="stylesheet" type="text/css" href="<%=basePath %>css/footer.css"> 
   <link rel="stylesheet" type="text/css" href="<%=basePath %>/css/css_dan/search_pub.css"> 
  <!-- 苏宁易购 --> 
  <link rel="stylesheet" type="text/css" href="<%=basePath %>css/css_su/common.min.css"> 
  <link rel="stylesheet" type="text/css" href="<%=basePath %>css/css_su/snEbook.min.css"> 
  <link rel="stylesheet" href="<%=basePath %>css/css_su/saved_resource"> 
  <link rel="stylesheet" type="text/css" href="<%=basePath %>css/css_su/menuNav.min.css"> 
  <!-- 当当 --> 
  <link rel="stylesheet" type="text/css" href="<%=basePath %>css/css_dan/theme_1.css"> 
  <link rel="Stylesheet" type="text/css" href="<%=basePath %>css/css_dan/home.css"> 
  <link rel="Stylesheet" type="text/css" href="<%=basePath %>css/css_dan/header_150803.css"> 
  <link href="<%=basePath %>css/css_dan/footer_150526.css" rel="stylesheet" type="text/css"> 
  <link href="<%=basePath %>css/css_dan/mycss.css" rel="stylesheet" type="text/css"> 
  <link rel="stylesheet" href="<%=basePath %>/css/css_su/saved_resource(4)"> 
  <!-- 苏宁中间 --> 
  <link rel="stylesheet" href="<%=basePath %>css/css_su/book.min.css"> 
  <link rel="stylesheet" type="text/css" href="<%=basePath %>css/css_su/menuNav.min.css"> 
  <!-- 亚马逊的 --> 
  <link rel="stylesheet" href="<%=basePath %>css/css_ya/index_products.css"> 
  <link rel="stylesheet" href="<%=basePath %>css/css_ya/index_ya.css"> 
  <!-- 亚马逊结尾 --> 
  <style type="text/css">
    .hidden{display:none;}
</style> 
  <header> 
   <div class="h_top"> 
    <ul class="u_left"> 
     <li>您好！请 [<a href="#">登陆</a>] </li> 
     <li>[<a href="#">注册</a>] </li> 
     <li id="message"><span></span><a href="#">消息</a></li> 
     <li><a href="#">领取积分抵钱</a></li> 
    </ul> 
    <ul class="u_right" id="u_right"> 
     <li id="mywowo"><span></span><a href="#">我的小屋</a><span class="san"></span> 
      <ul class="ulbox"> 
       <li><a href="#">我的订单</a></li> 
       <li><a href="#">我的评价</a></li> 
       <li><a href="#">我的资产</a></li> 
       <li><a href="#">我的收藏</a></li> 
       <li><a href="#">&nbsp;账户中心</a></li> 
      </ul></li> 
     <li class="myFocus" id="myFocus"><a href="#">关注</a><span class="san"></span> 
      <ul class="ulbox_fo"> 
       <li></li> 
       <li><a title="窝窝团新浪微博" target="_blank" href="#">窝窝团新浪微博</a></li> 
       <li><a title="窝窝团腾讯微博" target="_blank" href="#">&nbsp;窝窝团腾讯微博</a></li> 
       <li><a target="_blank" title="窝窝团新浪客服微博" href="#">窝窝团新浪客服微博</a></li> 
      </ul></li> 
     <li class="h_more" id="h_more"><span></span><a href="#">更多</a><span class="san"></span> 
      <ul class="ulbox_more" id="ulbox_more"> 
       <li></li> 
       <li><a href="#">手机版下载</a></li> 
       <li><a id="addEmailBtn" href="#">邮件订阅</a></li> 
       <li><a onclick="AddFavorite(window.location,document.title)" href="#">收藏本站</a></li> 
      </ul></li> 
    </ul> 
   </div> 
   <div class="h_bottom"> 
    <div class="hb_left"> 
     <img src="<%=basePath %>images/logo.png" style="height: 90%;"> 
    </div> 
    <ul class="hb_right"> 
     <li><button id="hb_showShan"> 类别<span class="san"></span><span></span> </button> <input type="text" width="32px" size="50px" placeholder="&nbsp;请输入书籍信息"> <button>搜索</button></li> 
     <li><a href="#">金瓶梅</a></li> 
     <li><a href="#">肉脯团</a></li> 
     <li><a href="#">法轮功大法好</a></li> 
     <li><a href="#">人民的名义</a></li> 
     <li><a href="#">岛上书店</a></li> 
     <li><a href="#">巨人的陨落</a></li> 
    </ul> 
    <div id="hb_shan"> 
     <a href="#">书籍</a> 
    </div> 
   </div> 
  </header> 
  <div> 
   <div class="g-channel-nav" id="g-channel-nav" style="border-top: 2px solid #333;"> 
    <div class="wrapper"> 
     <div class="channel-nav-logo" style="margin-right:80px;"> 
      <img src="<%=basePath %>images/navgation_imag.png" alt="" style="height: 45px;"> 
     </div> 
     <ul class="channel-sub-nav" style="width:555px;"> 
      <li class="home"><a href="#" name="snbook_index_daohang_nav01">小书屋首页</a></li> 
      <li><a href="#" name="snbook_index_daohang_nav02">出版物</a></li> 
      <li><a href="#" name="snbook_index_daohang_nav03">网络小说区</a></li> 
      <li><a href="#" name="snbook_index_daohang_nav05">分类</a></li> 
      <li><a href="#" name="snbook_index_daohang_nav06	">排行榜</a></li> 
     </ul> 
     <div class="channel-nav-link"> 
      <a name="snbook_index_daohang_nav07" class="b-d fwb fl" href="#" id="myCloudBS" style="margin-top: 2px;"><em></em>我的书架</a> 
     </div> 
    </div> 
   </div> 
  </div> 
 
 <article style="margin: 0 auto; width: 90%;">
 	 
 
  <div class="mydang" id="J_muneAndContentWrap"> 
   <!--左栏开始--> 
   <div class="my_left" id="myLeftMenu"> 
    <link href="../images/dandanmyIndex/menu.css" rel="stylesheet" type="text/css"> 
    <div class="my_menu"> 
     <h3 class="my_menu_title"><a id="J_myhomeBtn" href="#">我的当当</a></h3> 
     <dl> 
      <!--  
			<dd><a class="j-menuItem" name="" data-href="/myhome" href="javascript:void(0);" target="_parent">我的当当</a></dd>
			<dd><a class="j-menuItem" name="" data-href="/myAds" href="javascript:void(0);" target="_parent">我的test2</a></dd>
			<dd><a class="j-menuItem" name="" data-href="/test3" href="javascript:void(0);" target="_parent">我的test3</a></dd>
			<dd><a class="j-menuItem" name="" data-href="/test4" href="javascript:void(0);" target="_parent">我的test4</a></dd>
			<dd><a class="j-menuItem" name="" data-href="/test5" href="javascript:void(0);" target="_parent">我的test5</a></dd>
			 --> 
      <dt id="class600" name="orders">
        我的交易 
      </dt> 
      <dd> 
       <a class="j-menuItem" name="myallorders" href="#" target="_parent">我的订单</a> 
      </dd> 
      <dd> 
       <a class="j-menuItem" name="myebook" href="#" target="_parent">电子书</a> 
      </dd> 
      <dd> 
       <a class="j-menuItem" name="mypaymenthistory" href="#" target="_parent">我的账单</a> 
      </dd> 
      <dt id="class605" name="auction">
        我的拍卖 
      </dt> 
      <dd> 
       <a class="j-menuItem" name="myAuction" href="#" target="_parent">参拍/获拍</a> 
      </dd> 
      <dd> 
       <a class="j-menuItem" name="myMargin" href="#" target="_parent">我的保证金</a> 
      </dd> 
      <dt id="class610" name="interesting">
        我的收藏 
      </dt> 
      <dd> 
       <a class="j-menuItem" name="wishlist" href="#" target="_parent">商品收藏</a> 
      </dd> 
      <dd> 
       <a class="j-menuItem" name="collectlist" href="#" target="_parent">店铺收藏</a> 
      </dd> 
      <dt id="class620" name="account">
        我的钱包 
      </dt> 
      <dd> 
       <a class="j-menuItem" name="mymoneys" href="#" target="_parent">我的礼品卡</a> 
      </dd> 
      <dd> 
       <a class="j-menuItem" name="mycoupons" href="#" target="_parent">我的礼券</a> 
      </dd> 
      <dd> 
       <a class="j-menuItem" name="mybalance" href="#" target="_parent">我的余额</a> 
      </dd> 
      <dd> 
       <a class="j-menuItem" name="points_index_list" href="#" target="_parent">我的积分</a> 
      </dd> 
      <dt id="class630" name="selfservice">
        售后服务 
      </dt> 
      <dd> 
       <a class="j-menuItem" name="re_list" href="#" target="_parent">申请/查询退换货</a> 
      </dd> 
      <dd> 
       <a class="j-menuItem" name="myinvoice" href="#" target="_parent">补开/合并发票</a> 
      </dd> 
      <dt id="class640" name="personalinformation">
        个人中心 
      </dt> 
      <dd> 
       <a class="j-menuItem" name="profileleft" href="#" target="_parent">个人信息</a> 
      </dd> 
      <dd> 
       <a class="j-menuItem" name="safe_center" href="#" target="_parent">安全中心</a> 
      </dd> 
      <dd> 
       <a class="j-menuItem" name="myaddress" href="#" target="_parent">收货地址</a> 
      </dd> 
      <dd> 
       <a class="j-menuItem" name="onekeybuy" href="#" target="_parent">一键购买地址</a> 
      </dd> 
      <dd> 
       <a class="j-menuItem" name="myfeed" href="#" target="_parent">邮件/短信订阅</a> 
      </dd> 
      <dt id="class650" name="mycommunity">
        社区 
      </dt> 
      <dd> 
       <a class="j-menuItem" name="myreview" href="#" target="_parent">评论/晒单</a> 
      </dd> 
      <dd> 
       <a class="j-menuItem" name="myquestion" href="#" target="_parent">提问/回答</a> 
      </dd> 
      <dd> 
       <a class="j-menuItem" name="myinteresting" href="#" target="_parent">好友关注</a> 
      </dd> 
      <dd> 
       <a class="j-menuItem" name="mybookmark" href="#" target="_parent">我的书架</a> 
      </dd> 
      <dd> 
       <a class="j-menuItem" name="mymessage" href="#" target="_parent">我的留言板</a> 
      </dd> 
     </dl> 
    </div> 
   </div> 
   <!--左栏结束--> 
   <!--右栏开始--> 
   <div class="my_main" id="myMainWrap"> 
    <link href="../images/dandanmyIndex/style.css" rel="stylesheet" type="text/css"> 
    <div id="J_userInfoWrap" style="border: 1px solid #DCDCDC;  margin-bottom: -1px;"> 
     <div class="user_message"> 
      <div class="user_info"> 
       <div class="user_photo"> 
        <a href="#" target="_blank"> <img src="../images/dandanmyIndex/3400837480976-1_o.png"> 
         <div class="edit_box" style="display: none;"> 
          <span class="edit">&nbsp;</span> 
          <span class="edit_a">编辑资料</span> 
         </div> <span class="opacity_mask"></span> </a> 
       </div> 
       <a href="#" title="站内信" target="_blank"> 
        <div class="message no_msg"> 
         <span> 0 </span> 
        </div> </a> 
       <span class="user_name" id="J_userNick">153****2767</span> 
      </div> 
      <div class="safety_type"> 
       <div class="vip_box" style="margin-top: 10px;"> 
        <a class="vip_type vip_4" href="#" target="_blank">普通会员</a> 
       </div> 
       <div class="safety_level middle"> 
        <p>账户安全: <span class="level">中</span></p> 
        <p class="level_line"></p> 
        <p> <a href="#" target="_blank"><span class="setting green"><em class="tel"></em>手机已设置</span></a> <a href="#" target="_blank"><span class="setting green"><em class="mail"></em>邮箱已设置</span></a> <a href="#" target="_blank"><span class="setting "><em class="sn"></em>支付密码未设置</span></a> </p> 
       </div> 
      </div> 
      <div class="account_message"> 
       <ul> 
        <li> <a class="pic lpk" href="#" target="_blank"></a> <a href="#" target="_blank">礼品卡</a> <a href="#" target="_blank">0</a> </li> 
        <li> <a class="pic ye" href="#" target="_blank"></a> <a href="#" target="_blank">余额</a> <a href="#" target="_blank">0</a> </li> 
        <li> <a class="pic lq" href="#" target="_blank"></a> <a href="#" target="_blank">礼券</a> <a href="#" target="_blank">0张</a> </li> 
        <li> <a class="pic jf" href="#" target="_blank"></a> <a href="#" target="_blank">积分</a> <a href="#" target="_blank">0</a> </li> 
       </ul> 
      </div> 
     </div> 
    </div> 
    <div id="J_myOrderWrap"> 
     <div class="my_order"> 
      <div class="my_title"> 
       <ul class="tab_list"> 
        <li><a href="#" target="_blank">待付款</a> </li> 
        <li><a href="#" target="_blank">待收货</a> </li> 
        <li><a href="#" target="_blank">待评价</a> </li> 
        <li class="last"><a href="#" target="_blank">全部订单</a></li> 
       </ul> 
       <span class="title">我的订单</span> 
      </div> 
      <div class="none_box"> 
       <h3>您暂时没有未完成交易的订单，为您推荐以下商品</h3> 
       <div class="goode_list"> 
        <a title="幸福小鸡成长绘本系列(套装共4册）" href="#" target="_blank"><img src="../images/dandanmyIndex/24165409-1_x.jpg" alt="幸福小鸡成长绘本系列(套装共4册）"></a> 
        <a title="不可思议的旅程（凯迪克大奖绘本三部曲）" href="#" target="_blank"><img src="../images/dandanmyIndex/24033539-1_x.jpg" alt="不可思议的旅程（凯迪克大奖绘本三部曲）"></a> 
        <a title="极地特快" href="#" target="_blank"><img src="../images/dandanmyIndex/23478611-1_x.jpg" alt="极地特快"></a> 
        <a title="安的种子" href="#" target="_blank"><img src="../images/dandanmyIndex/23667083-1_x.jpg" alt="安的种子"></a> 
        <a title="落叶跳舞" href="#" target="_blank"><img src="../images/dandanmyIndex/23298589-1_x.jpg" alt="落叶跳舞"></a> 
        <a title="好饿的毛毛虫" href="#" target="_blank"><img src="../images/dandanmyIndex/20263101-1_x.jpg" alt="好饿的毛毛虫"></a> 
        <a title="托马斯和朋友精装原著绘本（全20册）" href="#" target="_blank"><img src="../images/dandanmyIndex/23486162-1_x.jpg" alt="托马斯和朋友精装原著绘本（全20册）"></a> 
        <a title="妈妈的手作 (日)长谷川义史 文/图 9787505633247" href="#" target="_blank"><img src="../images/dandanmyIndex/1076990995-1_x.jpg" alt="妈妈的手作 (日)长谷川义史 文/图 9787505633247"></a> 
        <a title="蚯蚓的日记" href="#" target="_blank"><img src="../images/dandanmyIndex/23251414-1_x.jpg" alt="蚯蚓的日记"></a> 
        <a title="小猪佩奇主题绘本（套装5册）" href="#" target="_blank"><img src="../images/dandanmyIndex/24170653-1_x.jpg" alt="小猪佩奇主题绘本（套装5册）"></a> 
        <a title="大卫，圣诞节到啦！" href="#" target="_blank"><img src="../images/dandanmyIndex/23624291-1_x.jpg" alt="大卫，圣诞节到啦！"></a> 
        <a title="大卫上学去" href="#" target="_blank"><img src="../images/dandanmyIndex/23557290-1_x.jpg" alt="大卫上学去"></a> 
        <a title="小狐狸买手套" href="#" target="_blank"><img src="../images/dandanmyIndex/20800366-1_x.jpg" alt="小狐狸买手套"></a> 
        <a title="勇气" href="#" target="_blank"><img src="../images/dandanmyIndex/20771129-1_x.jpg" alt="勇气"></a> 
       </div> 
      </div> 
     </div> 
    </div> 
    <div id="J_myFavoritesWrap"> 
     <div class="my_collect"> 
      <div class="my_title"> 
       <ul class="tab_list"> 
        <li><a id="a_fav_reduce_price" href="#" target="_blank">降价商品</a> </li> 
        <li><a id="a_fav_promotion" href="#" target="_blank">促销商品</a> </li> 
        <li><a id="a_latest_arrive" href="#" target="_blank">新到货商品</a> </li> 
        <li class="last"><a href="#" target="_blank">查看更多</a></li> 
       </ul> 
       <span class="title">商品收藏</span> 
      </div> 
      <div class="collection_box" id="goods_collect_list"> 
       <div class="show_list" id="J-favoritesShoWList"> 
        <div class="none_box"> 
         <img src="../images/dandanmyIndex/monkey.jpg"> 
         <h3>您暂时还没有收藏商品，回首页<a href="#" target="_blank">逛逛去~~</a></h3> 
        </div> 
       </div> 
      </div> 
     </div> 
    </div> 
    <link href="../images/dandanmyIndex/ad.css" rel="stylesheet" type="text/css"> 
    <div class="my_ads new_ads" id="myddhome_ads"> 
     <ul class="ads_tab"> 
      <li><a class="current" id="reco_tab_history" href="#">猜你喜欢</a></li> 
      <li><a id="cpc_tab" href="#">推广商品</a></li> 
      <li><a id="fp_title" href="#">24小时特惠</a></li> 
     </ul> 
     <!-- 根据浏览推荐 start --> 
     <div class="ads_box" id="cpc_1" request_id="201705061553563711_000031597367571485"> 
      <div class="show_list"> 
       <a class="arrow left unable" id="J-cpc1Pre" href="#"></a> 
       <a class="arrow right" id="J-cpc1Next" href="#"></a> 
       <ul class="show_box" id="J-cpc1List" data-pagenum="1"> 
        <li> <a href="#" class="gpic" target="_blank"><img src="../images/dandanmyIndex/24200896-1_l.jpg" width="150" height="150"> <span class="remind_all" style="display: none;"><span class="panel"></span><span class="introduce">洋葱头博士系列（共3册） 晴天下猪文库</span></span></a> <p><span class="price">￥28.80</span><a href="#" target="_blank" class="comment"><span>1</span></a></p> <p class="book"><a href="#" target="_blank">洋葱头博士系列（共3册） 晴天下猪文库</a></p> <p class="author">作者:【日】矢玉四郎</p> </li> 
        <li> <a href="#" class="gpic" target="_blank"><img src="../images/dandanmyIndex/24196631-1_l.jpg" width="150" height="150"> <span class="remind_all" style="display:none;"><span class="panel"></span><span class="introduce">火车头+火车迷（凯迪克金奖、奥斯汀年轻工程师奖作品，套装共2册）</span></span></a> <p><span class="price">￥50.10</span><a href="#" target="_blank" class="comment"><span>206</span></a></p> <p class="book"><a href="#" target="_blank">火车头+火车迷（凯迪克金奖、奥斯汀年轻工程师奖作品，套装共2册）</a></p> <p class="author">作者:〔美〕布莱恩·弗洛卡 著 袁本阳 译</p> </li> 
        <li> <a href="#" class="gpic" target="_blank"><img src="../images/dandanmyIndex/24191747-1_l.jpg" width="150" height="150"> <span class="remind_all" style="display: none;"><span class="panel"></span><span class="introduce">深夜小狗神秘事件</span></span></a> <p><span class="price">￥20.60</span><a href="#" target="_blank" class="comment"><span>23</span></a></p> <p class="book"><a href="#" target="_blank">深夜小狗神秘事件</a></p> <p class="author">作者:〔英〕马克·哈登</p> </li> 
        <li> <a href="#" class="gpic" target="_blank"><img src="../images/dandanmyIndex/24224527-1_l.jpg" width="150" height="150"> <span class="remind_all" style="display:none;"><span class="panel"></span><span class="introduce">暗杀大师：死亡信使（从总统到中学生，37国读者持续追看17年！）</span></span></a> <p><span class="price">￥34.40</span><a href="#" target="_blank" class="comment"><span>103</span></a></p> <p class="book"><a href="#" target="_blank">暗杀大师：死亡信使（从总统到中学生，37国读者持续追看17年！）</a></p> <p class="author">作者:（美）丹尼尔·席尔瓦（Daniel Silva）</p> </li> 
        <li> <a href="#" class="gpic" target="_blank"><img src="../images/dandanmyIndex/24221091-1_l.jpg" width="150" height="150"> <span class="remind_all" style="display:none;"><span class="panel"></span><span class="introduce">天上再见（一部值得全人类阅读的残酷史诗！2013龚古尔奖作品！）</span></span></a> <p><span class="price">￥35.90</span><a href="#" target="_blank" class="comment"><span>43</span></a></p> <p class="book"><a href="#" target="_blank">天上再见（一部值得全人类阅读的残酷史诗！2013龚古尔奖作品！）</a></p> <p class="author">作者:（法）皮耶尔·勒迈特（Pierre Lemaitre）</p> </li> 
        <li> <a href="#" class="gpic" target="_blank"><img src="../images/dandanmyIndex/24200904-1_l.jpg" width="150" height="150"> <span class="remind_all" style="display: none;"><span class="panel"></span><span class="introduce">杀人动机（类型小说教父海岩全新力作！）</span></span></a> <p><span class="price">￥28.70</span><a href="#" target="_blank" class="comment"><span>0</span></a></p> <p class="book"><a href="#" target="_blank">杀人动机（类型小说教父海岩全新力作！）</a></p> <p class="author">作者:海岩 金凌云</p> </li> 
        <li> <a href="#" class="gpic" target="_blank"><img src="../images/dandanmyIndex/24104216-1_l.jpg" width="150" height="150"> <span class="remind_all" style="display:none;"><span class="panel"></span><span class="introduce">男孩的冒险书（少儿绘图版，全三册）</span></span></a> <p><span class="price">￥116.80</span><a href="#" target="_blank" class="comment"><span>6179</span></a></p> <p class="book"><a href="#" target="_blank">男孩的冒险书（少儿绘图版，全三册）</a></p> <p class="author">作者:【英】康恩·伊古尔登，【英】哈尔·伊古尔登</p> </li> 
        <li> <a href="#" class="gpic" target="_blank"><img src="../images/dandanmyIndex/23967348-1_l.jpg" width="150" height="150"> <span class="remind_all" style="display: none;"><span class="panel"></span><span class="introduce">我的第一本地理启蒙书</span></span></a> <p><span class="price">￥36.90</span><a href="#" target="_blank" class="comment"><span>28909</span></a></p> <p class="book"><a href="#" target="_blank">我的第一本地理启蒙书</a></p> <p class="author">作者:郑利强 段虹(绘)</p> </li> 
        <li> <a href="#" class="gpic" target="_blank"><img src="../images/dandanmyIndex/23427436-1_l.jpg" width="150" height="150"> <span class="remind_all" style="display:none;"><span class="panel"></span><span class="introduce">写给儿童的中国历史（全14册）</span></span></a> <p><span class="price">￥184.60</span><a href="#" target="_blank" class="comment"><span>154755</span></a></p> <p class="book"><a href="#" target="_blank">写给儿童的中国历史（全14册）</a></p> <p class="author">作者:陈卫平</p> </li> 
        <li> <a href="#" class="gpic" target="_blank"><img src="../images/dandanmyIndex/21057878-1_l.jpg" width="150" height="150"> <span class="remind_all" style="display:none;"><span class="panel"></span><span class="introduce">神奇校车·动画版（全10册）</span></span></a> <p><span class="price">￥59.00</span><a href="#" target="_blank" class="comment"><span>158701</span></a></p> <p class="book"><a href="#" target="_blank">神奇校车·动画版（全10册）</a></p> <p class="author">作者:乔安娜柯尔 著,布鲁斯迪根 绘 , 漆仰平 译</p> </li> 
        <li style="display: none;"> <a href="#" class="gpic" target="_blank"><img src="../images/dandanmyIndex/23521768-1_l.jpg" width="150" height="150"> <span class="remind_all" style="display:none;"><span class="panel"></span><span class="introduce">学会管自己（歪歪兔独立成长童话）</span></span></a> <p><span class="price">￥66.60</span><a href="#" target="_blank" class="comment"><span>179553</span></a></p> <p class="book"><a href="#" target="_blank">学会管自己（歪歪兔独立成长童话）</a></p> <p class="author">作者:陈梦敏著，张文绮图</p> </li> 
        <li style="display: none;"> <a href="#" class="gpic" target="_blank"><img src="../images/dandanmyIndex/23487613-1_l.jpg" width="150" height="150"> <span class="remind_all" style="display:none;"><span class="panel"></span><span class="introduce">写给儿童的世界历史（全16册）</span></span></a> <p><span class="price">￥214.70</span><a href="#" target="_blank" class="comment"><span>44211</span></a></p> <p class="book"><a href="#" target="_blank">写给儿童的世界历史（全16册）</a></p> <p class="author">作者:陈卫平　著</p> </li> 
        <li style="display: none;"> <a href="#" class="gpic" target="_blank"><img src="../images/dandanmyIndex/22506353-1_l.jpg" width="150" height="150"> <span class="remind_all" style="display:none;"><span class="panel"></span><span class="introduce">草房子</span></span></a> <p><span class="price">￥15.20</span><a href="#" target="_blank" class="comment"><span>127315</span></a></p> <p class="book"><a href="#" target="_blank">草房子</a></p> <p class="author">作者:曹文轩</p> </li> 
        <li style="display: none;"> <a href="#" class="gpic" target="_blank"><img src="../images/dandanmyIndex/24197392-1_l.jpg" width="150" height="150"> <span class="remind_all" style="display:none;"><span class="panel"></span><span class="introduce">注册会计师2017考试教材 2017年注册会计师教材全国统一考试教材:会计 注册会计师2017考试用书 注册会计师考试教材2017 2017注册会计师考试用书</span></span></a> <p><span class="price">￥44.80</span><a href="#" target="_blank" class="comment"><span>1157</span></a></p> <p class="book"><a href="#" target="_blank">注册会计师2017考试教材 2017年注册会计师教材全国统一考试教材:会计 注册会计师2017考试用书 注册会计师考试教材2017 2017注册会计师考试用书</a></p> <p class="author">作者:中国注册会计师协会组织　编写</p> </li> 
        <li style="display: none;"> <a href="#" class="gpic" target="_blank"><img src="../images/dandanmyIndex/23812473-1_l.jpg" width="150" height="150"> <span class="remind_all" style="display:none;"><span class="panel"></span><span class="introduce">郑渊洁十二生肖童话（全12册）（内含《父与子》这篇文章，央视“朗读者”第2期郑渊洁与父亲郑洪升深情共读）</span></span></a> <p><span class="price">￥121.00</span><a href="#" target="_blank" class="comment"><span>23093</span></a></p> <p class="book"><a href="#" target="_blank">郑渊洁十二生肖童话（全12册）（内含《父与子》这篇文章，央视“朗读者”第2期郑渊洁与父亲郑洪升深情共读）</a></p> <p class="author">作者:郑渊洁</p> </li> 
        <li style="display: none;"> <a href="#" class="gpic" target="_blank"><img src="../images/dandanmyIndex/23638052-1_l.jpg" width="150" height="150"> <span class="remind_all" style="display:none;"><span class="panel"></span><span class="introduce">身边的科学</span></span></a> <p><span class="price">￥33.20</span><a href="#" target="_blank" class="comment"><span>8251</span></a></p> <p class="book"><a href="#" target="_blank">身边的科学</a></p> <p class="author">作者:小石新八 （日）,荒贺贤二 绘, 张羽佳 译</p> </li> 
        <li style="display: none;"> <a href="#" class="gpic" target="_blank"><img src="../images/dandanmyIndex/24197665-1_l.jpg" width="150" height="150"> <span class="remind_all" style="display:none;"><span class="panel"></span><span class="introduce">注册会计师2017考试教材 2017年注册会计师教材全国统一考试教材:审计 注册会计师2017考试用书 注册会计师考试教材2017 2017注册会计师考试用书</span></span></a> <p><span class="price">￥47.00</span><a href="#" target="_blank" class="comment"><span>518</span></a></p> <p class="book"><a href="#" target="_blank">注册会计师2017考试教材 2017年注册会计师教材全国统一考试教材:审计 注册会计师2017考试用书 注册会计师考试教材2017 2017注册会计师考试用书</a></p> <p class="author">作者:中国注册会计师协会组织　编写</p> </li> 
        <li style="display: none;"> <a href="#" class="gpic" target="_blank"><img src="../images/dandanmyIndex/24197394-1_l.jpg" width="150" height="150"> <span class="remind_all" style="display:none;"><span class="panel"></span><span class="introduce">注册会计师2017考试教材 2017年注册会计师教材全国统一考试教材:财务成本管理 注册会计师2017考试用书 注册会计师考试教材2017 2017注册会计师考试用书</span></span></a> <p><span class="price">￥36.00</span><a href="#" target="_blank" class="comment"><span>499</span></a></p> <p class="book"><a href="#" target="_blank">注册会计师2017考试教材 2017年注册会计师教材全国统一考试教材:财务成本管理 注册会计师2017考试用书 注册会计师考试教材2017 2017注册会计师考试用书</a></p> <p class="author">作者:中国注册会计师协会组织　编写</p> </li> 
        <li style="display: none;"> <a href="#" class="gpic" target="_blank"><img src="../images/dandanmyIndex/24221024-1_l.jpg" width="150" height="150"> <span class="remind_all" style="display:none;"><span class="panel"></span><span class="introduce">东奥注册会计师2017 轻松过关1 2017年注册会计师考试应试指导及全真模拟测试 会计</span></span></a> <p><span class="price">￥40.80</span><a href="#" target="_blank" class="comment"><span>305</span></a></p> <p class="book"><a href="#" target="_blank">东奥注册会计师2017 轻松过关1 2017年注册会计师考试应试指导及全真模拟测试 会计</a></p> <p class="author">作者:张志凤</p> </li> 
        <li style="display: none;"> <a href="#" class="gpic" target="_blank"><img src="../images/dandanmyIndex/23700376-1_l.jpg" width="150" height="150"> <span class="remind_all" style="display:none;"><span class="panel"></span><span class="introduce">米小圈上学记（套装12册）</span></span></a> <p><span class="price">￥128.60</span><a href="#" target="_blank" class="comment"><span>20054</span></a></p> <p class="book"><a href="#" target="_blank">米小圈上学记（套装12册）</a></p> <p class="author">作者:北猫</p> </li> 
        <li style="display: none;"> <a href="#" class="gpic" target="_blank"><img src="../images/dandanmyIndex/24221036-1_l.jpg" width="150" height="150"> <span class="remind_all" style="display:none;"><span class="panel"></span><span class="introduce">东奥注册会计师2017 轻松过关1 2017年注册会计师考试应试指导及全真模拟测试 税法 上下册</span></span></a> <p><span class="price">￥36.90</span><a href="#" target="_blank" class="comment"><span>36</span></a></p> <p class="book"><a href="#" target="_blank">东奥注册会计师2017 轻松过关1 2017年注册会计师考试应试指导及全真模拟测试 税法 上下册</a></p> <p class="author">作者:刘颖</p> </li> 
        <li style="display: none;"> <a href="#" class="gpic" target="_blank"><img src="../images/dandanmyIndex/24198400-1_l.jpg" width="150" height="150"> <span class="remind_all" style="display:none;"><span class="panel"></span><span class="introduce">我喜欢生命本来的样子(周国平经典散文作品集,亲笔签名版随机发售)</span></span></a> <p><span class="price">￥35.60</span><a href="#" target="_blank" class="comment"><span>468</span></a></p> <p class="book"><a href="#" target="_blank">我喜欢生命本来的样子(周国平经典散文作品集,亲笔签名版随机发售)</a></p> <p class="author">作者:周国平</p> </li> 
        <li style="display: none;"> <a href="#" class="gpic" target="_blank"><img src="../images/dandanmyIndex/22819334-1_l.jpg" width="150" height="150"> <span class="remind_all" style="display:none;"><span class="panel"></span><span class="introduce">围城</span></span></a> <p><span class="price">￥22.00</span><a href="#" target="_blank" class="comment"><span>156288</span></a></p> <p class="book"><a href="#" target="_blank">围城</a></p> <p class="author">作者:钱钟书　著</p> </li> 
        <li style="display: none;"> <a href="#" class="gpic" target="_blank"><img src="../images/dandanmyIndex/23464478-1_l.jpg" width="150" height="150"> <span class="remind_all" style="display:none;"><span class="panel"></span><span class="introduce">解忧杂货店</span></span></a> <p><span class="price">￥27.30</span><a href="#" target="_blank" class="comment"><span>658215</span></a></p> <p class="book"><a href="#" target="_blank">解忧杂货店</a></p> <p class="author">作者:(日)东野圭吾</p> </li> 
        <li style="display: none;"> <a href="#" class="gpic" target="_blank"><img src="../images/dandanmyIndex/23274638-1_l.jpg" width="150" height="150"> <span class="remind_all" style="display:none;"><span class="panel"></span><span class="introduce">追风筝的人</span></span></a> <p><span class="price">￥14.50</span><a href="#" target="_blank" class="comment"><span>1221113</span></a></p> <p class="book"><a href="#" target="_blank">追风筝的人</a></p> <p class="author">作者:(美)胡塞尼</p> </li> 
        <li style="display: none;"> <a href="#" class="gpic" target="_blank"><img src="../images/dandanmyIndex/24027835-1_l.jpg" width="150" height="150"> <span class="remind_all" style="display:none;"><span class="panel"></span><span class="introduce">2016中国好书获奖作品 北鸢</span></span></a> <p><span class="price">￥35.50</span><a href="#" target="_blank" class="comment"><span>10693</span></a></p> <p class="book"><a href="#" target="_blank">2016中国好书获奖作品 北鸢</a></p> <p class="author">作者:葛亮</p> </li> 
        <li style="display: none;"> <a href="#" class="gpic" target="_blank"><img src="../images/dandanmyIndex/24168390-1_l.jpg" width="150" height="150"> <span class="remind_all" style="display:none;"><span class="panel"></span><span class="introduce">人民的名义</span></span></a> <p><span class="price">￥35.20</span><a href="#" target="_blank" class="comment"><span>2778</span></a></p> <p class="book"><a href="#" target="_blank">人民的名义</a></p> <p class="author">作者:周梅森</p> </li> 
        <li style="display: none;"> <a href="#" class="gpic" target="_blank"><img src="../images/dandanmyIndex/22864990-1_l.jpg" width="150" height="150"> <span class="remind_all" style="display:none;"><span class="panel"></span><span class="introduce">活着（余华经典著作）</span></span></a> <p><span class="price">￥13.00</span><a href="#" target="_blank" class="comment"><span>486688</span></a></p> <p class="book"><a href="#" target="_blank">活着（余华经典著作）</a></p> <p class="author">作者:余华</p> </li> 
        <li style="display: none;"> <a href="#" class="gpic" target="_blank"><img src="../images/dandanmyIndex/24164419-1_l.jpg" width="150" height="150"> <span class="remind_all" style="display:none;"><span class="panel"></span><span class="introduce">好好说话：新鲜有趣的话术精进技巧</span></span></a> <p><span class="price">￥29.40</span><a href="#" target="_blank" class="comment"><span>16156</span></a></p> <p class="book"><a href="#" target="_blank">好好说话：新鲜有趣的话术精进技巧</a></p> <p class="author">作者:马东 出品 马薇薇 黄执中 周玄毅 等著</p> </li> 
        <li style="display: none;"> <a href="#" class="gpic" target="_blank"><img src="../images/dandanmyIndex/21005473-1_l.jpg" width="150" height="150"> <span class="remind_all" style="display:none;"><span class="panel"></span><span class="introduce">神奇校车·图画书版（全11册）</span></span></a> <p><span class="price">￥68.60</span><a href="#" target="_blank" class="comment"><span>518399</span></a></p> <p class="book"><a href="#" target="_blank">神奇校车·图画书版（全11册）</a></p> <p class="author">作者:(美)乔安娜柯尔 著 ,(美)布鲁斯·迪根 图</p> </li> 
        <li style="display: none;"> <a href="#" class="gpic" target="_blank"><img src="../images/dandanmyIndex/22935553-1_l.jpg" width="150" height="150"> <span class="remind_all" style="display:none;"><span class="panel"></span><span class="introduce">白夜行（东野圭吾推理小说无冕之王。全新精装典藏版。）</span></span></a> <p><span class="price">￥27.30</span><a href="#" target="_blank" class="comment"><span>449614</span></a></p> <p class="book"><a href="#" target="_blank">白夜行（东野圭吾推理小说无冕之王。全新精装典藏版。）</a></p> <p class="author">作者:(日)东野圭吾</p> </li> 
        <li style="display: none;"> <a href="#" class="gpic" target="_blank"><img src="../images/dandanmyIndex/23353342-1_l.jpg" width="150" height="150"> <span class="remind_all" style="display:none;"><span class="panel"></span><span class="introduce">从你的全世界路过</span></span></a> <p><span class="price">￥25.90</span><a href="#" target="_blank" class="comment"><span>782417</span></a></p> <p class="book"><a href="#" target="_blank">从你的全世界路过</a></p> <p class="author">作者:张嘉佳 著</p> </li> 
        <li style="display: none;"> <a href="#" class="gpic" target="_blank"><img src="../images/dandanmyIndex/21112222-1_l.jpg" width="150" height="150"> <span class="remind_all" style="display:none;"><span class="panel"></span><span class="introduce">浮生六记（精装珍藏本）（一部流传200多年的国文珍品，一部影响深远的清代文学扛鼎之作，林语堂、俞平伯、曹聚仁等推崇备至的文学精品。）</span></span></a> <p><span class="price">￥17.90</span><a href="#" target="_blank" class="comment"><span>41332</span></a></p> <p class="book"><a href="#" target="_blank">浮生六记（精装珍藏本）（一部流传200多年的国文珍品，一部影响深远的清代文学扛鼎之作，林语堂、俞平伯、曹聚仁等推崇备至的文学精品。）</a></p> <p class="author">作者:沈复</p> </li> 
        <li style="display: none;"> <a href="#" class="gpic" target="_blank"><img src="../images/dandanmyIndex/23523508-1_l.jpg" width="150" height="150"> <span class="remind_all" style="display:none;"><span class="panel"></span><span class="introduce">《地图（人文版）》手绘世界地图·儿童百科绘本</span></span></a> <p><span class="price">￥51.00</span><a href="#" target="_blank" class="comment"><span>299041</span></a></p> <p class="book"><a href="#" target="_blank">《地图（人文版）》手绘世界地图·儿童百科绘本</a></p> <p class="author">作者:【波】亚历山德拉·米热林斯卡 丹尼尔·米热林斯基　著</p> </li> 
        <li style="display: none;"> <a href="#" class="gpic" target="_blank"><img src="../images/dandanmyIndex/22880790-1_l.jpg" width="150" height="150"> <span class="remind_all" style="display:none;"><span class="panel"></span><span class="introduce">我们仨（新版）</span></span></a> <p><span class="price">￥11.50</span><a href="#" target="_blank" class="comment"><span>366882</span></a></p> <p class="book"><a href="#" target="_blank">我们仨（新版）</a></p> <p class="author">作者:杨绛</p> </li> 
        <li style="display: none;"> <a href="#" class="gpic" target="_blank"><img src="../images/dandanmyIndex/23055003-1_l.jpg" width="150" height="150"> <span class="remind_all" style="display:none;"><span class="panel"></span><span class="introduce">小王子（畅销200万册，官方认证简体中文版）</span></span></a> <p><span class="price">￥16.00</span><a href="#" target="_blank" class="comment"><span>408118</span></a></p> <p class="book"><a href="#" target="_blank">小王子（畅销200万册，官方认证简体中文版）</a></p> <p class="author">作者:(法)安托万·德·圣埃克苏佩里</p> </li> 
        <li style="display: none;"> <a href="#" class="gpic" target="_blank"><img src="../images/dandanmyIndex/23685329-1_l.jpg" width="150" height="150"> <span class="remind_all" style="display:none;"><span class="panel"></span><span class="introduce">岛上书店（每个人的生命中，都有无比艰难的那一年，将人生变得美好而辽阔）</span></span></a> <p><span class="price">￥24.20</span><a href="#" target="_blank" class="comment"><span>370792</span></a></p> <p class="book"><a href="#" target="_blank">岛上书店（每个人的生命中，都有无比艰难的那一年，将人生变得美好而辽阔）</a></p> <p class="author">作者:（美）加·泽文 著 Gabrielle Zevin，译者：孙仲旭 李玉瑶</p> </li> 
        <li style="display: none;"> <a href="#" class="gpic" target="_blank"><img src="../images/dandanmyIndex/22788959-1_l.jpg" width="150" height="150"> <span class="remind_all" style="display:none;"><span class="panel"></span><span class="introduce">偷影子的人</span></span></a> <p><span class="price">￥21.50</span><a href="#" target="_blank" class="comment"><span>658557</span></a></p> <p class="book"><a href="#" target="_blank">偷影子的人</a></p> <p class="author">作者:(法)马克·李维</p> </li> 
        <li style="display: none;"> <a href="#" class="gpic" target="_blank"><img src="../images/dandanmyIndex/23694647-1_l.jpg" width="150" height="150"> <span class="remind_all" style="display:none;"><span class="panel"></span><span class="introduce">摆渡人</span></span></a> <p><span class="price">￥17.00</span><a href="#" target="_blank" class="comment"><span>389411</span></a></p> <p class="book"><a href="#" target="_blank">摆渡人</a></p> <p class="author">作者:[英]克莱儿·麦克福尔</p> </li> 
        <li style="display: none;"> <a href="#" class="gpic" target="_blank"><img src="../images/dandanmyIndex/22616096-1_l.jpg" width="150" height="150"> <span class="remind_all" style="display:none;"><span class="panel"></span><span class="introduce">平凡的世界（全三册）</span></span></a> <p><span class="price">￥55.00</span><a href="#" target="_blank" class="comment"><span>449508</span></a></p> <p class="book"><a href="#" target="_blank">平凡的世界（全三册）</a></p> <p class="author">作者:路遥　著</p> </li> 
        <li style="display: none;"> <a href="#" class="gpic" target="_blank"><img src="../images/dandanmyIndex/23427436-1_l.jpg" width="150" height="150"> <span class="remind_all" style="display:none;"><span class="panel"></span><span class="introduce">写给儿童的中国历史（全14册）</span></span></a> <p><span class="price">￥184.60</span><a href="#" target="_blank" class="comment"><span>154755</span></a></p> <p class="book"><a href="#" target="_blank">写给儿童的中国历史（全14册）</a></p> <p class="author">作者:陈卫平</p> </li> 
        <li style="display: none;"> <a href="#" class="gpic" target="_blank"><img src="../images/dandanmyIndex/23490646-1_l.jpg" width="150" height="150"> <span class="remind_all" style="display:none;"><span class="panel"></span><span class="introduce">嫌疑人X的献身</span></span></a> <p><span class="price">￥24.20</span><a href="#" target="_blank" class="comment"><span>200636</span></a></p> <p class="book"><a href="#" target="_blank">嫌疑人X的献身</a></p> <p class="author">作者:东野圭吾 著，刘子倩 译</p> </li> 
        <li style="display: none;"> <a href="#" class="gpic" target="_blank"><img src="../images/dandanmyIndex/9319968-1_l.jpg" width="150" height="150"> <span class="remind_all" style="display:none;"><span class="panel"></span><span class="introduce">小熊宝宝绘本（全15册）</span></span></a> <p><span class="price">￥59.20</span><a href="#" target="_blank" class="comment"><span>422063</span></a></p> <p class="book"><a href="#" target="_blank">小熊宝宝绘本（全15册）</a></p> <p class="author">作者:佐佐木洋子 著，蒲蒲兰 译</p> </li> 
        <li style="display: none;"> <a href="#" class="gpic" target="_blank"><img src="../images/dandanmyIndex/24170700-1_l.jpg" width="150" height="150"> <span class="remind_all" style="display:none;"><span class="panel"></span><span class="introduce">未来简史（《人类简史》作者全新力作！团购更优惠010-57993149）</span></span></a> <p><span class="price">￥51.00</span><a href="#" target="_blank" class="comment"><span>27163</span></a></p> <p class="book"><a href="#" target="_blank">未来简史（《人类简史》作者全新力作！团购更优惠010-57993149）</a></p> <p class="author">作者:［以色列］尤瓦尔·赫拉利</p> </li> 
        <li style="display: none;"> <a href="#" class="gpic" target="_blank"><img src="../images/dandanmyIndex/23964981-1_l.jpg" width="150" height="150"> <span class="remind_all" style="display:none;"><span class="panel"></span><span class="introduce">自在独行 贾平凹的独行世界</span></span></a> <p><span class="price">￥28.10</span><a href="#" target="_blank" class="comment"><span>76788</span></a></p> <p class="book"><a href="#" target="_blank">自在独行 贾平凹的独行世界</a></p> <p class="author">作者:贾平凹 著</p> </li> 
        <li style="display: none;"> <a href="#" class="gpic" target="_blank"><img src="../images/dandanmyIndex/24044343-1_l.jpg" width="150" height="150"> <span class="remind_all" style="display:none;"><span class="panel"></span><span class="introduce">写给儿童的中国地理（全14册）</span></span></a> <p><span class="price">￥203.80</span><a href="#" target="_blank" class="comment"><span>18747</span></a></p> <p class="book"><a href="#" target="_blank">写给儿童的中国地理（全14册）</a></p> <p class="author">作者:陈卫平、陈雨岚、王存立、刘兴诗等</p> </li> 
        <li style="display: none;"> <a href="#" class="gpic" target="_blank"><img src="../images/dandanmyIndex/24197392-1_l.jpg" width="150" height="150"> <span class="remind_all" style="display:none;"><span class="panel"></span><span class="introduce">注册会计师2017考试教材 2017年注册会计师教材全国统一考试教材:会计 注册会计师2017考试用书 注册会计师考试教材2017 2017注册会计师考试用书</span></span></a> <p><span class="price">￥44.80</span><a href="#" target="_blank" class="comment"><span>1157</span></a></p> <p class="book"><a href="#" target="_blank">注册会计师2017考试教材 2017年注册会计师教材全国统一考试教材:会计 注册会计师2017考试用书 注册会计师考试教材2017 2017注册会计师考试用书</a></p> <p class="author">作者:中国注册会计师协会组织　编写</p> </li> 
        <li style="display: none;"> <a href="#" class="gpic" target="_blank"><img src="../images/dandanmyIndex/21090357-1_l.jpg" width="150" height="150"> <span class="remind_all" style="display:none;"><span class="panel"></span><span class="introduce">百年孤独</span></span></a> <p><span class="price">￥29.60</span><a href="#" target="_blank" class="comment"><span>658420</span></a></p> <p class="book"><a href="#" target="_blank">百年孤独</a></p> <p class="author">作者:(哥伦)加西亚·马尔克斯</p> </li> 
        <li style="display: none;"> <a href="#" class="gpic" target="_blank"><img src="../images/dandanmyIndex/23822200-1_l.jpg" width="150" height="150"> <span class="remind_all" style="display:none;"><span class="panel"></span><span class="introduce">天才在左疯子在右（完整版）</span></span></a> <p><span class="price">￥19.90</span><a href="#" target="_blank" class="comment"><span>209201</span></a></p> <p class="book"><a href="#" target="_blank">天才在左疯子在右（完整版）</a></p> <p class="author">作者:高铭　著</p> </li> 
        <li style="display: none;"> <a href="#" class="gpic" target="_blank"><img src="../images/dandanmyIndex/23257828-1_l.jpg" width="150" height="150"> <span class="remind_all" style="display:none;"><span class="panel"></span><span class="introduce">不一样的卡梅拉手绘本（1-12册）</span></span></a> <p><span class="price">￥66.70</span><a href="#" target="_blank" class="comment"><span>243119</span></a></p> <p class="book"><a href="#" target="_blank">不一样的卡梅拉手绘本（1-12册）</a></p> <p class="author">作者:（法）克利斯提昂 约里波瓦著郑迪蔚译 ,（法）克利斯提昂 艾利施绘</p> </li> 
       </ul> 
      </div> 
     </div> 
     <!-- 根据浏览推荐 end --> 
     <!-- 推广商品 start (注：推广商品原名叫热卖商品)--> 
     <div class="ads_box" id="cpc_0" style="display: none;"> 
      <div class="show_list"> 
       <ul class="show_box" id="J-cpc0List" data-pagenum="1"></ul> 
      </div> 
     </div> 
     <!-- 推广商品 end --> 
     <!-- 24小时特惠 start --> 
     <div class="ads_box" id="fp" style="display: none;"> 
      <div class="show_list"> 
       <a class="arrow left unable" id="J-fpPre" href="#"></a> 
       <a class="arrow right" id="J-fpNext" href="#"></a> 
       <ul class="show_box" id="J-fpList" data-pagenum="1"></ul> 
      </div> 
     </div> 
     <!-- 24小时特惠 end --> 
    </div> 
    <input type="hidden" id="J_exposureDegreeUrl" value="http://per.dangdang.com/"> 
   </div> 
   <!--右栏结束--> 
  </div>  
 
 
 </article>
 
 
  <footer style="clear: both;"> 
   <div class="w"> 
    <div id="footer-2013"> 
     <div class="links"> 
      <a rel="nofollow" target="_blank" href="#"> 关于我们 </a> | 
      <a rel="nofollow" target="_blank" href="#"> 联系我们 </a> | 
      <a rel="nofollow" target="_blank" href="#"> 人才招聘 </a> | 
      <a rel="nofollow" target="_blank" href="#"> 商家入驻 </a> | 
      <a rel="nofollow" target="_blank" href="#"> 广告服务 </a> | 
      <a target="_blank" href="#" clstag="pageclick|keycount|20150112ABD|9">English Site</a> 
     </div> 
     <div class="copyright">
       Copyright&nbsp;©&nbsp;2017-2017&nbsp;&nbsp;学习专用&nbsp;无商业意图 
     </div> 
    </div> 
   </div> 
  </footer> 
  <div class="advice" style="right:30px;"> 
   <div></div> 
   <p align="center">意见</p> 
   <p align="center">反馈</p> 
  </div> 
  <div class="erweima"></div> 
  <script src="<%=basePath %>js/jquery-1.9.1.js"></script> 
  <script src="<%=basePath %>js/basic.js"></script>  
 </body>
</html>