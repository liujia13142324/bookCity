<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<html>
 <head></head>
 <body>

<%
String basePath = "../";
%>

  <meta charset="utf-8"> <li>
  <title>欢迎--小书屋</title> 
  <meta content="小书屋，心灵休憩的角落" name="Description"> 
  <link href="../css/css_dan1/my_archives.css" rel="stylesheet" type="text/css"> 
  <link href="../css/css_dan1/dangdang.css" rel="stylesheet" type="text/css"> 
  
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
  <div class="account_right" id="your_position" style="border: 1px solid #dcdcdc; margin-top: 0px; margin-left: 50px;"> 
   <div> 
    <div class="archives_title"> 
     <h2>编辑个人档案<span class=" gray666 f12 bnone"> (带<span class="red">*</span>号的项目为必填项)</span></h2> 
    </div> 
    <!--更改头像--> 
    <div class="edit_message"> 
     <div class="edit_photo"> 
      <div class="photo_prev"> 
       <div class="photo_prev_head" style="margin-top: 80px;"> 
        <img id="img_head_select" src="../images/myInfo/pic_head_1.gif" width="96" height="96"> 
       </div> 
      </div> 
      <div class="photo_browse"> 
       <input type="hidden" id="hiddenphototypeid" value="1"> 
       <input type="hidden" id="hinddenimgindex" value="1"> 
       <input type="hidden" name="is_from_mydd" value="false"> 
       <!--上传状态开始--> 
       <!--上传状态结束--> 
       <p class="go_choice2">您可以在下方选择自己喜欢的头像：</p> 
       <span class=" gray_b3">(更新后的头像将稍后显示在其它页面)</span> 
       <div class="clear"></div> 
       <div class="all_photo_title"> 
        <div class="all_photo_title_other" id="head_type_0" onmouseover="javascript:ShowHeadPhotoType(0)" classname="all_photo_title_other">
          酷男 
        </div> 
        <div class="all_photo_title_mo" id="head_type_1" onmouseover="javascript:ShowHeadPhotoType(1)" classname="all_photo_title_mo">
          靓女 
        </div> 
        <div class="all_photo_title_other" id="head_type_2" onmouseover="javascript:ShowHeadPhotoType(2)" classname="all_photo_title_other">
          可爱动物 
        </div> 
        <div class="all_photo_title_other" id="head_type_3" onmouseover="javascript:ShowHeadPhotoType(3)" classname="all_photo_title_other">
          个性 
        </div> 
       </div> 
       <div class="clear"></div> 
       <div class="all_photo" id="all_photo_0" style="display: none;"> 
        <div id="head_index_1" onmouseover="mouseoverchangeclass(1)" onmouseout="mouseoutchangeclass(1)" class="mouse_active" classname="mouse_active"> 
         <a onclick="javascript:ChangeClientHeadPhoto(1)" style="cursor:pointer"><img src="../images/myInfo/pic_head_1_s.gif"></a> 
        </div> 
        <div id="head_index_2" onmouseover="mouseoverchangeclass(2)" onmouseout="mouseoutchangeclass(2)" class="mouse_out" classname=""> 
         <a onclick="javascript:ChangeClientHeadPhoto(2)" style="cursor:pointer"><img src="../images/myInfo/pic_head_2_s.gif"></a> 
        </div> 
        <div id="head_index_3" onmouseover="mouseoverchangeclass(3)" onmouseout="mouseoutchangeclass(3)" class="mouse_out" classname=""> 
         <a onclick="javascript:ChangeClientHeadPhoto(3)" style="cursor:pointer"><img src="../images/myInfo/pic_head_3_s.gif"></a> 
        </div> 
        <div id="head_index_4" onmouseover="mouseoverchangeclass(4)" onmouseout="mouseoutchangeclass(4)" class="" classname=""> 
         <a onclick="javascript:ChangeClientHeadPhoto(4)" style="cursor:pointer"><img src="../images/myInfo/pic_head_4_s.gif"></a> 
        </div> 
        <div id="head_index_5" onmouseover="mouseoverchangeclass(5)" onmouseout="mouseoutchangeclass(5)" class="" classname=""> 
         <a onclick="javascript:ChangeClientHeadPhoto(5)" style="cursor:pointer"><img src="../images/myInfo/pic_head_5_s.gif"></a> 
        </div> 
        <div id="head_index_6" onmouseover="mouseoverchangeclass(6)" onmouseout="mouseoutchangeclass(6)" class="" classname=""> 
         <a onclick="javascript:ChangeClientHeadPhoto(6)" style="cursor:pointer"><img src="../images/myInfo/pic_head_6_s.gif"></a> 
        </div> 
        <div id="head_index_7" onmouseover="mouseoverchangeclass(7)" onmouseout="mouseoutchangeclass(7)" class="" classname=""> 
         <a onclick="javascript:ChangeClientHeadPhoto(7)" style="cursor:pointer"><img src="../images/myInfo/pic_head_7_s.gif"></a> 
        </div> 
        <div id="head_index_8" onmouseover="mouseoverchangeclass(8)" onmouseout="mouseoutchangeclass(8)" class="" classname=""> 
         <a onclick="javascript:ChangeClientHeadPhoto(8)" style="cursor:pointer"><img src="../images/myInfo/pic_head_8_s.gif"></a> 
        </div> 
        <div id="head_index_9" onmouseover="mouseoverchangeclass(9)" onmouseout="mouseoutchangeclass(9)" class="" classname=""> 
         <a onclick="javascript:ChangeClientHeadPhoto(9)" style="cursor:pointer"><img src="../images/myInfo/pic_head_9_s.gif"></a> 
        </div> 
        <div id="head_index_10" onmouseover="mouseoverchangeclass(10)" onmouseout="mouseoutchangeclass(10)" class="" classname=""> 
         <a onclick="javascript:ChangeClientHeadPhoto(10)" style="cursor:pointer"><img src="../images/myInfo/pic_head_10_s.gif"></a> 
        </div> 
       </div> 
       <div class="all_photo" id="all_photo_1" style="display: block;"> 
        <div id="head_index_11" onmouseover="mouseoverchangeclass(11)" onmouseout="mouseoutchangeclass(11)" class="" classname=""> 
         <a onclick="javascript:ChangeClientHeadPhoto(11)"><img src="../images/myInfo/pic_head_11_s.gif"></a> 
        </div> 
        <div id="head_index_12" onmouseover="mouseoverchangeclass(12)" onmouseout="mouseoutchangeclass(12)" class="" classname=""> 
         <a onclick="javascript:ChangeClientHeadPhoto(12)"><img src="../images/myInfo/pic_head_12_s.gif"></a> 
        </div> 
        <div id="head_index_13" onmouseover="mouseoverchangeclass(13)" onmouseout="mouseoutchangeclass(13)" class="" classname=""> 
         <a onclick="javascript:ChangeClientHeadPhoto(13)"><img src="../images/myInfo/pic_head_13_s.gif"></a> 
        </div> 
        <div id="head_index_14" onmouseover="mouseoverchangeclass(14)" onmouseout="mouseoutchangeclass(14)" class="" classname=""> 
         <a onclick="javascript:ChangeClientHeadPhoto(14)"><img src="../images/myInfo/pic_head_14_s.gif"></a> 
        </div> 
        <div id="head_index_15" onmouseover="mouseoverchangeclass(15)" onmouseout="mouseoutchangeclass(15)" class="" classname=""> 
         <a onclick="javascript:ChangeClientHeadPhoto(15)"><img src="../images/myInfo/pic_head_15_s.gif"></a> 
        </div> 
        <div id="head_index_16" onmouseover="mouseoverchangeclass(16)" onmouseout="mouseoutchangeclass(16)" class="" classname=""> 
         <a onclick="javascript:ChangeClientHeadPhoto(16)"><img src="../images/myInfo/pic_head_16_s.gif"></a> 
        </div> 
        <div id="head_index_17" onmouseover="mouseoverchangeclass(17)" onmouseout="mouseoutchangeclass(17)" class="" classname=""> 
         <a onclick="javascript:ChangeClientHeadPhoto(17)"><img src="../images/myInfo/pic_head_17_s.gif"></a> 
        </div> 
        <div id="head_index_18" onmouseover="mouseoverchangeclass(18)" onmouseout="mouseoutchangeclass(18)" class="mouse_out" classname=""> 
         <a onclick="javascript:ChangeClientHeadPhoto(18)"><img src="../images/myInfo/pic_head_18_s.gif"></a> 
        </div> 
        <div id="head_index_19" onmouseover="mouseoverchangeclass(19)" onmouseout="mouseoutchangeclass(19)" class="" classname=""> 
         <a onclick="javascript:ChangeClientHeadPhoto(19)"><img src="../images/myInfo/pic_head_19_s.gif"></a> 
        </div> 
        <div id="head_index_20" onmouseover="mouseoverchangeclass(20)" onmouseout="mouseoutchangeclass(20)" class="" classname=""> 
         <a onclick="javascript:ChangeClientHeadPhoto(20)"><img src="../images/myInfo/pic_head_20_s.gif"></a> 
        </div> 
       </div> 
       <div class="all_photo" id="all_photo_2" style="display :none "> 
        <div id="head_index_21" onmouseover="mouseoverchangeclass(21)" onmouseout="mouseoutchangeclass(21)" class="" classname=""> 
         <a onclick="javascript:ChangeClientHeadPhoto(21)"><img src="../images/myInfo/pic_head_21_s.gif"></a> 
        </div> 
        <div id="head_index_22" onmouseover="mouseoverchangeclass(22)" onmouseout="mouseoutchangeclass(22)" class="" classname=""> 
         <a onclick="javascript:ChangeClientHeadPhoto(22)"><img src="../images/myInfo/pic_head_22_s.gif"></a> 
        </div> 
        <div id="head_index_23" onmouseover="mouseoverchangeclass(23)" onmouseout="mouseoutchangeclass(23)" class="" classname=""> 
         <a onclick="javascript:ChangeClientHeadPhoto(23)"><img src="../images/myInfo/pic_head_23_s.gif"></a> 
        </div> 
        <div id="head_index_24" onmouseover="mouseoverchangeclass(24)" onmouseout="mouseoutchangeclass(24)" class="" classname=""> 
         <a onclick="javascript:ChangeClientHeadPhoto(24)"><img src="../images/myInfo/pic_head_24_s.gif"></a> 
        </div> 
        <div id="head_index_25" onmouseover="mouseoverchangeclass(25)" onmouseout="mouseoutchangeclass(25)" class="" classname=""> 
         <a onclick="javascript:ChangeClientHeadPhoto(25)"><img src="../images/myInfo/pic_head_25_s.gif"></a> 
        </div> 
        <div id="head_index_26" onmouseover="mouseoverchangeclass(26)" onmouseout="mouseoutchangeclass(26)" class="" classname=""> 
         <a onclick="javascript:ChangeClientHeadPhoto(26)"><img src="../images/myInfo/pic_head_26_s.gif"></a> 
        </div> 
        <div id="head_index_27" onmouseover="mouseoverchangeclass(27)" onmouseout="mouseoutchangeclass(27)" class="" classname=""> 
         <a onclick="javascript:ChangeClientHeadPhoto(27)"><img src="../images/myInfo/pic_head_27_s.gif"></a> 
        </div> 
        <div id="head_index_28" onmouseover="mouseoverchangeclass(28)" onmouseout="mouseoutchangeclass(28)" class="" classname=""> 
         <a onclick="javascript:ChangeClientHeadPhoto(28)"><img src="../images/myInfo/pic_head_28_s.gif"></a> 
        </div> 
        <div id="head_index_29" onmouseover="mouseoverchangeclass(29)" onmouseout="mouseoutchangeclass(29)" class="" classname=""> 
         <a onclick="javascript:ChangeClientHeadPhoto(29)"><img src="../images/myInfo/pic_head_29_s.gif"></a> 
        </div> 
        <div id="head_index_30" onmouseover="mouseoverchangeclass(30)" onmouseout="mouseoutchangeclass(30)" class="" classname=""> 
         <a onclick="javascript:ChangeClientHeadPhoto(30)"><img src="../images/myInfo/pic_head_30_s.gif"></a> 
        </div> 
       </div> 
       <div class="all_photo" id="all_photo_3" style="display :none "> 
        <div id="head_index_31" onmouseover="mouseoverchangeclass(31)" onmouseout="mouseoutchangeclass(31)" class="" classname=""> 
         <a onclick="javascript:ChangeClientHeadPhoto(31)"><img src="../images/myInfo/pic_head_31_s.gif"></a> 
        </div> 
        <div id="head_index_32" onmouseover="mouseoverchangeclass(32)" onmouseout="mouseoutchangeclass(32)" class="" classname=""> 
         <a onclick="javascript:ChangeClientHeadPhoto(32)"><img src="../images/myInfo/pic_head_32_s.gif"></a> 
        </div> 
        <div id="head_index_33" onmouseover="mouseoverchangeclass(33)" onmouseout="mouseoutchangeclass(33)" class="" classname=""> 
         <a onclick="javascript:ChangeClientHeadPhoto(33)"><img src="../images/myInfo/pic_head_33_s.gif"></a> 
        </div> 
        <div id="head_index_34" onmouseover="mouseoverchangeclass(34)" onmouseout="mouseoutchangeclass(34)" class="" classname=""> 
         <a onclick="javascript:ChangeClientHeadPhoto(34)"><img src="../images/myInfo/pic_head_34_s.gif"></a> 
        </div> 
        <div id="head_index_35" onmouseover="mouseoverchangeclass(35)" onmouseout="mouseoutchangeclass(35)" class="" classname=""> 
         <a onclick="javascript:ChangeClientHeadPhoto(35)"><img src="../images/myInfo/pic_head_35_s.gif"></a> 
        </div> 
        <div id="head_index_36" onmouseover="mouseoverchangeclass(36)" onmouseout="mouseoutchangeclass(36)" class="" classname=""> 
         <a onclick="javascript:ChangeClientHeadPhoto(36)"><img src="../images/myInfo/pic_head_36_s.gif"></a> 
        </div> 
        <div id="head_index_37" onmouseover="mouseoverchangeclass(37)" onmouseout="mouseoutchangeclass(37)" class="" classname=""> 
         <a onclick="javascript:ChangeClientHeadPhoto(37)"><img src="../images/myInfo/pic_head_37_s.gif"></a> 
        </div> 
        <div id="head_index_38" onmouseover="mouseoverchangeclass(38)" onmouseout="mouseoutchangeclass(38)" class="" classname=""> 
         <a onclick="javascript:ChangeClientHeadPhoto(38)"><img src="../images/myInfo/pic_head_38_s.gif"></a> 
        </div> 
        <div id="head_index_39" onmouseover="mouseoverchangeclass(39)" onmouseout="mouseoutchangeclass(39)" class="" classname=""> 
         <a onclick="javascript:ChangeClientHeadPhoto(39)"><img src="../images/myInfo/pic_head_39_s.gif"></a> 
        </div> 
        <div id="head_index_40" onmouseover="mouseoverchangeclass(40)" onmouseout="mouseoutchangeclass(40)" class="" classname=""> 
         <a onclick="javascript:ChangeClientHeadPhoto(40)"><img src="../images/myInfo/pic_head_40_s.gif"></a> 
        </div> 
       </div> 
       <input onclick="Hid(1); __doPostBack('btnSaveHead','')" name="btnSaveHead" type="button" id="btnSaveHead" class="save_photo myButton" value="保存头像"> 
       <input type="hidden" name="hd_value" id="hd_value" value="1"> 
       <div class="total_ok_pic_green" id="div_update_state" style="display:none">
         头像已保存！ 
       </div> 
       <div class="clear"></div> 
       <p class="go_choice">或从您的电脑中上传图片作为头像：<span class="gray_b3">(建议尺寸96*96像素，300k以内)</span></p> 
       <div class="browse_mypic"> 
        <input type="file" name="Myfile" id="Myfile" size="36" maxlength="30" onchange="changeSrc(this)" onclick="div_hidden('div_update_state');" onkeydown="chkonkeydown(event);" style="height:21px; width:290px; font-size:12px; padding-top:3px; float:left;"> 
        <input type="hidden" name="hid_opt" id="hid_opt"> 
        <input onclick="if (!Chkfile()) return false; __doPostBack('btnUpload','')" name="btnUpload" type="button" id="btnUpload" class="browse_button myButton" height="20px" value="上传" disabled> 
        <div class="loading" name="div_upload_state" id="div_upload_state" style="display:none"></div> 
        <div class="total_ok_pic_green2" id="headsave2" style="display:none">
          头像已保存！ 
        </div> 
        <div class="loading" id="headsave3" style="display:none"> 
         <img src="../images/myInfo/loading.gif" title="上传状态中"> 
         <p>上传中...</p> 
        </div> 
        <div class="notice_write1" id="headsave4" style="display:none">
          图片大小超过300k 
        </div> 
       </div> 
       <div class="clear"></div> 
      </div> 
      <div class="clear"></div> 
     </div> 
    </div> 
    <!--编辑基本信息--> 
    <div class="edit_message1"> 
     <div class="mesage_list"> 
      <div class="list_title"> 
       <em>*</em>昵称： 
       <input name="v_date" type="hidden" id="v_date" value="231761974"> 
      </div> 
      <div class="list_edit"> 
       <input name="Txt_petname"  style="height:25px; margin-right: 15px;" type="text" value="" maxlength="20" id="Txt_petname" class="nickname" onfocus="changeclass('div_1');" onblur="cue_chk()"> 
       <span class="c_gray" id="info_1"><p>您的昵称可以由小写英文字母、中文、数字组成，</p>长度4－20个字符，一个汉字为两个字符</span> 
      </div> 
      <div class="list_other" id="div_1">
        [公开] 
      </div> 
      <div class="empty_box_left"></div> 
     </div> 
    
     <div class="mesage_list"> 
      <div class="list_title"> 
       <em>*</em>性别： 
      </div> 
      <div class="list_edit add_edit_h"> 
       <input value="Rd_sex_1" name="gp_sex" type="radio" id="Rd_sex_1" class="radio_button" onclick="disablcontrol('Rd_sexis');changeclass_new('span_1');" checked> 
       <span class="choice_cont">男</span> 
       <input value="Rd_sex_2" name="gp_sex" type="radio" id="Rd_sex_2" class="radio_button" onclick="disablcontrol('Rd_sexis');changeclass_new('span_1');"> 
       <span class="choice_cont">女</span> 
       <div id="notice_3" style="visibility: hidden;"></div> 
      </div> 
      <div class="list_other reduice_other_w"> 
       <input value="0" name="Rd_sexis" type="radio" id="Rd_sexis_0" class="radio_button" checked> 
       <span class="choice_cont" id="span_1_1">[公开]</span> 
       <input value="1" name="Rd_sexis" type="radio" id="Rd_sexis_1" class="radio_button"> 
       <span class="choice_cont choice_cont_r" id="span_1_2">[保密]</span> 
      </div> 
      <div class="empty_box_left"></div> 
     </div> 
     
     <div class="mesage_list"> 
     
     <div class="mesage_list"> 
      <div class="list_title">
        生日： 
      </div> 
      <div class="list_edit"> 
       <select name="Dp_year" id="Dp_year" class="model_select" onclick="disablcontrol('Rd_biris');changeclass_new('span_2');" onchange="changeclass_timechk('div8');"> <option value="0">------</option> <option value="1927">1927</option><option value="1928">1928</option><option value="1929">1929</option><option value="1930">1930</option><option value="1931">1931</option><option value="1932">1932</option><option value="1933">1933</option><option value="1934">1934</option><option value="1935">1935</option><option value="1936">1936</option><option value="1937">1937</option><option value="1938">1938</option><option value="1939">1939</option><option value="1940">1940</option><option value="1941">1941</option><option value="1942">1942</option><option value="1943">1943</option><option value="1944">1944</option><option value="1945">1945</option><option value="1946">1946</option><option value="1947">1947</option><option value="1948">1948</option><option value="1949">1949</option><option value="1950">1950</option><option value="1951">1951</option><option value="1952">1952</option><option value="1953">1953</option><option value="1954">1954</option><option value="1955">1955</option><option value="1956">1956</option><option value="1957">1957</option><option value="1958">1958</option><option value="1959">1959</option><option value="1960">1960</option><option value="1961">1961</option><option value="1962">1962</option><option value="1963">1963</option><option value="1964">1964</option><option value="1965">1965</option><option value="1966">1966</option><option value="1967">1967</option><option value="1968">1968</option><option value="1969">1969</option><option value="1970">1970</option><option value="1971">1971</option><option value="1972">1972</option><option value="1973">1973</option><option value="1974">1974</option><option value="1975">1975</option><option value="1976">1976</option><option value="1977">1977</option><option value="1978">1978</option><option value="1979">1979</option><option value="1980">1980</option><option value="1981">1981</option><option value="1982">1982</option><option value="1983">1983</option><option value="1984">1984</option><option value="1985">1985</option><option value="1986">1986</option><option value="1987">1987</option><option value="1988">1988</option><option value="1989">1989</option><option value="1990">1990</option><option value="1991">1991</option><option value="1992">1992</option><option value="1993">1993</option><option value="1994">1994</option><option value="1995">1995</option><option value="1996">1996</option><option value="1997">1997</option><option value="1998">1998</option><option value="1999">1999</option><option value="2000">2000</option><option value="2001">2001</option><option value="2002">2002</option><option value="2003">2003</option><option value="2004">2004</option><option value="2005">2005</option><option value="2006">2006</option><option value="2007">2007</option><option value="2008">2008</option><option value="2009">2009</option><option value="2010">2010</option><option value="2011">2011</option><option value="2012">2012</option><option value="2013">2013</option><option value="2014">2014</option><option value="2015">2015</option><option value="2016">2016</option><option value="2017">2017</option> </select> 
       <span class="model_span"> 年 </span> 
       <select name="Dp_month" id="Dp_month" class="model_select" onclick="disablcontrol('Rd_biris');changeclass_new('span_2');" onchange="changeclass_timechk('div8');"> <option value="0">----</option> <option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option><option value="5">5</option><option value="6">6</option><option value="7">7</option><option value="8">8</option><option value="9">9</option><option value="10">10</option><option value="11">11</option><option value="12">12</option> </select> 
       <span class="model_span"> 月 </span> 
       <select name="Dp_day" id="Dp_day" class="model_select" onclick="disablcontrol('Rd_biris');changeclass_new('span_2');" onchange="changeclass_timechk('div8');"> <option value="0">----</option> <option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option><option value="5">5</option><option value="6">6</option><option value="7">7</option><option value="8">8</option><option value="9">9</option><option value="10">10</option><option value="11">11</option><option value="12">12</option><option value="13">13</option><option value="14">14</option><option value="15">15</option><option value="16">16</option><option value="17">17</option><option value="18">18</option><option value="19">19</option><option value="20">20</option><option value="21">21</option><option value="22">22</option><option value="23">23</option><option value="24">24</option><option value="25">25</option><option value="26">26</option><option value="27">27</option><option value="28">28</option><option value="29">29</option><option value="30">30</option><option value="31">31</option> </select> 
       <span class="model_span"> 日 </span> 
       <div id="notice_4" style="visibility: hidden;"></div> 
      </div> 
    
      <div class="list_other" id="div8">
        [公开] 
      </div> 
      <div class="empty_box_left"></div> 
     </div> 
     <div class="mesage_list"> 
      <div class="list_title">
        博客地址： 
      </div> 
      <div class="list_edit"> 
       <input name="Txt_blog" style="height: 25px;" type="text" value="http://" id="Txt_blog" class="blog_address" onblur="changeurl('div_3');"> 
      </div> 
      <div class="list_other" id="div_3">
        [公开] 
      </div> 
      <div class="empty_box_left"></div> 
     </div> 
     <div class="mesage_list"> 
      <div class="list_title">
        居住状态： 
      </div> 
      <div class="list_edit"> 
       <input name="Chk_1" type="checkbox" id="Chk_1" class="checkbox" onclick="changeclass_chk('div_4');"> 
       <span class="checkbox_cont">独居</span> 
       <input name="Chk_2" type="checkbox" id="Chk_2" class="checkbox" onclick="changeclass_chk('div_4');"> 
       <span class="checkbox_cont">和伴侣</span> 
       <input name="Chk_3" type="checkbox" id="Chk_3" class="checkbox" onclick="changeclass_chk('div_4');"> 
       <span class="checkbox_cont">和室友</span> 
       <input name="Chk_4" type="checkbox" id="Chk_4" class="checkbox" onclick="changeclass_chk('div_4');"> 
       <span class="checkbox_cont">和父母</span> 
       <input name="Chk_5" type="checkbox" id="Chk_5" class="checkbox" onclick="changeclass_chk('div_4');"> 
       <span class="checkbox_cont">和孩子</span> 
       <input name="Chk_6" type="checkbox" id="Chk_6" class="checkbox" onclick="changeclass_chk('div_4');"> 
       <span class="checkbox_cont">和宠物</span> 
      </div> 
      <div class="list_other add_top_h" id="div_4">
        [公开] 
      </div> 
      <div class="empty_box_left"></div> 
     </div> 
     <div class="mesage_list"> 
      <div class="list_title">
        兴趣爱好： 
      </div> 
      <div class="list_edit"> 
       <textarea name="Txt_interesting" rows="2" cols="20" id="Txt_interesting" class="text_interest add_textarea_gray" onkeydown="changeclass('div_5');Keyonkeydown(this,'500',event);" onpropertychange="plaster(this,'500',event);" onclick="SetText(this,'text_interest','0');" onblur="SetText(this,'text_interest add_textarea_gray','1');">不同项目之间请用空格隔开，例如“旅行 阅读 瑜伽”</textarea> 
      </div> 
      <div class="list_other" id="div_5">
        [公开] 
      </div> 
      <div class="empty_box_left"></div> 
     </div> 
     <div class="mesage_list"> 
      <div class="list_title">
        喜欢或欣赏的人： 
      </div> 
      <div class="list_edit"> 
       <textarea name="Txt_love" rows="2" cols="20" id="Txt_love" class="text_love add_textarea_gray" onkeydown="changeclass('div_6');Keyonkeydown(this,'500',event);" onpropertychange="plaster(this,'500',event);" onclick="SetText(this,'text_love','0');" onblur="SetText(this,'text_love add_textarea_gray','1');">不同人名之间请用空格隔开，例如“金庸 周杰伦 姚明”</textarea>&nbsp; 
      </div> 
      <div class="list_other" id="div_6">
        [公开] 
      </div> 
      <div class="empty_box_left"></div> 
     </div> 
     <div class="mesage_list"> 
      <div class="list_title">
        自我介绍： 
      </div> 
      <div class="list_edit"> 
       <textarea name="Txt_introduce" rows="2" cols="20" id="Txt_introduce" class="text_intro" onkeydown="changeclass('div_7');Keyonkeydown(this,'2000',event);" onpropertychange="plaster(this,'2000',event);" onblur="SetintroduceDiv();"></textarea> 
      </div> 
      <div class="list_other" id="div_7">
        [公开] 
      </div> 
      <div class="empty_box_left"></div> 
     </div> 
     <div class="mesage_list"> 
      <input type="submit" name="Button1" value="保存基本信息" id="Button1" class="save_mess myButton" > 
      <!--<div class="total_ok">基本信息已更新!</div>--> 
      <div id="stateinfo_info" style="display: none;"> 
      </div> 
     </div> 
    </div> 
   <div class="empty_box"></div> 
  </div>
  </div>


   <!--右栏结束--> 
  </div>  
 
 
 </article>
 
 
  <footer style="clear: both;margin-top: 200px;"> 
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