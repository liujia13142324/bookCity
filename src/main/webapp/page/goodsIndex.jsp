<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<html>
 <head></head>
 <body>

<%
String basePath = "";
%>

  <meta charset="utf-8"> 
  <base  href="/bookCity/"/>
  <title>欢迎--小书屋</title> 
  <meta content="小书屋,心灵之旅" name="Keywords"> 
  <meta content="小书屋，心灵休憩的角落" name="Description"> 
  
<!-- 当前page引入的css -->
<link href="css/css_dan/saved_resource" rel="stylesheet" charset="gbk"> 
<link href="css/css_dan/header_150803.css" rel="stylesheet" type="text/css"> 
<link href="css/css_dan/win_login20150728.css" rel="stylesheet" type="text/css"> 
<link href="css/css_dan/footer_150526.css" rel="stylesheet" type="text/css"> 
 <!-- 当前page引入的css -->

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
  <link rel="stylesheet" type="text/css" href="<%=basePath %>/css/css_su/snsearch.min.css">
  <!-- 苏宁中间 --> 
  <link rel="stylesheet" href="<%=basePath %><%=basePath %>css/css_su/book.min.css"> 
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
     <li><button id="hb_showShan"> 类别<span class="san"></span><span></span> </button> <input id="searchCondition" type="text" width="32px" size="50px" placeholder="&nbsp;请输入书籍信息"> <button id="searchBar">搜索</button></li> 
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
 
  <div id="product_wrapper"> 
   <div class="breadcrumb" id="breadcrumb" dd_name="顶部面包屑导航" ddt-area="000"> 
    <a href="#" name="__Breadcrumb_pub" style="margin-top:-7px;" target="_blank" class="domain"><b>图书</b></a> 
    <span class="gt" style="margin-top:-1px;">&gt;</span> 
    <a href="#" name="__Breadcrumb_pub" target="_blank">哲学/宗教</a> 
    <span class="gt">&gt;</span> 
    <a href="#" name="__Breadcrumb_pub" target="_blank">哲学</a> 
    <span class="gt">&gt;</span> 
    <a href="#" name="__Breadcrumb_pub" target="_blank">哲学知识读物</a> 
    <span class="gt">&gt;</span> 
    <span>哲学原来这么有趣：颠覆传统教学的18堂哲学课(史上超有趣的哲学<span class="dot">...</span></span> 
    <div class="outlets" style="display:none" id="bread-crumb-outlets"> 
     <a class="o_close hidden" style="display: none;" href="#"></a> 
     <a class="o_icon" href="#" target="_blank" name="go_outlets"> <img src="../images/dandangoods/outlets.gif"> </a> 
     <a class="o_banner hidden" id="olbp" href="#" target="_blank" name="Go_pinpai" style="display: none;"> <img src="http://product.dangdang.com/" class="J-outlets-img"> </a> 
    </div> 
   </div> 
   <!-- 面包屑 end --> 
   <!-- 图书展示区 begin --> 
   <div class="product_main clearfix" dd_name="单品区域"> 
    <div class="pic_info"> 
     <!-- 大图区开始 --> 
     <div class="pic" id="largePicDiv"> 
      <a href="#" class="img"> <img id="largePic" dd_name="大图" src="../images/dandangoods/23176692-1_w_1.jpg" width="320" height="320"> 
       <div id="moveMask" class="zoom_pup" style="position: absolute; left: 125.5px; top: 160px; display: none; background: url(&quot;images/zoom_pup.png&quot;);"></div> </a> 
      <span class="icon_promote" id="main-image-icon" style=""> <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,28,0" width="68" height="68"> <param name="movie" value="http://media1.ddimg.cn/files/19/35/12001096.swf"> <param name="quality" value="high"> <param name="FlashVars" value="discount=7.81"> <param name="wmode" value="transparent"></object> </span> 
      <div style="display:none" id="promo-icon-tpl">   
      </div> 
   
      <div class="big_pic" style="display: none;" id="detailPicDiv"> 
       <img src="../images/dandangoods/23176692-1_u_1.jpg" height="800" width="800" id="detailPic" style="left: -312.5px; top: -400px; position: absolute;"> 
      </div> 
     </div> 
     <div class="dp_slide"> 
      <a id="pre_slide" href="#" class="mainimg_fy prev  prev_none" style="z-index: 100; display: none;"></a> 
      <a id="next_slide" href="#" class="mainimg_fy next prev_none" style="z-index: 100; display: none;"></a> 
      <div class="dp_slide_box" id="main-img-slide" style="visibility: visible; overflow: hidden; position: relative; z-index: 2; left: 0px; width: 295px;"> 
       <ul id="main-img-slider" style="z-index: 1; margin: 0px; padding: 0px; position: relative; list-style: none; width: 885px; left: -295px;"> 
        <li style="overflow: hidden; float: left; width: 56px; height: 56px;"><a href="#" data-imghref="http://img3x2.ddimg.cn/0/3/23176692-1_w_1.jpg"><img src="../images/dandangoods/23176692-1_x_1.jpg"></a></li> 
        <li style="overflow: hidden; float: left; width: 56px; height: 56px;"></li> 
        <li style="overflow: hidden; float: left; width: 56px; height: 56px;"></li> 
        <li style="overflow: hidden; float: left; width: 56px; height: 56px;"></li> 
        <li style="overflow: hidden; float: left; width: 56px; height: 56px;"></li> 
        <li style="overflow: hidden; float: left; width: 56px; height: 56px;"><a href="#" data-imghref="http://img3x2.ddimg.cn/0/3/23176692-1_w_1.jpg"><img src="../images/dandangoods/23176692-1_x_1.jpg"></a></li> 
        <li style="overflow: hidden; float: left; width: 56px; height: 56px;"></li> 
        <li style="overflow: hidden; float: left; width: 56px; height: 56px;"></li> 
        <li style="overflow: hidden; float: left; width: 56px; height: 56px;"></li> 
        <li style="overflow: hidden; float: left; width: 56px; height: 56px;"></li> 
        <li style="overflow: hidden; float: left; width: 56px; height: 56px;"><a href="#" data-imghref="http://img3x2.ddimg.cn/0/3/23176692-1_w_1.jpg"><img src="../images/dandangoods/23176692-1_x_1.jpg"></a></li> 
        <li style="overflow: hidden; float: left; width: 56px; height: 56px;"></li> 
        <li style="overflow: hidden; float: left; width: 56px; height: 56px;"></li> 
        <li style="overflow: hidden; float: left; width: 56px; height: 56px;"></li> 
        <li style="overflow: hidden; float: left; width: 56px; height: 56px;"></li> 
       </ul> 
      </div> 
     </div> 
     <div class="share_div clearfix"> 
      <div class="share_icon" id="share_div" dd_name="分享"> 
       <a href="#" class="btn_fxd"><i></i>分享</a> 
      </div> 
      
      <span class="btn_sjf" id="points-tag" rel="nofollow" dd_name="送积分" style="display: none;"> <i></i>送积分<a href="#" target="_blank" id="pointsTag" name="__operation_jifen" rel="nofollow">244</a> </span> 
      <a href="#" class="btn_scsp" data-prd="23176692" id="collect_left"><i></i>收藏商品(602人气) </a> 
     
   	   <a href="#" class="icon_online" style="margin-left:20px;" target="_blank">免费试读</a> 
     </div> 
   
    </div> 
    <div class="show_info"> 
     <div class="sale_box clearfix"> 
      <div class="sale_box_left"> 
       <!-- 标题区begin --> 
       <div class="name_info" ddt-area="001"> 
        <!-- 主标题 --> 
        <h1 title="哲学原来这么有趣：颠覆传统教学的18堂哲学课(史上超有趣的哲学读本，像读故事一样读懂哲学。中国人民大学哲学教授、博士生导师李萍审订并点评！)"> 哲学原来这么有趣：颠覆传统教学的18堂哲学课(史上超有趣的哲学读本，像读故事一样读懂哲学。中国人民大学哲学教授、博士生导师李萍审订并点评！) </h1> 
        <!-- 副标题、促销语 --> 
        <h2> <span class="head_title_name" title="advertisement"> </span> <span class="hot" title="advertisement"> <br> <a target="_blank" href="#">无耻广告区 >3< >3< >3< >3< >3< >3< >3< >3< >3< >3<</a><br> </span> <span class="yushou" id="presale-title" style="display: none;"> </span> </h2> 
       </div> 
       <!-- 标题区 end--> 
       <!-- 出版物begin --> 
       <!-- 图书信息区 --> 
       <div class="messbox_info"> 
        <span class="t1" id="author" dd_name="作者" ddt-area="002">作者:<a href="#" target="_blank">王芳</a></span> 
        <span class="t1" dd_name="出版社" ddt-area="003">出版社:<a href="#" target="_blank">化学工业出版社</a></span> 
        <span class="t1">出版时间:2013年02月&nbsp;</span> 
        <!-- 评论数 --> 
        <div class="pinglun"> 
         <span class="t1" dd_name="图书排行榜排名">在<a href="#" target="_blank">当当哲学/宗教榜</a>排名<span class="num">149</span>位</span> 
         <span class="star_box"> <span class="star" style="width:99.6%"></span> </span> 
         <a href="#" id="comm_num_down">2303</a>条评论 
        </div> 
       </div> 
       <!-- 出版物 end--> 
       <!-- 价格区begin --> 
       <div class="price_info clearfix"> 
        <div class="price_pc" id="pc-price" style="margin-left: 10px;"> 
         <div class="price_d"> 
          <p class="t" id="dd-price-text" >实本价</p> 
          <p id="dd-price"><span class="yen">￥</span>25.60</p> 
         </div> 
         <div class="price_zhe" id="dd-zhe">
           (7.81折) 
         </div> 
         <div class="price_m price_m_t" id="original-price-text">
           定价 
         </div> 
         <div class="price_m" id="original-price"> 
          <span class="yen">￥</span>32.80 
         </div> 
         <div class="price_vip" style="display:none" id="dd-vip"> 
          <span></span> 
         </div> 
        </div> 
        <div class="price_e" style=" margin-left: 200px;  "> 
         <p class="t">电子书价</p> 
         <p><span class="yen">￥</span><a href="#" id="e-book-price" target="_blank">4.99</a></p> 
        </div> 
       </div> 
       <div class="price_time" style="display:none"> 
        <div class="yushou" id="promo-more" style="display:none"> 
         <a href="#" class="awhite" target="_blank">查看更多限时抢商品&gt;&gt;</a> 
        </div> 
        <div id="duration-time"> 
         <span>倒计时</span> 
         <b>11</b> 
         <span>天</span> 
         <b>99</b> 
         <span>小时</span> 
         <b>33</b> 
         <span>分</span> 
         <b>33</b> 
         <span>秒</span> 
        </div> 
       </div> 
       <!-- 价格区 end--> 
       <!-- 虚拟捆绑子商品区begin --> 
       <!-- 虚拟捆绑子商品列表 --> 
       <!-- 虚拟捆绑子商品区 end--> 
       <!-- 促销区 -->       
      </div> 
      <!--促销模板结束 --> 
     </div> 
     <!-- 促销区 end--> 
     <!-- 礼券 --> 
     <div class="cuxiao_info  lingquan_info clearfix" style="display:none" dd_name="礼券" id="coupon-node"> 
      <div class="left letter02">
        领券 
      </div> 
      <div class="right J-right" id="coupon-right"> 
       <ul class="clearfix lingquan" id="coupon-list"> 
       </ul> 
      </div>  
     </div> 
     <!-- 礼券 end --> 
     <!-- 地址区 --> 
     <div class="area_info clearfix" style="margin-top:20px;height: 20px;"> 
      <div class="left letter03" style="height: 20px; width: 100px;">
        配送至 
      </div> 
      <div class="right" id="geo-info" style=" height: 20px;"> 
       <div class="select_add clearfix" style="margin-left:-60px;border:none;width: 400px;"> 
        <span class="text" id="geo-name" dd_name="配送至">北京市东城区</span> 
       
        <b>有货</b> 
        <a href="#" target="_blank" rel="nofollow" id="special-freight" style="display:none">运费为订单总额的50%，最低45元</a> 
        <div class="yunfei" dd_name="运费" id="freight"> 
         <a href="#" id="dd_delivery_show" target="_blank" rel="nofollow">满39元免运费</a> 
         <ul style="display: none;"> 
          <li>自营订单满39元（含）免运费</li> 
          <li>不足金额订单收取运费5元起</li> 
         </ul> 
        </div> 
       </div> 
      </div> 
     </div> 
     <div class="area_info clearfix"  style=" height: 20px; "> 
      <div class="left letter02" style=" height: 20px; width: 100px;">
        服务 
      </div> 
      <div class="right"> 
       <div class="clearfix"> 
        <span class="time" style="margin-left:-60px;display: inline-block;width: 500px;">由“<b>小书屋</b>”发货，并提供售后服务。<font id="arrive-time">23:15前完成下单，预计<b>明天(5月9日)</b>可送达</font></span> 
       </div> 
      </div> 
     </div> 
     <!-- 地址区end --> 
     <!-- 关联选购 --> 
     <!-- 百货关联 --> 
     <!-- 百货关联end --> 
     <!-- 按钮区begin --> 
     <!-- 按钮区 --> 
     <div class="buy_box clearfix" ddt-area="030" style="border:none;margin-top:100px;"> 
      <div class="buy_box_btn"> 
       <a href="#" class="btn btn_b btn_b_red" id="sign_no_stock" ddt-expose="on" ddt-src="sign1" style="display: none;">到货通知</a> 
       <a href="#" id="part_buy_button" class="btn btn_red" ddt-expose="on" ddt-src="addChart1" style="display: block;"><i class="cart"></i>加入购物车</a> 
       <a href="#" id="gift_card_button" class="btn btn_red" style="display:none" ddt-expose="on" ddt-src="giftCard1"><i class="cart"></i>加入购物车</a> 
       <div class="btn_pop" id="installment_buy_button" style="display:none"> 
        <a href="#" id="installment_buy_button_a" class="btn btn_blue" ddt-expose="on" ddt-src="installment1">分期付款</a> 
        <div class="pop_fenqi"> 
         <h3>体验分期付款吧<a href="#" class="help" target="_blank"><i></i>帮助</a></h3> 
         <div class="fenqi_info"> 
          <ul class="clearfix"> 
          </ul> 
          <div class="text">
            招行手续费收取规则：全部手续费在第一期一次性收取 
          </div> 
         </div> 
        </div> 
       </div> 
       <a href="#" id="buy_now_button" class="btn btn_b btn_b_red" style="" ddt-src="buyNow1" ddt-expose="on">立即购买</a> 
       <a href="#" id="ebook_buy_button" class="btn btn_blue02" target="_blank" ddt-src="ebookBuy1" ddt-expose="on">购买电子书</a> 
       <a href="#" id="deposit_buy_button" rel="nofollow" class="btn btn_green" style="display: none"></a> 
       <div class="btn_pop btn_pop_click" style="z-index:30" id="deposit-share"> 
        <a href="#" class="btn btn_b btn_orange02" style="display: none" id="invite_friend_button">邀请好友</a> 
        <div class="btn_yaoqing" id="deposit-share-url"> 
         <span>邀请好友参加吧</span> 
         <span> <a href="#" class="qq" data-dstweb="qqzone"></a> <a href="#" class="sina" data-dstweb="sina"></a> </span> 
        </div> 
       </div> 
       <a href="#" id="btn_buy_now" rel="nofollow" class="btn btn_b btn_b_red" style="display: none" ddt-expose="on" ddt-src="productCollect1">收藏商品</a> 
      </div> 
      <div id="buy-tip" class="text"></div> 
     </div> 
     <a id="button_endpoint" class="browser" href="#"></a> 
     <!-- 按钮区 end--> 
    </div> 
    <div class="service_more" id="service-more" ddt-area="004"> 
     <div class="narrow_dang"> 
      <a href="#" class="dang" id="shop_btn"> <img src="../images/dandangoods/narrow_dang.png" width="112" height="70"> </a> 
     </div> 
     <div class="service_more_info"> 
      <p class="title clearfix" ddt-area="006"> <span class="title_name"> <span class="icon dang"></span> <span class="dang_red"> 小书屋自营 </span> </span> </p> 
      <div class="shop_score_box" id="shop-info" dd_name="店铺评分"></div> 
      <ul class="fuwu clearfix" dd_name="服务标示" id="shop-service" style=""> 
       <li class="zpbz"> <i></i> <a href="#" target="_blank">正品保障</a> </li> 
       <li class="hdfk" id="huodaofukuan"> <i></i> <a href="#" target="_blank">货到付款</a> <span class="pop_lipin" id="shop_service_tip_huodao">该店铺大部分商品支持货到付款，本商品是否支持货到付款，请您以结算页为准</span> </li> 
       <li class="fwzc"> <i></i> <a href="#" target="_blank">服务支持</a> </li> 
       <li class="cjfh"> <i></i> <a href="#" target="_blank">差价返还</a> </li> 
       <li class="hh"> <i></i> <a href="#" target="_blank">15天换货</a> </li> 
       <li class="lpbz"> <i></i>礼品包装 <span class="pop_lipin">每个订单收取一次包装费，费用8.00<br>每个订单可选一张贺卡，费用1.00</span> </li> 
       <li class="zcth other"> <i></i> <a href="#" target="_blank">支持7天无理由退货</a> </li> 
       <li class="zclpk other J-lpk"> <i></i> <a href="#" target="_blank">支持礼品卡</a> </li> 
      </ul> 
      <!-- 客服 --> 
      <div class="server_rightdiv" style="" id="live800_div"> 
       <div class="s_one"> 
        <span class="live800" dd_name="人工客服" style="display: none"> <span class="onlines" id="live800" title="点此与客服交流" style="display: none"></span> </span> 
        <span class="server_dj" dd_name="机器人客服" style="" id="robotEntry" roboturl="http://faqrobot.dangdang.com/robot/robotDD.html?sysNum=dd_1000&amp;productId="></span> 
       </div> 
      </div> 
      <!-- 客服end --> 
      <ul class="shang_other clearfix" id="sellers_list" dd_name="其他商家区" ddt-area="008"> 
       <li class="clearfix shang_other_all" ddt-area="009"> <a href="#" target="_blank">73个商家在售</a> <span class="price">￥19.35起</span> <span class="yun">商家预计送达时间<b>5-14天</b></span> </li> 
       <li class="clearfix J-other"> <a href="#" target="_blank">文轩网旗舰店</a> <span class="price">￥22.00</span> </li> 
       <li class="clearfix J-other"> <a href="#" target="_blank">中关村图书大厦专营店</a> <span class="price">￥19.35</span> </li> 
      </ul>  
     </div> 
    </div> 
   </div> 
  </div> 
  <!-- 图书展示区 end --> 
  <a id="recommend" name="recommend" class="browser" isloaded="1" href="#">&nbsp;</a> 
  <div class="product_content clearfix"> 
   <!-- 右侧主体 --> 
   <div class="main" id="right-content"> 
    <div class="group_buy" dd_name="优惠套餐" ddt-area="027" id="buyPackage" style="display:none"></div> 
    <div class="group_buy" dd_name="最佳拍档" ddt-area="011" id="buyTogether" style="
    display: none;
"> 
     <ul class="tab clearfix"> 
      <li class="hover" data-type="buyTogether">拍档组合</li> 
     </ul> 
     <div class="over"> 
      <!-- 不可选择时调取btn_none --> 
      <a href="#" class="btn_a prev btn_none"></a> 
      <a href="#" class="btn_a next"></a> 
      <div class="paidang_box"> 
       <ul class="paidang"> 
        <li class="zhu" data-pid="23176692" data-select-product-id="23176692" data-is-spu="0" data-number="1"> <p class="pic"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/23176692-1_l_1.jpg"> </a> <a href="#" class="unchoose"></a> </p> <p class="price"> <span class="price_d">￥25.60</span> </p> <p class="name" dd_name="拍档组合商品名称0"> <a href="#" target="_blank">哲学原来这么有趣：颠覆传统教学的18堂哲学课(史上超有趣的哲学读本，像读故事一样读懂哲学。中国人民大学哲学教授、博士生导师李萍审订并点评！)</a> </p> <p class="zuozhe"></p> 
         <div class="add"></div> </li> 
       </ul> 
       <div id="buyTogether_lists"> 
        <ul class="clearfix"> 
         <li data-pid="23838575" data-is-spu="0" data-number="1" data-type="" traced="1"> <p class="pic"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/23838575-1_l.jpg"> </a> <a href="#" class="choose"></a> </p> <p class="price"> <span class="price_d">￥28.10</span> </p> <p class="name" dd_name="拍档组合商品名称1"> <a href="#" target="_blank">最好的方法给孩子</a> </p> <p class="zuozhe">王芳</p> </li> 
         <li data-pid="22822387" data-is-spu="0" data-number="1" data-type="" traced="1"> <p class="pic"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/22822387-1_l.jpg"> </a> <a href="#" class="choose"></a> </p> <p class="price"> <span class="price_d">￥24.60</span> </p> <p class="name" dd_name="拍档组合商品名称2"> <a href="#" target="_blank">心理学原来这么有趣-颠覆传统教学的18堂心理课</a> </p> <p class="zuozhe">刘雪</p> </li> 
         <li data-pid="23203528" data-is-spu="0" data-number="1" data-type="" traced="1"> <p class="pic"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/23203528-1_l.jpg"> </a> <a href="#" class="choose"></a> </p> <p class="price"> <span class="price_d">￥36.80</span> </p> <p class="name" dd_name="拍档组合商品名称3"> <a href="#" target="_blank">哲学的故事（经典的哲学入门读物，让深奥的哲学立刻生动起来）</a> </p> <p class="zuozhe">(美)杜兰特</p> </li> 
         <li data-pid="23300618" data-is-spu="0" data-number="1" data-type="" traced="1"> <p class="pic"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/23300618-1_l.jpg"> </a> <a href="#" class="choose"></a> </p> <p class="price"> <span class="price_d">￥23.40</span> </p> <p class="name" dd_name="拍档组合商品名称4"> <a href="#" target="_blank">不疯魔，不哲学</a> </p> <p class="zuozhe">哲不解著</p> </li> 
         <li data-pid="1096025293" data-is-spu="0" data-number="1" data-type="pub2mall" traced="1"> <p class="pic"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/1096025293-1_l.jpg"> </a> <a href="#" class="choose"></a> </p> <p class="price"> <span class="price_d">￥219.00</span> </p> <p class="name" dd_name="拍档组合商品名称5"> <a href="#" target="_blank">七匹狼休闲裤春季新品男士时尚休闲百搭九分裤男装4025606</a> </p> <p class="zuozhe"></p> </li> 
        </ul> 
       </div> 
      </div> 
     </div> 
    </div> 
    <div class="mbox_another" dd_name="您可能感兴趣的其他商品" ddt-area="016" id="nostockReco" style="display:none"></div> 
    <div class="mbox_another mbox_another_two" dd_name="买过还买了" ddt-area="012" id="alsoBuy" style="
    display: none;
"> 
     <h3> <span class="title">买过本商品的人还买了</span> <span class="num"> <span id="now_page">1</span> <b>/<span id="total_page">5</span></b> </span> </h3> 
     <div class="bucket"> 
      <!-- 不可选择时调取btn_none --> 
      <a href="#" class="btn_a prev "></a> 
      <a href="#" class="btn_a next " onclick="return false;"></a> 
      <div class="over"> 
       <ul class="none_b"> 
        <div class="list_page"> 
         <li> <p class="pic" dd_name="买过本商品的人还买了商品图片40"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/20086549-1_l.jpg"> </a> <span class="hover"> <span class="price_e">电子书价: <a href="#" target="_blank">￥2.99</a> </span> <span class="pinglun">56196条评论</span> </span> </p> <p class="price"> <span class="price_d">￥10.00</span> </p> <p class="name" dd_name="买过本商品的人还买了商品名称40"> <a href="#" target="_blank">沉思录</a> </p> <p class="zuozhe">马可.奥勒留</p> </li> 
         <li> <p class="pic" dd_name="买过本商品的人还买了商品图片41"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/1066848247-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">0条评论</span> </span> </p> <p class="price"> <span class="price_d">￥21.10</span> </p> <p class="name" dd_name="买过本商品的人还买了商品名称41"> <a href="#" target="_blank">中国哲学史大纲胡适9787509011355</a> </p> <p class="zuozhe">胡适</p> </li> 
         <li> <p class="pic" dd_name="买过本商品的人还买了商品图片42"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/23795896-1_l.jpg"> </a> <span class="hover"> <span class="price_e">电子书价: <a href="#" target="_blank">￥23.40</a> </span> <span class="pinglun">4276条评论</span> </span> </p> <p class="price"> <span class="price_d">￥29.30</span> </p> <p class="name" dd_name="买过本商品的人还买了商品名称42"> <a href="#" target="_blank">中国哲学简史</a> </p> <p class="zuozhe">冯友兰　著，赵复三　译</p> </li> 
         <li> <p class="pic" dd_name="买过本商品的人还买了商品图片43"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/1088576095-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">0条评论</span> </span> </p> <p class="price"> <span class="price_d">￥119.00</span> </p> <p class="name" dd_name="买过本商品的人还买了商品名称43"> <a href="#" target="_blank">福尔摩斯百科(全彩)[英国]英国DK出版社,王晋侯佳97</a> </p> <p class="zuozhe">[英国]英国DK出版社,王晋侯佳</p> </li> 
         <li> <p class="pic" dd_name="买过本商品的人还买了商品图片44"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/1037235448-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">249条评论</span> </span> </p> <p class="price"> <span class="price_d">￥179.00</span> </p> <p class="name" dd_name="买过本商品的人还买了商品名称44"> <a href="#" target="_blank">迪士尼童鞋2016年品牌新款儿童休闲运动鞋春夏季透气网面</a> </p> <p class="zuozhe"></p> </li> 
         <li> <p class="pic" dd_name="买过本商品的人还买了商品图片45"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/22822387-1_l.jpg"> </a> <span class="hover"> <span class="price_e">电子书价: <a href="#" target="_blank">￥4.99</a> </span> <span class="pinglun">1422条评论</span> </span> </p> <p class="price"> <span class="price_d">￥24.60</span> </p> <p class="name" dd_name="买过本商品的人还买了商品名称45"> <a href="#" target="_blank">心理学原来这么有趣-颠覆传统教学的18堂心理课</a> </p> <p class="zuozhe">刘雪</p> </li> 
         <li> <p class="pic" dd_name="买过本商品的人还买了商品图片46"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/23300618-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">9573条评论</span> </span> </p> <p class="price"> <span class="price_d">￥23.40</span> </p> <p class="name" dd_name="买过本商品的人还买了商品名称46"> <a href="#" target="_blank">不疯魔，不哲学</a> </p> <p class="zuozhe">哲不解著</p> </li> 
         <li> <p class="pic" dd_name="买过本商品的人还买了商品图片47"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/23203528-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">21582条评论</span> </span> </p> <p class="price"> <span class="price_d">￥36.80</span> </p> <p class="name" dd_name="买过本商品的人还买了商品名称47"> <a href="#" target="_blank">哲学的故事（经典的哲学入门读物，让深奥的哲学立刻生动起来</a> </p> <p class="zuozhe">(美)杜兰特</p> </li> 
         <li> <p class="pic" dd_name="买过本商品的人还买了商品图片48"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/23838575-1_l.jpg"> </a> <span class="hover"> <span class="price_e">电子书价: <a href="#" target="_blank">￥4.50</a> </span> <span class="pinglun">20632条评论</span> </span> </p> <p class="price"> <span class="price_d">￥28.10</span> </p> <p class="name" dd_name="买过本商品的人还买了商品名称48"> <a href="#" target="_blank">最好的方法给孩子</a> </p> <p class="zuozhe">王芳</p> </li> 
         <li> <p class="pic" dd_name="买过本商品的人还买了商品图片49"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/1060298248-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">40条评论</span> </span> </p> <p class="price"> <span class="price_d">￥79.00</span> </p> <p class="name" dd_name="买过本商品的人还买了商品名称49"> <a href="#" target="_blank">渔民部落户外皮肤衣女防晒衣速干轻薄可收纳风衣862429</a> </p> <p class="zuozhe"></p> </li> 
        </div> 
        <div class="list_page"> 
         <li traced="1"> <p class="pic" dd_name="买过本商品的人还买了商品图片0"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/23572342-1_l.jpg"> </a> <span class="hover"> <span class="price_e">电子书价: <a href="#" target="_blank">￥13.56</a> </span> <span class="pinglun">76条评论</span> </span> </p> <p class="price"> <span class="price_d">￥77.40</span> </p> <p class="name" dd_name="买过本商品的人还买了商品名称0"> <a href="#" target="_blank">马克思主义哲学原典导读（哲学基本原典导读丛书）</a> </p> <p class="zuozhe">张周志　等编著</p> </li> 
         <li traced="1"> <p class="pic" dd_name="买过本商品的人还买了商品图片1"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/23947711-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">320条评论</span> </span> </p> <p class="price"> <span class="price_d">￥22.60</span> </p> <p class="name" dd_name="买过本商品的人还买了商品名称1"> <a href="#" target="_blank">逻辑学原来这么有趣：颠覆传统教学的18堂逻辑课</a> </p> <p class="zuozhe">董桂萍著</p> </li> 
         <li traced="1"> <p class="pic" dd_name="买过本商品的人还买了商品图片2"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/23958987-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">158条评论</span> </span> </p> <p class="price"> <span class="price_d">￥22.60</span> </p> <p class="name" dd_name="买过本商品的人还买了商品名称2"> <a href="#" target="_blank">社会学原来这么有趣：颠覆传统教学的18堂社会学课</a> </p> <p class="zuozhe">仲英涛著谭日辉审订</p> </li> 
         <li traced="1"> <p class="pic" dd_name="买过本商品的人还买了商品图片3"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/23382987-1_l.jpg"> </a> <span class="hover"> <span class="price_e">电子书价: <a href="#" target="_blank">￥11.19</a> </span> <span class="pinglun">1551条评论</span> </span> </p> <p class="price"> <span class="price_d">￥25.90</span> </p> <p class="name" dd_name="买过本商品的人还买了商品名称3"> <a href="#" target="_blank">文学原来这么有趣：颠覆传统教学的18堂文学课(史上超有趣</a> </p> <p class="zuozhe">孙赫</p> </li> 
         <li traced="1"> <p class="pic" dd_name="买过本商品的人还买了商品图片4"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/1023393535-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">13条评论</span> </span> </p> <p class="price"> <span class="price_d">￥328.00</span> </p> <p class="name" dd_name="买过本商品的人还买了商品名称4"> <a href="#" target="_blank">汉客(HANKE)拉杆箱男女万向轮密码锁行李箱防泼水耐磨</a> </p> <p class="zuozhe"></p> </li> 
         <li traced="1"> <p class="pic" dd_name="买过本商品的人还买了商品图片5"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/23491719-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">657条评论</span> </span> </p> <p class="price"> <span class="price_d">￥22.60</span> </p> <p class="name" dd_name="买过本商品的人还买了商品名称5"> <a href="#" target="_blank">历史学原来这么有趣：颠覆传统教学的18堂历史课</a> </p> <p class="zuozhe">周海燕</p> </li> 
         <li traced="1"> <p class="pic" dd_name="买过本商品的人还买了商品图片6"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/23919717-1_l.jpg"> </a> <span class="hover"> <span class="price_e">电子书价: <a href="#" target="_blank">￥9.99</a> </span> <span class="pinglun">113条评论</span> </span> </p> <p class="price"> <span class="price_d">￥77.40</span> </p> <p class="name" dd_name="买过本商品的人还买了商品名称6"> <a href="#" target="_blank">西方哲学史：从古希腊到当下（修订版）</a> </p> <p class="zuozhe">[挪]奎纳尔·希尔贝克尼尔斯·吉列尔著，童世骏郁振华刘进译</p> </li> 
         <li traced="1"> <p class="pic" dd_name="买过本商品的人还买了商品图片7"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/22583570-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">228条评论</span> </span> </p> <p class="price"> <span class="price_d">￥32.70</span> </p> <p class="name" dd_name="买过本商品的人还买了商品名称7"> <a href="#" target="_blank">马克思主义基本原理概论教学用书</a> </p> <p class="zuozhe">熊晓琳　主编</p> </li> 
         <li traced="1"> <p class="pic" dd_name="买过本商品的人还买了商品图片8"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/23705400-1_l.jpg"> </a> <span class="hover"> <span class="price_e">电子书价: <a href="#" target="_blank">￥4.90</a> </span> <span class="pinglun">338条评论</span> </span> </p> <p class="price"> <span class="price_d">￥57.30</span> </p> <p class="name" dd_name="买过本商品的人还买了商品名称8"> <a href="#" target="_blank">经济学原来这么有趣（套装共2册）</a> </p> <p class="zuozhe">钟伟伟　著</p> </li> 
         <li traced="1"> <p class="pic" dd_name="买过本商品的人还买了商品图片9"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/1393883335-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">2条评论</span> </span> </p> <p class="price"> <span class="price_d">￥129.00</span> </p> <p class="name" dd_name="买过本商品的人还买了商品名称9"> <a href="#" target="_blank">Jeep/吉普男士户外速干透气防晒圆领短袖T恤衫J651</a> </p> <p class="zuozhe"></p> </li> 
        </div> 
        <div class="list_page"> 
         <li> <p class="pic" dd_name="买过本商品的人还买了商品图片10"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/23434573-1_l.jpg"> </a> <span class="hover"> <span class="price_e">电子书价: <a href="#" target="_blank">￥19.89</a> </span> <span class="pinglun">1314条评论</span> </span> </p> <p class="price"> <span class="price_d">￥66.60</span> </p> <p class="name" dd_name="买过本商品的人还买了商品名称10"> <a href="#" target="_blank">如何改变世界：马克思和马克思主义的传奇(享誉全球的思想大</a> </p> <p class="zuozhe">﹝英﹞埃里克霍布斯鲍姆（EricHobsbawm）　著，吕增奎　译</p> </li> 
         <li> <p class="pic" dd_name="买过本商品的人还买了商品图片11"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/23212120-1_l.jpg"> </a> <span class="hover"> <span class="price_e">电子书价: <a href="#" target="_blank">￥4.90</a> </span> <span class="pinglun">4536条评论</span> </span> </p> <p class="price"> <span class="price_d">￥24.60</span> </p> <p class="name" dd_name="买过本商品的人还买了商品名称11"> <a href="#" target="_blank">经济学原来这么有趣：颠覆传统教学的18堂经济课（与萨缪尔</a> </p> <p class="zuozhe">钟伟伟</p> </li> 
         <li> <p class="pic" dd_name="买过本商品的人还买了商品图片12"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/23951592-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">185条评论</span> </span> </p> <p class="price"> <span class="price_d">￥25.90</span> </p> <p class="name" dd_name="买过本商品的人还买了商品名称12"> <a href="#" target="_blank">传播学原来这么有趣：颠覆传统教学的18堂传播学课</a> </p> <p class="zuozhe">王建强著</p> </li> 
         <li> <p class="pic" dd_name="买过本商品的人还买了商品图片13"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/23457321-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">1070条评论</span> </span> </p> <p class="price"> <span class="price_d">￥22.10</span> </p> <p class="name" dd_name="买过本商品的人还买了商品名称13"> <a href="#" target="_blank">尼采的锤子：哲学大师的25种思维工具</a> </p> <p class="zuozhe">尼古拉斯·费恩</p> </li> 
         <li> <p class="pic" dd_name="买过本商品的人还买了商品图片14"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/1480635793-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">452条评论</span> </span> </p> <p class="price"> <span class="price_d">￥45.00</span> </p> <p class="name" dd_name="买过本商品的人还买了商品名称14"> <a href="#" target="_blank">巴拉巴拉男童短袖t恤男中大童上衣童装夏儿童学生T恤多色</a> </p> <p class="zuozhe"></p> </li> 
         <li> <p class="pic" dd_name="买过本商品的人还买了商品图片15"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/23973394-1_l.jpg"> </a> <span class="hover"> <span class="price_e">电子书价: <a href="#" target="_blank">￥9.00</a> </span> <span class="pinglun">1418条评论</span> </span> </p> <p class="price"> <span class="price_d">￥22.50</span> </p> <p class="name" dd_name="买过本商品的人还买了商品名称15"> <a href="#" target="_blank">大众哲学</a> </p> <p class="zuozhe">艾思奇</p> </li> 
         <li> <p class="pic" dd_name="买过本商品的人还买了商品图片16"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/23682996-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">3534条评论</span> </span> </p> <p class="price"> <span class="price_d">￥30.70</span> </p> <p class="name" dd_name="买过本商品的人还买了商品名称16"> <a href="#" target="_blank">何为良好生活</a> </p> <p class="zuozhe">陈嘉映</p> </li> 
         <li> <p class="pic" dd_name="买过本商品的人还买了商品图片17"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/23611453-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">8520条评论</span> </span> </p> <p class="price"> <span class="price_d">￥48.30</span> </p> <p class="name" dd_name="买过本商品的人还买了商品名称17"> <a href="#" target="_blank">大问题：简明哲学导论</a> </p> <p class="zuozhe">（美）罗伯特所罗门，凯思林希金斯</p> </li> 
         <li> <p class="pic" dd_name="买过本商品的人还买了商品图片18"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/24057672-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">6222条评论</span> </span> </p> <p class="price"> <span class="price_d">￥27.50</span> </p> <p class="name" dd_name="买过本商品的人还买了商品名称18"> <a href="#" target="_blank">最好的方法读唐诗（签名本）</a> </p> <p class="zuozhe">王芳</p> </li> 
         <li> <p class="pic" dd_name="买过本商品的人还买了商品图片19"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/60074651-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">2214条评论</span> </span> </p> <p class="price"> <span class="price_d">￥259.00</span> </p> <p class="name" dd_name="买过本商品的人还买了商品名称19"> <a href="#" target="_blank">[当当自营]FisherPrice费雪宝宝小餐椅P010</a> </p> <p class="zuozhe"></p> </li> 
        </div> 
        <div class="list_page"> 
         <li> <p class="pic" dd_name="买过本商品的人还买了商品图片20"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/23702904-1_l.jpg"> </a> <span class="hover"> <span class="price_e">电子书价: <a href="#" target="_blank">￥2.99</a> </span> <span class="pinglun">5953条评论</span> </span> </p> <p class="price"> <span class="price_d">￥35.90</span> </p> <p class="name" dd_name="买过本商品的人还买了商品名称20"> <a href="#" target="_blank">哲学家们都干了些什么</a> </p> <p class="zuozhe">林欣浩</p> </li> 
         <li> <p class="pic" dd_name="买过本商品的人还买了商品图片21"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/21101952-1_l.jpg"> </a> <span class="hover"> <span class="price_e">电子书价: <a href="#" target="_blank">￥22.03</a> </span> <span class="pinglun">76170条评论</span> </span> </p> <p class="price"> <span class="price_d">￥20.50</span> </p> <p class="name" dd_name="买过本商品的人还买了商品名称21"> <a href="#" target="_blank">不能错过的英语启蒙—中国孩子的英语路线图</a> </p> <p class="zuozhe">安妮鲜花</p> </li> 
         <li> <p class="pic" dd_name="买过本商品的人还买了商品图片22"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/23579910-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">13286条评论</span> </span> </p> <p class="price"> <span class="price_d">￥20.00</span> </p> <p class="name" dd_name="买过本商品的人还买了商品名称22"> <a href="#" target="_blank">我的第一本思维导图入门书</a> </p> <p class="zuozhe">胡雅茹　著</p> </li> 
         <li> <p class="pic" dd_name="买过本商品的人还买了商品图片23"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/23464770-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">1108条评论</span> </span> </p> <p class="price"> <span class="price_d">￥9.00</span> </p> <p class="name" dd_name="买过本商品的人还买了商品名称23"> <a href="#" target="_blank">小学生看图写话学练作业本一年级-秋内附贴画学练结合简单实</a> </p> <p class="zuozhe">王芳等</p> </li> 
         <li> <p class="pic" dd_name="买过本商品的人还买了商品图片24"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/1425850737-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">1条评论</span> </span> </p> <p class="price"> <span class="price_d">￥65.00</span> </p> <p class="name" dd_name="买过本商品的人还买了商品名称24"> <a href="#" target="_blank">以纯A21短袖t恤男体恤时尚圆领2017夏装学生衣服男士</a> </p> <p class="zuozhe"></p> </li> 
         <li> <p class="pic" dd_name="买过本商品的人还买了商品图片25"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/24035479-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">3条评论</span> </span> </p> <p class="price"> <span class="price_d">￥28.00</span> </p> <p class="name" dd_name="买过本商品的人还买了商品名称25"> <a href="#" target="_blank">别忘了回家</a> </p> <p class="zuozhe">王芳著</p> </li> 
         <li> <p class="pic" dd_name="买过本商品的人还买了商品图片26"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/24033245-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">13条评论</span> </span> </p> <p class="price"> <span class="price_d">￥28.50</span> </p> <p class="name" dd_name="买过本商品的人还买了商品名称26"> <a href="#" target="_blank">西餐文化与礼仪（中等职业学校西餐烹饪专业教材）</a> </p> <p class="zuozhe">王芳</p> </li> 
         <li> <p class="pic" dd_name="买过本商品的人还买了商品图片27"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/23670490-1_l.jpg"> </a> <span class="hover"> <span class="price_e">电子书价: <a href="#" target="_blank">￥8.99</a> </span> <span class="pinglun">68条评论</span> </span> </p> <p class="price"> <span class="price_d">￥21.30</span> </p> <p class="name" dd_name="买过本商品的人还买了商品名称27"> <a href="#" target="_blank">五脏气血通补手册</a> </p> <p class="zuozhe">王芳</p> </li> 
         <li> <p class="pic" dd_name="买过本商品的人还买了商品图片28"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/23380323-1_l.jpg"> </a> <span class="hover"> <span class="price_e">电子书价: <a href="#" target="_blank">￥6.00</a> </span> <span class="pinglun">4020条评论</span> </span> </p> <p class="price"> <span class="price_d">￥27.40</span> </p> <p class="name" dd_name="买过本商品的人还买了商品名称28"> <a href="#" target="_blank">北大哲学课（精装）</a> </p> <p class="zuozhe">经典课程编委会</p> </li> 
         <li> <p class="pic" dd_name="买过本商品的人还买了商品图片29"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/1270970236-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">0条评论</span> </span> </p> <p class="price"> <span class="price_d">￥598.00</span> </p> <p class="name" dd_name="买过本商品的人还买了商品名称29"> <a href="#" target="_blank">Haglofs火柴棍干爽舒适透气休闲短袖T恤602453</a> </p> <p class="zuozhe"></p> </li> 
        </div> 
        <div class="list_page"> 
         <li> <p class="pic" dd_name="买过本商品的人还买了商品图片30"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/22788959-1_l.jpg"> </a> <span class="hover"> <span class="price_e">电子书价: <a href="#" target="_blank">￥12.00</a> </span> <span class="pinglun">650891条评论</span> </span> </p> <p class="price"> <span class="price_d">￥21.50</span> </p> <p class="name" dd_name="买过本商品的人还买了商品名称30"> <a href="#" target="_blank">偷影子的人</a> </p> <p class="zuozhe">(法)马克·李维</p> </li> 
         <li> <p class="pic" dd_name="买过本商品的人还买了商品图片31"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/23274638-1_l.jpg"> </a> <span class="hover"> <span class="price_e">电子书价: <a href="#" target="_blank">￥4.99</a> </span> <span class="pinglun">1221113条评论</span> </span> </p> <p class="price"> <span class="price_d">￥14.50</span> </p> <p class="name" dd_name="买过本商品的人还买了商品名称31"> <a href="#" target="_blank">追风筝的人</a> </p> <p class="zuozhe">(美)胡塞尼</p> </li> 
         <li> <p class="pic" dd_name="买过本商品的人还买了商品图片32"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/24181573-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">0条评论</span> </span> </p> <p class="price"> <span class="price_d">￥45.80</span> </p> <p class="name" dd_name="买过本商品的人还买了商品名称32"> <a href="#" target="_blank">提问吕不韦</a> </p> <p class="zuozhe">郭志坤陈雪良著黄坤明主编</p> </li> 
         <li> <p class="pic" dd_name="买过本商品的人还买了商品图片33"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/1186463623-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">0条评论</span> </span> </p> <p class="price"> <span class="price_d">￥23.90</span> </p> <p class="name" dd_name="买过本商品的人还买了商品名称33"> <a href="#" target="_blank">易经的智慧4（从无心之感到为学日益）</a> </p> <p class="zuozhe">未知</p> </li> 
         <li> <p class="pic" dd_name="买过本商品的人还买了商品图片34"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/1402211646-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">17条评论</span> </span> </p> <p class="price"> <span class="price_d">￥79.00</span> </p> <p class="name" dd_name="买过本商品的人还买了商品名称34"> <a href="#" target="_blank">小猪班纳童装男童短裤夏七分裤中大童儿童运动裤纯棉中裤20</a> </p> <p class="zuozhe"></p> </li> 
         <li> <p class="pic" dd_name="买过本商品的人还买了商品图片35"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/24179080-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">2条评论</span> </span> </p> <p class="price"> <span class="price_d">￥37.90</span> </p> <p class="name" dd_name="买过本商品的人还买了商品名称35"> <a href="#" target="_blank">理解空间：20世纪空间观念的激变</a> </p> <p class="zuozhe">冯雷</p> </li> 
         <li> <p class="pic" dd_name="买过本商品的人还买了商品图片36"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/23730439-1_l.jpg"> </a> <span class="hover"> <span class="price_e">电子书价: <a href="#" target="_blank">￥4.99</a> </span> <span class="pinglun">8344条评论</span> </span> </p> <p class="price"> <span class="price_d">￥29.10</span> </p> <p class="name" dd_name="买过本商品的人还买了商品名称36"> <a href="#" target="_blank">王阳明心学：典藏修订版</a> </p> <p class="zuozhe">王觉仁　著</p> </li> 
         <li> <p class="pic" dd_name="买过本商品的人还买了商品图片37"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/1049345580-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">0条评论</span> </span> </p> <p class="price"> <span class="price_d">￥30.60</span> </p> <p class="name" dd_name="买过本商品的人还买了商品名称37"> <a href="#" target="_blank">八个女人闯南极</a> </p> <p class="zuozhe">费利西蒂.艾斯顿</p> </li> 
         <li> <p class="pic" dd_name="买过本商品的人还买了商品图片38"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/23455112-1_l.jpg"> </a> <span class="hover"> <span class="price_e">电子书价: <a href="#" target="_blank">￥12.99</a> </span> <span class="pinglun">11558条评论</span> </span> </p> <p class="price"> <span class="price_d">￥52.00</span> </p> <p class="name" dd_name="买过本商品的人还买了商品名称38"> <a href="#" target="_blank">罗辑思维（全二册）</a> </p> <p class="zuozhe">罗振宇　著</p> </li> 
         <li> <p class="pic" dd_name="买过本商品的人还买了商品图片39"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/1102844295-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">0条评论</span> </span> </p> <p class="price"> <span class="price_d">￥89.90</span> </p> <p class="name" dd_name="买过本商品的人还买了商品名称39"> <a href="#" target="_blank">森马短袖T恤女2017夏装新款上衣圆领宽松甜美条纹体恤两</a> </p> <p class="zuozhe"></p> </li> 
        </div> 
        <div class="list_page"> 
         <li> <p class="pic" dd_name="买过本商品的人还买了商品图片40"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/20086549-1_l.jpg"> </a> <span class="hover"> <span class="price_e">电子书价: <a href="#" target="_blank">￥2.99</a> </span> <span class="pinglun">56196条评论</span> </span> </p> <p class="price"> <span class="price_d">￥10.00</span> </p> <p class="name" dd_name="买过本商品的人还买了商品名称40"> <a href="#" target="_blank">沉思录</a> </p> <p class="zuozhe">马可.奥勒留</p> </li> 
         <li> <p class="pic" dd_name="买过本商品的人还买了商品图片41"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/1066848247-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">0条评论</span> </span> </p> <p class="price"> <span class="price_d">￥21.10</span> </p> <p class="name" dd_name="买过本商品的人还买了商品名称41"> <a href="#" target="_blank">中国哲学史大纲胡适9787509011355</a> </p> <p class="zuozhe">胡适</p> </li> 
         <li> <p class="pic" dd_name="买过本商品的人还买了商品图片42"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/23795896-1_l.jpg"> </a> <span class="hover"> <span class="price_e">电子书价: <a href="#" target="_blank">￥23.40</a> </span> <span class="pinglun">4276条评论</span> </span> </p> <p class="price"> <span class="price_d">￥29.30</span> </p> <p class="name" dd_name="买过本商品的人还买了商品名称42"> <a href="#" target="_blank">中国哲学简史</a> </p> <p class="zuozhe">冯友兰　著，赵复三　译</p> </li> 
         <li> <p class="pic" dd_name="买过本商品的人还买了商品图片43"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/1088576095-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">0条评论</span> </span> </p> <p class="price"> <span class="price_d">￥119.00</span> </p> <p class="name" dd_name="买过本商品的人还买了商品名称43"> <a href="#" target="_blank">福尔摩斯百科(全彩)[英国]英国DK出版社,王晋侯佳97</a> </p> <p class="zuozhe">[英国]英国DK出版社,王晋侯佳</p> </li> 
         <li> <p class="pic" dd_name="买过本商品的人还买了商品图片44"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/1037235448-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">249条评论</span> </span> </p> <p class="price"> <span class="price_d">￥179.00</span> </p> <p class="name" dd_name="买过本商品的人还买了商品名称44"> <a href="#" target="_blank">迪士尼童鞋2016年品牌新款儿童休闲运动鞋春夏季透气网面</a> </p> <p class="zuozhe"></p> </li> 
         <li> <p class="pic" dd_name="买过本商品的人还买了商品图片45"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/22822387-1_l.jpg"> </a> <span class="hover"> <span class="price_e">电子书价: <a href="#" target="_blank">￥4.99</a> </span> <span class="pinglun">1422条评论</span> </span> </p> <p class="price"> <span class="price_d">￥24.60</span> </p> <p class="name" dd_name="买过本商品的人还买了商品名称45"> <a href="#" target="_blank">心理学原来这么有趣-颠覆传统教学的18堂心理课</a> </p> <p class="zuozhe">刘雪</p> </li> 
         <li> <p class="pic" dd_name="买过本商品的人还买了商品图片46"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/23300618-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">9573条评论</span> </span> </p> <p class="price"> <span class="price_d">￥23.40</span> </p> <p class="name" dd_name="买过本商品的人还买了商品名称46"> <a href="#" target="_blank">不疯魔，不哲学</a> </p> <p class="zuozhe">哲不解著</p> </li> 
         <li> <p class="pic" dd_name="买过本商品的人还买了商品图片47"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/23203528-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">21582条评论</span> </span> </p> <p class="price"> <span class="price_d">￥36.80</span> </p> <p class="name" dd_name="买过本商品的人还买了商品名称47"> <a href="#" target="_blank">哲学的故事（经典的哲学入门读物，让深奥的哲学立刻生动起来</a> </p> <p class="zuozhe">(美)杜兰特</p> </li> 
         <li> <p class="pic" dd_name="买过本商品的人还买了商品图片48"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/23838575-1_l.jpg"> </a> <span class="hover"> <span class="price_e">电子书价: <a href="#" target="_blank">￥4.50</a> </span> <span class="pinglun">20632条评论</span> </span> </p> <p class="price"> <span class="price_d">￥28.10</span> </p> <p class="name" dd_name="买过本商品的人还买了商品名称48"> <a href="#" target="_blank">最好的方法给孩子</a> </p> <p class="zuozhe">王芳</p> </li> 
         <li> <p class="pic" dd_name="买过本商品的人还买了商品图片49"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/1060298248-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">40条评论</span> </span> </p> <p class="price"> <span class="price_d">￥79.00</span> </p> <p class="name" dd_name="买过本商品的人还买了商品名称49"> <a href="#" target="_blank">渔民部落户外皮肤衣女防晒衣速干轻薄可收纳风衣862429</a> </p> <p class="zuozhe"></p> </li> 
        </div> 
        <div class="list_page"> 
         <li> <p class="pic" dd_name="买过本商品的人还买了商品图片0"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/23572342-1_l.jpg"> </a> <span class="hover"> <span class="price_e">电子书价: <a href="#" target="_blank">￥13.56</a> </span> <span class="pinglun">76条评论</span> </span> </p> <p class="price"> <span class="price_d">￥77.40</span> </p> <p class="name" dd_name="买过本商品的人还买了商品名称0"> <a href="#" target="_blank">马克思主义哲学原典导读（哲学基本原典导读丛书）</a> </p> <p class="zuozhe">张周志　等编著</p> </li> 
         <li> <p class="pic" dd_name="买过本商品的人还买了商品图片1"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/23947711-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">320条评论</span> </span> </p> <p class="price"> <span class="price_d">￥22.60</span> </p> <p class="name" dd_name="买过本商品的人还买了商品名称1"> <a href="#" target="_blank">逻辑学原来这么有趣：颠覆传统教学的18堂逻辑课</a> </p> <p class="zuozhe">董桂萍著</p> </li> 
         <li> <p class="pic" dd_name="买过本商品的人还买了商品图片2"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/23958987-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">158条评论</span> </span> </p> <p class="price"> <span class="price_d">￥22.60</span> </p> <p class="name" dd_name="买过本商品的人还买了商品名称2"> <a href="#" target="_blank">社会学原来这么有趣：颠覆传统教学的18堂社会学课</a> </p> <p class="zuozhe">仲英涛著谭日辉审订</p> </li> 
         <li> <p class="pic" dd_name="买过本商品的人还买了商品图片3"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/23382987-1_l.jpg"> </a> <span class="hover"> <span class="price_e">电子书价: <a href="#" target="_blank">￥11.19</a> </span> <span class="pinglun">1551条评论</span> </span> </p> <p class="price"> <span class="price_d">￥25.90</span> </p> <p class="name" dd_name="买过本商品的人还买了商品名称3"> <a href="#" target="_blank">文学原来这么有趣：颠覆传统教学的18堂文学课(史上超有趣</a> </p> <p class="zuozhe">孙赫</p> </li> 
         <li> <p class="pic" dd_name="买过本商品的人还买了商品图片4"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/1023393535-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">13条评论</span> </span> </p> <p class="price"> <span class="price_d">￥328.00</span> </p> <p class="name" dd_name="买过本商品的人还买了商品名称4"> <a href="#" target="_blank">汉客(HANKE)拉杆箱男女万向轮密码锁行李箱防泼水耐磨</a> </p> <p class="zuozhe"></p> </li> 
         <li> <p class="pic" dd_name="买过本商品的人还买了商品图片5"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/23491719-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">657条评论</span> </span> </p> <p class="price"> <span class="price_d">￥22.60</span> </p> <p class="name" dd_name="买过本商品的人还买了商品名称5"> <a href="#" target="_blank">历史学原来这么有趣：颠覆传统教学的18堂历史课</a> </p> <p class="zuozhe">周海燕</p> </li> 
         <li> <p class="pic" dd_name="买过本商品的人还买了商品图片6"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/23919717-1_l.jpg"> </a> <span class="hover"> <span class="price_e">电子书价: <a href="#" target="_blank">￥9.99</a> </span> <span class="pinglun">113条评论</span> </span> </p> <p class="price"> <span class="price_d">￥77.40</span> </p> <p class="name" dd_name="买过本商品的人还买了商品名称6"> <a href="#" target="_blank">西方哲学史：从古希腊到当下（修订版）</a> </p> <p class="zuozhe">[挪]奎纳尔·希尔贝克尼尔斯·吉列尔著，童世骏郁振华刘进译</p> </li> 
         <li> <p class="pic" dd_name="买过本商品的人还买了商品图片7"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/22583570-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">228条评论</span> </span> </p> <p class="price"> <span class="price_d">￥32.70</span> </p> <p class="name" dd_name="买过本商品的人还买了商品名称7"> <a href="#" target="_blank">马克思主义基本原理概论教学用书</a> </p> <p class="zuozhe">熊晓琳　主编</p> </li> 
         <li> <p class="pic" dd_name="买过本商品的人还买了商品图片8"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/23705400-1_l.jpg"> </a> <span class="hover"> <span class="price_e">电子书价: <a href="#" target="_blank">￥4.90</a> </span> <span class="pinglun">338条评论</span> </span> </p> <p class="price"> <span class="price_d">￥57.30</span> </p> <p class="name" dd_name="买过本商品的人还买了商品名称8"> <a href="#" target="_blank">经济学原来这么有趣（套装共2册）</a> </p> <p class="zuozhe">钟伟伟　著</p> </li> 
         <li> <p class="pic" dd_name="买过本商品的人还买了商品图片9"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/1393883335-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">2条评论</span> </span> </p> <p class="price"> <span class="price_d">￥129.00</span> </p> <p class="name" dd_name="买过本商品的人还买了商品名称9"> <a href="#" target="_blank">Jeep/吉普男士户外速干透气防晒圆领短袖T恤衫J651</a> </p> <p class="zuozhe"></p> </li> 
        </div> 
       </ul> 
      </div> 
     </div> 
    </div> 
    <a id="review_point" class="browser" href="#">&nbsp;</a> 
    <a id="detail_point" class="browser" href="#"></a> 
    <a id="comment_point" class="browser" href="#"></a> 
    <a id="comment" class="browser" isloaded="1" href="#"></a> 
    <a id="question_point" class="browser" href="#"></a> 
    <a id="question" class="browser" isloaded="1" href="#"></a> 
    <div class="t_box" id="product_tab"> 
     <div id="tab-panels" class="tab_panel" ddt-area="029" style="display: none;"> 
      <div class="tab_panel_kf"> 
       <span class="icon dang"></span> 
       <span class="name">小书屋自营</span> 
       <span class="live800" dd_name="人工客服（黏性导航）"> <span class="onlines" id="live800" title="点此与客服交流" style="display: none"><a href="#">联系商家</a></span> </span> 
       <span class="icon_dj" style="display:block" dd_name="机器人客服（黏性导航）">小当家</span> 
      </div> 
      <ul class="tab clearfix"></ul> 
      <div class="tab_panel_btn" id="buyarea_tab"> 
       <a href="#" class="btn btn_red" ddt-expose="on" ddt-src="addChart2" style="display: block;" id="tab_pannel_btn"><i class="cart"></i>加入购物车</a> 
       <span class="price" id="buyarea_price">当当价:<span class="price_d">￥25.60</span></span> 
      </div> 
     </div> 
     <div id="tab-panels2" class="tab_panel" ddt-area="029"> 
      <div class="tab_panel_kf"></div> 
      <ul class="tab clearfix"> 
       <li class="hover" id="detail_tab" name="__tab_detail_pub" dd_name="商品详情tab"> 商品详情 </li> 
       <li class="" id="comment_tab" name="__tab_comment_pub" dd_name="商品评论tab">商品评论(2303)</li> 
       <li class="" id="question_tab" name="__tab_wenda_pub" dd_name="商家问答tab" isload="1">商品问答(0)</li> 
      </ul> 
      <div class="tab_panel_btn"></div> 
     </div> 
     <div class="t_box_left" id="detail_all" name="Detail_pub" dd_name="商品详情"> 
      <div class="pro_content" id="detail_describe" ddt-area="010"> 
       <ul class="key clearfix"> 
        <li>版 次：1</li> 
        <li>页 数：</li> 
        <li>字 数：200000</li> 
        <li>印刷时间：2013年02月01日</li> 
        <li>开 本：12k</li> 
        <li>纸 张：胶版纸</li> 
        <li>印 次：1</li> 
        <li>包 装：平装</li> 
        <li>是否套装：否</li> 
        <li>国际标准书号ISBN：9787122157607</li> 
        <li class="clearfix fenlei" dd_name="详情所属分类" id="detail-category-path"><label>所属分类：</label><span class="lie"><a target="_bland" href="#" class="green" data-category-id="1805">图书</a>&gt;<a target="_bland" href="#" class="green" data-category-id="7536">哲学/宗教</a>&gt;<a target="_bland" href="#" class="green" data-category-id="7537">哲学</a>&gt;<a target="_bland" href="#" class="green" data-category-id="7538">哲学知识读物</a></span></li> 
       </ul> 
      </div> 
      <!-- 快速直达 begin --> 
      <a name="operation_point2" id="operation_point2" class="browser browser_op" href="#">&nbsp;</a>  
      <div class="book_operation book_operation_fix" id="operation-fix" style="display: none;" dd_name="快速直达"> 
       <ul id="navigation-labels"> 
        <li class="title">快速直达</li> 
        <li data-idx="abstract" dd_name="导航-编辑推荐" class=""><a href="#"><span class="icon"></span>编辑推荐</a></li> 
        <li data-idx="content" dd_name="导航-内容简介" class=""><a href="#"><span class="icon"></span>内容简介</a></li> 
        <li data-idx="authorIntroduction" dd_name="导航-作者简介" class=""><a href="#"><span class="icon"></span>作者简介</a></li> 
        <li data-idx="catalog" dd_name="导航-目　　录" class=""><a href="#"><span class="icon"></span>目　　录</a></li> 
        <li data-idx="preface" dd_name="导航-前　　言" class=""><a href="#"><span class="icon"></span>前　　言</a></li> 
        <li data-idx="mediaFeedback" dd_name="导航-媒体评论" class=""><a href="#"><span class="icon"></span>媒体评论</a></li> 
        <li data-idx="extract" dd_name="导航-试读章节" class=""><a href="#"><span class="icon"></span>试读章节</a></li> 
       </ul> 
       <div class="erwei_dz"> 
        <a href="#" id="eBook-download"> <span>免费下载读书APP</span> </a> 
       </div> 
      </div> 
      <!-- 快速直达 end --> 
      <!-- detail 说明 --> 
      <div class="section" id="detail"> 
       <div id="abstract" class="section"> 
        <div class="title"> 
         <span>编辑推荐</span> 
        </div> 
        <div class="descrip"> 
         <span id="abstract-all"></span> 
         <p> 　　为了能够让读者们更亲密地接触到哲学的美妙，《哲学原来这么有趣：颠覆传统教学的18堂哲学课》以一种虚拟的方式将不同时代的伟大哲学大师聚集到了哲学的课堂上，并以平淡易懂的语言讲述他们的智慧遗产。在课堂的巧妙互动中，将那些哲学原理和当今的社会现实联系起来，即使是平时很少接触哲学的读者，也一定能够轻松地读懂其中的道理。在这18堂神秘的哲学课堂里，几乎囊括了我们生活、工作、沟通中的各种问题，人生的意义、幸福的向往、爱情和婚姻的烦恼、工作的倦怠、对自由的渴望、对正义的追求、对爱的执着……本书由麦客文化（化学工业出版社旗下大众文化图书出版品牌）出品，王芳著，中国人民大学哲学院博士生导师李萍教授亲自审订并评注。</p>&nbsp; 
        </div> 
       </div> 
       <div id="content" class="section"> 
        <div class="title"> 
         <span>内容简介</span> 
        </div> 
        <div class="descrip"> 
         <span id="content-all"></span> 
         <p> 这是一本介绍哲学大师及其思想精华的图书。它虚拟了18堂神秘课堂，每堂课都围绕一个主题展开，并挑选一位合适的哲学大师讲授。在授课的过程中，听课人与大师们还有互动和交流。虽然，那些大师们是带着“任务”前来授课的，但他们可不是如此“听话”的嘉宾，还会时不时说些自己的趣闻、趣事，如果你喜欢听这些方面的故事，可千万别错过了本书！</p> 
        </div> 
       </div> 
       <div id="authorIntroduction" class="section"> 
        <div class="title"> 
         <span>作者简介</span> 
        </div> 
        <div class="descrip"> 
         <span id="authorIntroduction-all"></span> 
         <p>　　王芳，毕业于江苏省某师范大学哲学系，现为中学教师。闲暇时多有一些哲学散文见诸报端，颇受好评。</p> 
        </div> 
       </div> 
       <div id="catalog" class="section"> 
        <div class="title"> 
         <span>目　　录</span> 
        </div> 
        <div class="descrip"> 
         <span id="catalog-show">第一堂课　苏格拉底老师主讲“自己”<br>哲学是什么/ 002<br>苏格拉底之前的哲学有什么/ 005<br>你幸福吗/ 008<br>认识你自己/ 010<br>第二堂课　柏拉图老师主讲“理念”<br>“恋爱—结婚”是绝对的真理吗/ 014<br>婚姻是永恒不变的吗/ 019<br>是否存在不朽的灵魂/ 021<br>理想国——哲学之国/ 024<br>第三堂课　康德老师主讲“理性”<br>不要问知道什么，而要问能知道什么/ 028<br>时间和空间于人类而言是什么/ 032<br>因果律是自然的法则吗/ 034</span> 
         <span id="catalog-show-all" style="display:none;"></span> 
         <textarea style="display:none" id="catalog-textarea">&lt;p&gt;第一堂课　苏格拉底老师主讲“自己”&lt;br /&gt;
哲学是什么/ 002&lt;br /&gt;
苏格拉底之前的哲学有什么/ 005&lt;br /&gt;
你幸福吗/ 008&lt;br /&gt;
认识你自己/ 010&lt;br /&gt;
第二堂课　柏拉图老师主讲“理念”&lt;br /&gt;
“恋爱—结婚”是绝对的真理吗/ 014&lt;br /&gt;
婚姻是永恒不变的吗/ 019&lt;br /&gt;
是否存在不朽的灵魂/ 021&lt;br /&gt;
理想国——哲学之国/ 024&lt;br /&gt;
第三堂课　康德老师主讲“理性”&lt;br /&gt;
不要问知道什么，而要问能知道什么/ 028&lt;br /&gt;
时间和空间于人类而言是什么/ 032&lt;br /&gt;
因果律是自然的法则吗/ 034&lt;br /&gt;
什么决定是与非、对与错/ 037&lt;br /&gt;
第四堂课　黑格尔老师主讲“真理”&lt;br /&gt;
实体即主体/ 042&lt;br /&gt;
世间真的没有永恒真理吗/ 046&lt;br /&gt;
哲学唯一能掌握的就是历史/ 048&lt;br /&gt;
绝对精神应该朝着什么方向发展/ 052&lt;br /&gt;
第五堂课　亚里士多德老师主讲“与生俱来”&lt;br /&gt;
我们脑海中的概念是天生的吗/ 056&lt;br /&gt;
现实世界里的实体是怎样构成的/ 058&lt;br /&gt;
存在的存在是何原因/ 061&lt;br /&gt;
人如何活得快乐/ 063&lt;br /&gt;
第六堂课　海德格尔老师主讲“生死”&lt;br /&gt;
人为什么活着/ 068&lt;br /&gt;
生与死正是一枚钱币的两面/ 070&lt;br /&gt;
真正意识到时间才会更加珍惜生命/ 073&lt;br /&gt;
如何正确地面对死亡/ 075&lt;br /&gt;
第七堂课　叔本华老师主讲“悲剧”&lt;br /&gt;
世界是痛苦的还是快乐的/ 080&lt;br /&gt;
为什么世界是痛苦的/ 082&lt;br /&gt;
是什么导致悲剧的发生/ 084&lt;br /&gt;
第八堂课　萨特老师主讲“自由”&lt;br /&gt;
你怎样选择，你就怎样生活/ 090&lt;br /&gt;
我的存在决定它们的存在/ 093&lt;br /&gt;
有选择的“存在”，有选择的责任/ 095&lt;br /&gt;
何为“爱”/ 099&lt;br /&gt;
第九堂课　阿伦特老师主讲“生活”&lt;br /&gt;
政治和社会不能混为一谈/ 104&lt;br /&gt;
我们为什么要工作/ 107&lt;br /&gt;
“劳动”与“工作”有什么区别/ 108&lt;br /&gt;
平衡工作与生活/ 111&lt;br /&gt;
第十堂课　尼采老师主讲“人生”&lt;br /&gt;
上帝被我杀死了，你们还在信仰什么/ 114&lt;br /&gt;
人生的意义到底在哪里/ 117&lt;br /&gt;
追求更强的意志才能活下去/ 119&lt;br /&gt;
第十一堂课　洛克老师主讲“经验”&lt;br /&gt;
我们头脑中的概念从何而来/ 124&lt;br /&gt;
感官的经验能否信赖/ 127&lt;br /&gt;
为什么我们容易产生怠惰情绪/ 129&lt;br /&gt;
第十二堂课　笛卡尔老师主讲“怀疑”&lt;br /&gt;
为了打好地基，就要先怀疑/ 134&lt;br /&gt;
存在完美的实体吗/ 137&lt;br /&gt;
人与动物的区别在哪里/ 139&lt;br /&gt;
第十三堂课　罗尔斯老师主讲“正义”&lt;br /&gt;
正确用什么来衡量/ 144&lt;br /&gt;
我们如何达成共识/ 148&lt;br /&gt;
伦理和法律谁更重要/ 150&lt;br /&gt;
怎样才能存在绝对的公平正义/ 151&lt;br /&gt;
第十四堂课　列维纳斯老师主讲“他人与自我”&lt;br /&gt;
“他人”究竟是什么/ 156&lt;br /&gt;
“比较”是一件累人累己的事/ 158&lt;br /&gt;
他人就是我们的责任/ 161&lt;br /&gt;
第十五堂课　胡塞尔老师主讲“真相”&lt;br /&gt;
一个命题如何成为真命题/ 166&lt;br /&gt;
如何看清事实真相/ 169&lt;br /&gt;
为什么我们看同一事物会有不同的认识/ 172&lt;br /&gt;
不同的心境导致不同的“真相”/ 174&lt;br /&gt;
第十六堂课　柏格森老师主讲“笑”&lt;br /&gt;
我们为何哈哈大笑/ 178&lt;br /&gt;
滑稽从何而来/ 182&lt;br /&gt;
滑稽是如何表现的/ 184&lt;br /&gt;
第十七堂课　克尔恺郭尔老师主讲“绝望”&lt;br /&gt;
无名书/ 188&lt;br /&gt;
自我存在于痛苦和绝望中/ 189&lt;br /&gt;
无意识的绝望/ 191&lt;br /&gt;
女人式的绝望/ 193&lt;br /&gt;
男人式的绝望/ 195&lt;br /&gt;
第十八堂课　费尔巴哈老师主讲“异化”&lt;br /&gt;
是人创造了神还是神创造了人/ 200&lt;br /&gt;
人类如何造神/ 202&lt;br /&gt;
人的本质究竟是什么/ 205&lt;br /&gt;
被异化的“爱”/ 206&lt;/p&gt;</textarea> 
         <div class="section_show_more"> 
          <a href="#" class="section_show_more" id="catalog-btn">显示全部信息</a> 
         </div> 
        </div> 
       </div> 
       <div id="preface" class="section"> 
        <div class="title"> 
         <span>前　　言</span> 
        </div> 
        <div class="descrip"> 
         <span id="preface-show">前 言<br>亲爱的读者朋友，当你拿起这本《哲学原来这么有趣——颠覆传统教学的18堂哲学课》的时候，我猜想，你一定也是一位对哲学比较感兴趣的人。同时，我也会对你表示崇敬，因为，哲学一向被人们理解为深奥的学问，而想要弄懂哲学的人都不是一般人。所以，为了我们都非“常人”的默契，首先我要感谢你拿起了这本书。<br>哲学的确深奥，但深奥并不代表难懂。曾经我也以为哲学不是一般人能够碰触的，但接触之后，我还是被它吸引，因为它充满了神秘色彩和智慧光芒。如果说科学代表的是严谨，那么哲学更多表现为一种智慧。它是一种用心来思考的智慧，一种用心去感受世界的智慧。许多人喜欢哲学，正是喜欢它的这种智慧，我也喜欢这种感觉，同时陶醉于追求这种智慧的过程。<br>我是一个喜欢分享的人，所以，我希望能够把我对哲学智慧的思考分享给大家，而且多年来，我也一直在努力寻找一种最佳的方式来实现分享，于是，这本有趣的哲学智慧书便诞生了。</span> 
         <span id="preface-show-all" style="display:none;"></span> 
         <textarea style="display:none" id="preface-textarea">&lt;p&gt;前 言&lt;br /&gt;
亲爱的读者朋友，当你拿起这本《哲学原来这么有趣——颠覆传统教学的18堂哲学课》的时候，我猜想，你一定也是一位对哲学比较感兴趣的人。同时，我也会对你表示崇敬，因为，哲学一向被人们理解为深奥的学问，而想要弄懂哲学的人都不是一般人。所以，为了我们都非“常人”的默契，首先我要感谢你拿起了这本书。&lt;br /&gt;
哲学的确深奥，但深奥并不代表难懂。曾经我也以为哲学不是一般人能够碰触的，但接触之后，我还是被它吸引，因为它充满了神秘色彩和智慧光芒。如果说科学代表的是严谨，那么哲学更多表现为一种智慧。它是一种用心来思考的智慧，一种用心去感受世界的智慧。许多人喜欢哲学，正是喜欢它的这种智慧，我也喜欢这种感觉，同时陶醉于追求这种智慧的过程。&lt;br /&gt;
我是一个喜欢分享的人，所以，我希望能够把我对哲学智慧的思考分享给大家，而且多年来，我也一直在努力寻找一种最佳的方式来实现分享，于是，这本有趣的哲学智慧书便诞生了。&lt;br /&gt;
在这本书中，为了能够让读者们更亲密地接触到哲学的美妙，我以一种虚拟的方式将不同时代的伟大哲学大师聚集到了哲学的课堂上，并以平淡易懂的语言讲述他们的智慧遗产。在课堂的巧妙互动中，将那些哲学原理和当今的社会现实联系起来，即使是平时很少接触哲学的读者，也一定能够轻松地读懂其中的道理。&lt;br /&gt;
在这18堂神秘的哲学课堂里，几乎囊括了我们生活、工作、沟通中的各种问题，人生的意义、幸福的向往、爱情和婚姻的烦恼、工作的倦怠、对自由的渴望、对正义的追求、对爱的执着……这本书帮助我们解答生活的困惑，解析社会的矛盾。不过，在此我想提醒每一位读者，虽然哲学涉及的领域非常广泛，但哲学并不是“非此即彼”的绝对答案，可能对同一个哲学观点，不同的哲学大师会有不同的解读，甚至是相互批评的对立观点，但这丝毫不会影响我们的思考，因为哲学就是在不断的打磨中才更加精致。没有了争议就没有了思考，哲学就无所谓智慧了。因此，在阅读此书的过程中，不要一味地接受，而要积极地去思考，尽量把自己融入到哲学课堂之中，并跟随家明、小米们一起提问与思考，如此一来，我所期望的作为哲学启蒙书的目的就达到了。&lt;br /&gt;
另外，本书还专门针对哲学原理设计了幽默、有趣的插画，不仅提高了本书的趣味性，而且还能带来不一样的哲学体验。漫画衔接文字，文字装扮人物，让我们体会一次前无古人的授课方式吧。&lt;br /&gt;
当然，如果你在阅读此书之后还想了解更多相关的哲学知识，可以直接参考每位哲学大师推荐的相关哲学著作，虽然它不一定能够帮你找到想要的答案，但是至少能给你带来不一样的体验和认识，让你不再迷茫和困惑。既然如此，你还等什么？赶紧去和18位哲学大师展开一段神秘的邂逅吧！&lt;br /&gt;
&lt;br /&gt;&lt;/p&gt;</textarea> 
         <div class="section_show_more"> 
          <a href="#" class="section_show_more" id="preface-btn">显示全部信息</a> 
         </div> 
        </div> 
       </div> 
       <div id="mediaFeedback" class="section"> 
        <div class="title"> 
         <span>媒体评论</span> 
        </div> 
        <div class="descrip"> 
         <span id="mediaFeedback-all"></span> 
         <p> 《哲学原来这么有趣——颠覆传统教学的18堂哲学课》一书是一本全新的尝试之作。它选取哲学史（严格来说主要是西方哲学史）上的18个人物，对他们的核心观念做了生动的诠释，配以图片、表格，用形象化的表达形式简化了深奥的学术概念，真正做到了深入浅出。这极大改变了哲学著作一贯的“刻板印象”，放下身段，拉近距离，与民众亲密接触。——中国人民大学哲学院教授 李萍</p> 
        </div> 
       </div> 
       <div id="extract" class="section"> 
        <div class="title"> 
         <span>在线试读部分章节</span> 
        </div> 
        <div class="descrip"> 
         <span id="extract-show">“恋爱—结婚”是绝对的真理吗<br>为了逃离同事们异样的眼光，到了下班时间，林夏就冲出办公室。时间尚早，她不知该去哪里，又不想回家，突然想起昨天的那堂课，想起了“苏格拉底老师”，于是就快步朝昨天的那个胡同走去……<br>　　“大家晚上好，我是柏拉图。现在是晚上7点半，看来我迟到了半个小时，我感到非常抱歉。为了表达我的歉意，我会尽量让今天的课更加有趣。哦，对了，不要一直盯着我的着装议论，这是不礼貌的，这件衣服可是我最喜欢的，你们不觉得很帅吗？哦，我忘记了，你们是不是觉得一定要穿上衬衫和西装，系上领带才算是正装？那些穿西装、打领带的男士真的喜欢那样穿吗？穿上了西装，打了领带就一定是绅士吗？似乎，的确如此，因为很多人都感觉穿西装打领带的人很帅。当然，我除外。”突然一个陌生人走进教室，没缘由地说出一段无头无脑的话，令在场的人都面面相觑。<br>　　听到这些话，林夏不禁笑了起来——“是呀，每次看到穿西装、打领带的男士我都会忍不住猜想那人是做什么工作的，或者是软件工程师，或者是银行经理，但绝不会往装修工人上面想。”<br>　　“现在我想问一个问题，大家说说，恋爱的最终结局就一定是结婚，不管是不是和自己爱的那个人结婚，人最终必须走向结婚这条路，对不对？”柏拉图问道。<br>　　“当然如此，‘结婚生子’是每个人的责任和义务，结婚不仅仅是两个人的事，更是两个家庭的事。现在有很多年轻人都不听父母的话，不愿结婚，这都是不负责任的态度。”葛老似乎有些怒气。<br>　　“我不认同。现在越来越多的人都选择恋爱，而放弃结婚。我觉得，这是一种进步理念，是一种自由意识，说明人们已经开始突破传统理念的束缚，逐渐走向‘绝对自由’了。婚姻所带来的幸福，恋爱也能够给予，但是婚姻所造成的不幸，却是恋爱可以避免的。所以，为什么非要选择可能会造成不幸的婚姻呢？”说话的是小米，因为最近小米的姐姐和姐夫吵架，两人正在闹离婚，所以小米也受到了影响，原本就不信任婚姻的她对婚姻更加不信任了。<br>　　听到这两人的话，林夏心里也泛起了涟漪——“难道我真的是选择恋爱，放弃结婚吗？不，不是。我只是暂时不结婚，是晚婚而不是不婚，最终我还是会结婚，组建一个真正属于自己的家庭。”</span> 
         <span id="extract-show-all" style="display:none;"></span> 
         <textarea style="display:none" id="extract-textarea">&lt;p&gt;“恋爱—结婚”是绝对的真理吗&lt;br /&gt;
为了逃离同事们异样的眼光，到了下班时间，林夏就冲出办公室。时间尚早，她不知该去哪里，又不想回家，突然想起昨天的那堂课，想起了“苏格拉底老师”，于是就快步朝昨天的那个胡同走去……&lt;br /&gt;
　　“大家晚上好，我是柏拉图。现在是晚上7点半，看来我迟到了半个小时，我感到非常抱歉。为了表达我的歉意，我会尽量让今天的课更加有趣。哦，对了，不要一直盯着我的着装议论，这是不礼貌的，这件衣服可是我最喜欢的，你们不觉得很帅吗？哦，我忘记了，你们是不是觉得一定要穿上衬衫和西装，系上领带才算是正装？那些穿西装、打领带的男士真的喜欢那样穿吗？穿上了西装，打了领带就一定是绅士吗？似乎，的确如此，因为很多人都感觉穿西装打领带的人很帅。当然，我除外。”突然一个陌生人走进教室，没缘由地说出一段无头无脑的话，令在场的人都面面相觑。&lt;br /&gt;
　　听到这些话，林夏不禁笑了起来——“是呀，每次看到穿西装、打领带的男士我都会忍不住猜想那人是做什么工作的，或者是软件工程师，或者是银行经理，但绝不会往装修工人上面想。”&lt;br /&gt;
　　“现在我想问一个问题，大家说说，恋爱的最终结局就一定是结婚，不管是不是和自己爱的那个人结婚，人最终必须走向结婚这条路，对不对？”柏拉图问道。&lt;br /&gt;
　　“当然如此，‘结婚生子’是每个人的责任和义务，结婚不仅仅是两个人的事，更是两个家庭的事。现在有很多年轻人都不听父母的话，不愿结婚，这都是不负责任的态度。”葛老似乎有些怒气。&lt;br /&gt;
　　“我不认同。现在越来越多的人都选择恋爱，而放弃结婚。我觉得，这是一种进步理念，是一种自由意识，说明人们已经开始突破传统理念的束缚，逐渐走向‘绝对自由’了。婚姻所带来的幸福，恋爱也能够给予，但是婚姻所造成的不幸，却是恋爱可以避免的。所以，为什么非要选择可能会造成不幸的婚姻呢？”说话的是小米，因为最近小米的姐姐和姐夫吵架，两人正在闹离婚，所以小米也受到了影响，原本就不信任婚姻的她对婚姻更加不信任了。&lt;br /&gt;
　　听到这两人的话，林夏心里也泛起了涟漪——“难道我真的是选择恋爱，放弃结婚吗？不，不是。我只是暂时不结婚，是晚婚而不是不婚，最终我还是会结婚，组建一个真正属于自己的家庭。”&lt;br /&gt;
　　柏拉图老师说：“呵呵，是呀，现在越来越多的人选择晚婚，当然也有一部分人坚持不婚，这的确让长辈们很苦恼。随着如今相亲节目的火热和大龄剩女的增多，我们反思晚婚率逐渐飙升的同时也不得不承认，社会离婚率也在增长。那么，离婚率高可以作为不结婚或晚婚的理由吗？不，我相信，大多数人不会如此，而且也不应该如此。人最终还是应该结婚的，因为这是我们每个人都在追求的理想状态，我把它称为‘理念’或者‘理型’，这是我的哲学理论的基本点，涉及很多方面，大家可要仔细听了。”&lt;br /&gt;
　　“我关心的是世间永恒不变的事物，我认为自然界中有形的东西是‘流动’的，所以世间才不存在不会分解的‘物质’。虽然这些物质会受时间侵蚀，但做成这些东西的‘模子’或‘形式’是永恒不变的。”说到这里，柏拉图老师转身在黑板上画了一个矩形，接着又画了一个圆。然后他继续说道：“我想问问大家，我画的是什么形状？”&lt;br /&gt;
　　“是一个矩形和一个圆形。”家明抢先回答出来。&lt;br /&gt;
　　柏拉图老师等待了几秒钟说：“没有人站出来反对，看来是同意家明同学的回答了。准确地说，我画的不算是矩形或者圆形，因为我没有使用任何三角板或圆规，只能说它们近似矩形或圆形。但是，即便如此，大家还是都会不约而同地认为我画的是矩形和圆形，为什么呢？原因就是在我们的脑海里存在着一个永恒不变的固定的矩形或圆形的理念。理念是不会改变的，它是看不见摸不着的东西，我们也可以将其称为一种永远的理想状态。与之相反，那些我们能够感觉到的个体则是会改变的，是流动的，是会随着时间的流逝产生或消亡的。而那种永恒不变的理念就好比是做饼干的模子，从模子里做出来的缺一角或少一边的饼干就好比是那些我们能够感觉到的流动的个体，即使那些缺边少角的饼干和模子不完全一样，但我们从一个个‘不完美’的饼干身上还是能看出其‘完美’的模子形状。”&lt;br /&gt;
　　“因此，结婚就是一种不变的理念，只要存在这种理念，就必然会产生出各种不同的结果，比如离婚、晚婚、早婚、不婚等，而这些各不相同的结果的最终来源还是‘结婚’。”&lt;br /&gt;
　　“既然如此，为什么人还是会选择结婚，为什么还要有结婚这种模式呢？”小米的这个问题似乎是很多人都想问的，其他的个别听众也深有感触地点了点头。&lt;br /&gt;
　　“是呀，这个问题已经成为一种普遍现象了。很多人结婚的原因都不尽相同，有的人是出于爱情，有的人是出于责任，有的人是为了解决经济问题，有的人是为了获取一种安全感……但是，不管是什么原因，他们选择结婚都是有其共同的理由的，这个理由是婚姻所具备的永恒不变性，其中之一就是婚姻具有法律效力，夫妻双方都在婚姻中受法律的约束。再者就是社会约定俗成对婚姻的界定，夫妻双方必须忠诚，必须承担责任，以及婚姻是家庭构成的标志，如果想要构建家庭，婚姻是必须存在的，想要稳固爱情的人更需要婚姻。&lt;br /&gt;
　　“所以，结婚这个理念在人们意识中还是美好的、幸福的，而离婚等不幸只是结婚这个理念的投影，是流动的，消亡的。‘复婚’便是最明显的证据。不管怎么样，离婚的避免不在于是否结婚，而在于如何经营婚姻，如何把婚姻变成自己所追求的理想状态，这和如何用一个模子做出完美、无残缺的饼干是一样的。”&lt;br /&gt;
　　“哦，我明白了。其实也就是说，‘结婚’是个理念世界，这个世界的本质是永恒的完全的真理世界，但是我们每个个体在这一理念下的行为都有不完全的地方，比如离婚、晚婚，当然也有完美的婚姻或者出于责任而勉强经营的婚姻等，总之各种不同的婚姻模式，都是容易改变的、能被察觉的世界，是理念的投影。对吗？”家明冷静地说出这段话，似乎费了很大的工夫。&lt;br /&gt;
　　“年轻人，头脑反应很快，理解得也很透彻，回答得很好。”柏拉图老师高兴地说道。&lt;br /&gt;
婚姻是永恒不变的吗&lt;br /&gt;
　　“听您的意思，在我们感官世界之外存在一个永恒的、完全的、本质的世界。那么婚姻到底是不是永恒的呢？”小米对关于“婚姻”的话题一直都如此执着。&lt;br /&gt;
　　“我相信，一切事物都有一个永恒的本质的东西存在，这个东西存在于自然界各种现象的背后，是永恒不变的模式，这就是‘理念’或‘理型’，并且，真正的真理只有一个——来自于‘理智’。&lt;br /&gt;
　　“你问我‘婚姻是不是永恒的’，大概也是因为不完美的婚姻让你对它的永恒性产生了怀疑，但是，这并不是婚姻的本质，而是婚姻的投射，是你对婚姻的感觉。因为，你的婚姻或他的婚姻都只有你和他体验过，感受过，仅仅存在于你和他的世界里，其他人都不可能体会到、认识到，可以说，那只是存在于你或者他的感官世界里的婚姻，所以，你们认识的‘婚姻’就不可能是永恒不变的，那不是婚姻的理念。&lt;br /&gt;
　　“在我的理论中，人们对于那些不断改变的事物不可能会有真正的认识。人们只有对于那些运用理智来了解的事物才会有真正的认识，对于那些属于感官世界的具体事物只能当做参考意见。举个例子来说，假如你从没有见过做饼干的模子，当你看到一个个成形的饼干之后，你可以非常确定这个饼干的完美模样是什么样的，即使是有的少了尾巴，有的少了耳朵等，你也可以猜到它完整时的模样。因为这是我们的理智告诉我们的。而且，纵然是你亲眼看到了模子，也不一定就能从视觉观察中得到正确的认知，因为有时候感官的认知不一定值得信任，视觉能力也是因人而异和受环境干扰的。但是，理智是人人都相同的。&lt;br /&gt;
　　“我认为，理智是最美妙的一种东西，就像数学是非常吸引人的学科，是我们可以真正了解的状态，是永远不会改变的。我们知道一个三角形的内角和是180度，不管我们画得多么不规则或者形状不一，但是我们都知道三角形的内角和是180度，我们仍然能清晰地想象出三角形的样子。就好比对于‘3×5=15’，大家永远不会得出‘10、14、18’等不同的答案，但对于‘什么颜色能令人开心’这个问题却会产生各种不同的答案，这就是理性与感觉的不同。因此，真正的知识是来源于理性的，理性永远是宇宙共通的永恒不变的事物。即使这个世界出现了各种奇怪颜色的马，‘理型’的马也一定是有四肢、有尾巴、有毛发的。”&lt;br /&gt;
葛老轻轻咳了一声，说：“这就是哲学家的个性吧，总是努力掌握这个世界永恒不变的事物。”&lt;/p&gt;</textarea> 
         <div class="section_show_more"> 
          <a href="#" class="section_show_more" id="extract-btn">显示全部信息</a> 
         </div> 
        </div> 
       </div> 
      </div> 
      <!-- detail 说明end --> 
     </div> 
     <!-- 详情页完 --> 
     <!-- 价格说明begin --> 
     <!-- 价格说明begin --> 
     <div class="price_indication" id="price-explain"> 
      <div class="title">
        价格说明 
      </div> 
      <ul> 
       <li><span><i></i>当当价：</span>为商品的销售价，具体的成交价可能因会员使用优惠券、积分等发生变化，最终以订单结算页价格为准。</li> 
       <li><span><i></i>划线价：</span>划线价格可能是图书封底定价、商品吊牌价、品牌专柜价或由品牌供应商提供的正品零售价（如厂商指导价、建议零售价等）或该商品曾经展示过的销售价等，由于地区、时间的差异化和市场行情波动，商品吊牌价、品牌专柜价等可能会与您购物时展示的不一致，该价格仅供您参考。</li> 
       <li class="word2"><span><i></i>折扣：</span>折扣指在划线价（图书定价、商品吊牌价、品牌专柜价、厂商指导价等）某一价格基础上计算出的优惠比例或优惠金额。如有疑问，您可在购买前联系客服咨询。</li> 
       <li class="word4"><span><i></i>异常问题：</span>如您发现活动商品销售价或促销信息有异常，请立即联系我们补正，以便您能顺利购物。</li> 
      </ul> 
     </div> 
     <!-- 价格说明 end --> 
     <!-- 价格说明 end --> 
     <!-- 评论区begin --> 
     <!-- 商品评论 begin --> 
     <div class="mbox3" id="comment_all"> 
      <h3 class="tit">商品评论（<span id="comment_total_num_title">2303</span>）</h3> 
      <div class="comment_head"> 
       <div class="comment_rate"> 
        <div class="processingbar"> 
         <svg id="comment-percent" xmlns="http://www.w3.org/2000/svg" version="1.1" width="114" height="114" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"> 
          <path id="J-light" class="small " fill="none" d="M22.030243187003194,98.14749212819493A54,54,0,0,0,21.007246606529556,97.25570398287455" stroke-width="6" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); stroke-width: 6;"></path> 
          <path id="J-deep" class="big " fill="none" d="M22.289469076926878,98.36639992842481A54,54,0,1,0,20.755024689107508,97.02876171845432" stroke-width="6" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); stroke-width: 6;"></path> 
         </svg> 
         <div class="nei"> 
          <span>好评率</span> 
          <span class="num" id="comment_percent">99.4<i>%</i></span> 
         </div> 
        </div> 
       </div> 
       <div class="comment_tag_wrap" id="comment_tags_div"> 
        <div class="comment_tag_label">
          买过的人觉得 
        </div> 
        <div class="comment_tag_total clearfix comment_tag_total_up"> 
         <a href="#" class="up">up</a> 
         <span class="tag_posi" dd_name="买过的人觉得标签"><a href="#" data-tag-id="2" data-tag-num="61">整体感觉不错（61）</a></span> 
         <span class="tag_posi" dd_name="买过的人觉得标签"><a href="#" data-tag-id="1" data-tag-num="45">包装不错哦（45）</a></span> 
         <span class="tag_posi" dd_name="买过的人觉得标签"><a href="#" data-tag-id="3" data-tag-num="40">性价比很高（40）</a></span> 
         <span class="tag_posi" dd_name="买过的人觉得标签"><a href="#" data-tag-id="4" data-tag-num="28">印刷很正（28）</a></span> 
         <span class="tag_posi" dd_name="买过的人觉得标签"><a href="#" data-tag-id="5" data-tag-num="22">纸质好（22）</a></span> 
         <span class="tag_posi" dd_name="买过的人觉得标签"><a href="#" data-tag-id="6" data-tag-num="14">排版不错（14）</a></span> 
         <span class="tag_posi" dd_name="买过的人觉得标签"><a href="#" data-tag-id="7" data-tag-num="5">包装一般（5）</a></span> 
         <span class="tag_posi" dd_name="买过的人觉得标签"><a href="#" data-tag-id="9" data-tag-num="4">纸质一般（4）</a></span> 
         <span class="tag_posi" dd_name="买过的人觉得标签"><a href="#" data-tag-id="8" data-tag-num="1">折痕变形（1）</a></span> 
        </div> 
       </div> 
       <div class="comment_chart_list">
         对已购商品写评论 
        <a href="#" class="btn_red" target="_blank">写评论 赚积分</a> 
       </div> 
      </div> 
      <div class="comment_body"> 
       <div class="comment_tabs"> 
        <!-- 评论数 --> 
        <div class="clearfix comment_tabs_wrap" id="comment_num_tab" isload="1"> 
         <span class="on" href="javascript:void(0);" data-type="1" dd_name="全部评论">全部（2303）</span> 
         <span href="javascript:void(0);" data-type="2" dd_name="好评">好评（2289）</span> 
         <span href="javascript:void(0);" data-type="3" dd_name="中评">中评（14）</span> 
         <span href="javascript:void(0);" data-type="4" dd_name="差评">差评（0）</span> 
         <span href="javascript:void(0);" data-type="5" dd_name="晒图评论">晒图（1）</span> 
        </div> 
        <div class="comment_sort " id="comment_sort"> 
         <i class="icon"></i> 
         <span class="pl02">精彩评论</span> 
         <ul> 
          <li><a href="#">精彩评论</a></li> 
          <li><a href="#">时间排序</a></li> 
         </ul> 
        </div> 
       </div> 
       <div id="comment_list"> 
        <div class="item_wrap"> 
         <!-- 评论列表 --> 
         <div class="comment_items clearfix"> 
          <div class="items_right"> 
           <div class="describe_detail"> 
            <span>作者的创意很好，十八位哲学家来到现代，给我们每人讲一节哲学课。有些內容还是比较难理解，有些困惑还是没有得到解决，诸如，人为什么活着，什么是幸福等等。以前很少接触专业哲学书，希望能够有些启示。 </span> 
           </div> 
           <div class="pic_show_big" style="display:none" dd_name="晒图点击"> 
            <div class="big_pic_wrap"> 
             <img> 
            </div> 
            <span class="big_pic_left"><i></i></span> 
            <span class="big_pic_right"><i></i></span> 
           </div> 
           <div class="starline clearfix"> 
            <span>2016-12-17 13:01:52</span> 
           </div> 
          </div> 
          <div class="items_left_pic"> 
           <a href="#" class="pic"><img src="../images/dandangoods/6541807339695-1_d.png"></a> 
           <span class="name" title="爱吃花生米">爱吃花生米</span> 
           <span class="level level04">钻石会员</span> 
          </div> 
         </div> 
         <div class="comment_items clearfix"> 
          <div class="items_right"> 
           <div class="describe_detail"> 
            <span>对于高深的哲学，我向来是敬而远之的。不过，这本书可以有效地培养学哲学的兴趣，勾起了我要看书的欲望。即使平时很少接触哲学的读者，也一定能够轻松地读懂其中的道理。 </span> 
           </div> 
           <div class="pic_show_big" style="display:none" dd_name="晒图点击"> 
            <div class="big_pic_wrap"> 
             <img> 
            </div> 
            <span class="big_pic_left"><i></i></span> 
            <span class="big_pic_right"><i></i></span> 
           </div> 
           <div class="starline clearfix"> 
            <span>2015-11-12 20:05:05</span> 
            <span>装帧设计：精美</span> 
           </div> 
          </div> 
          <div class="items_left_pic"> 
           <a href="#" class="pic"><img src="../images/dandangoods/9643977224700-1_d.png"></a> 
           <span class="name" title="shanyj03">shanyj03</span> 
           <span class="level level">普通会员</span> 
          </div> 
         </div> 
         <div class="comment_items clearfix"> 
          <div class="items_right"> 
           <div class="describe_detail"> 
            <span>很喜欢的一本书！内容通俗易懂，作者用平实和生动的语言引领我们走进哲学的世界，看时你不会觉得很枯燥。而且哲学专业在中国不很热门，能走这条路的真的很少。支持作者将来写出更好的书！ </span> 
           </div> 
           <div class="pic_show_big" style="display:none" dd_name="晒图点击"> 
            <div class="big_pic_wrap"> 
             <img> 
            </div> 
            <span class="big_pic_left"><i></i></span> 
            <span class="big_pic_right"><i></i></span> 
           </div> 
           <div class="starline clearfix"> 
            <span>2014-07-28 16:48:50</span> 
           </div> 
          </div> 
          <div class="items_left_pic"> 
           <a href="#" class="pic"><img src="../images/dandangoods/5523706427387-1_d.png"></a> 
           <span class="name" title="虎木">虎木</span> 
           <span class="level level">普通会员</span> 
          </div> 
         </div> 
         <div class="comment_items clearfix"> 
          <div class="items_right"> 
           <div class="describe_detail"> 
            <span>这本书的书名很讨巧，我喜欢。对于高深的哲学，我向来是敬而远之的。不过，这本书勾起了我要看书的欲望。内容还挺全乎，几乎将西方哲学大哲的经典以词条的形式加以展现，一章讲解一个话题另外，这种点评式的方式也很新颖，有启迪作用。要是我们当时的老师也能这样讲课就好了。 </span> 
           </div> 
           <div class="pic_show_big" style="display:none" dd_name="晒图点击"> 
            <div class="big_pic_wrap"> 
             <img> 
            </div> 
            <span class="big_pic_left"><i></i></span> 
            <span class="big_pic_right"><i></i></span> 
           </div> 
           <div class="starline clearfix"> 
            <span>2013-05-17 09:33:58</span> 
           </div> 
          </div> 
          <div class="items_left_pic"> 
           <a href="#" class="pic"><img src="../images/dandangoods/6022660985369-1_d.png"></a> 
           <span class="name" title="">无昵称用户</span> 
           <span class="level level04">钻石会员</span> 
          </div> 
         </div> 
         <div class="comment_items clearfix"> 
          <div class="items_right"> 
           <div class="describe_detail"> 
            <span>有趣的书，有趣的哲学课，让原本枯燥的哲学鲜活起来了！</span> 
           </div> 
           <div class="pic_show_big" style="display:none" dd_name="晒图点击"> 
            <div class="big_pic_wrap"> 
             <img> 
            </div> 
            <span class="big_pic_left"><i></i></span> 
            <span class="big_pic_right"><i></i></span> 
           </div> 
           <div class="starline clearfix"> 
            <span>2017-01-09 22:00:47</span> 
            <span>装帧设计：简约</span> 
           </div> 
          </div> 
          <div class="items_left_pic"> 
           <a href="#" class="pic"><img src="../images/dandangoods/3743526369332-1_d.png"></a> 
           <span class="name" title="">y***1(匿名)</span> 
           <span class="level level04">钻石会员</span> 
          </div> 
         </div> 
         <div class="comment_items clearfix"> 
          <div class="items_right"> 
           <div class="describe_detail"> 
            <span>这个很有趣，在书店无意看到的，哲学是对于人生的思考。通俗易懂的语言穿越回去，看各位哲学大师对于人生的看法，非常推荐！ </span> 
           </div> 
           <div class="pic_show_big" style="display:none" dd_name="晒图点击"> 
            <div class="big_pic_wrap"> 
             <img> 
            </div> 
            <span class="big_pic_left"><i></i></span> 
            <span class="big_pic_right"><i></i></span> 
           </div> 
           <div class="starline clearfix"> 
            <span>2015-07-12 13:38:58</span> 
           </div> 
          </div> 
          <div class="items_left_pic"> 
           <a href="#" class="pic"><img src="../images/dandangoods/8634299108015-1_d.png"></a> 
           <span class="name" title="">无昵称用户</span> 
           <span class="level level04">钻石会员</span> 
          </div> 
         </div> 
         <div class="comment_items clearfix"> 
          <div class="items_right"> 
           <div class="describe_detail"> 
            <span>哲学原来这么有趣：颠覆传统教学的18堂哲学课(史上超有趣的哲学读 </span> 
           </div> 
           <div class="pic_show_big" style="display:none" dd_name="晒图点击"> 
            <div class="big_pic_wrap"> 
             <img> 
            </div> 
            <span class="big_pic_left"><i></i></span> 
            <span class="big_pic_right"><i></i></span> 
           </div> 
           <div class="starline clearfix"> 
            <span>2015-12-22 03:17:06</span> 
           </div> 
          </div> 
          <div class="items_left_pic"> 
           <a href="#" class="pic"><img src="../images/dandangoods/3701052551006-1_d.png"></a> 
           <span class="name" title="">无昵称用户</span> 
           <span class="level level04">钻石会员</span> 
          </div> 
         </div> 
         <div class="comment_items clearfix"> 
          <div class="items_right"> 
           <div class="describe_detail"> 
            <span>虽然我们是七零后成年人，但在可悲的教育体系中我们并未接受过真正系统的哲学教育，所以先拿一本通俗易懂的读读，建立基本粗浅框架，对以后探求哲学还是有所裨益。 </span> 
           </div> 
           <div class="pic_show_big" style="display:none" dd_name="晒图点击"> 
            <div class="big_pic_wrap"> 
             <img> 
            </div> 
            <span class="big_pic_left"><i></i></span> 
            <span class="big_pic_right"><i></i></span> 
           </div> 
           <div class="starline clearfix"> 
            <span>2014-11-23 23:17:46</span> 
            <span>装帧设计：简约</span> 
           </div> 
          </div> 
          <div class="items_left_pic"> 
           <a href="#" class="pic"><img src="../images/dandangoods/7349702055852-1_d.png"></a> 
           <span class="name" title="">无昵称用户</span> 
           <span class="level level02">黄金会员</span> 
          </div> 
         </div> 
         <div class="comment_items clearfix"> 
          <div class="items_right"> 
           <div class="describe_detail"> 
            <span>颠覆传统教学的18堂文学课，史上超有趣的读本，像读故事一样读懂专业书籍。 </span> 
           </div> 
           <div class="pic_show_big" style="display:none" dd_name="晒图点击"> 
            <div class="big_pic_wrap"> 
             <img> 
            </div> 
            <span class="big_pic_left"><i></i></span> 
            <span class="big_pic_right"><i></i></span> 
           </div> 
           <div class="starline clearfix"> 
            <span>2016-12-19 11:04:08</span> 
            <span>装帧设计：精美</span> 
           </div> 
          </div> 
          <div class="items_left_pic"> 
           <a href="#" class="pic"><img src="../images/dandangoods/8741169228293-1_d.png"></a> 
           <span class="name" title="东柳书屋">东柳书屋</span> 
           <span class="level level04">钻石会员</span> 
          </div> 
         </div> 
         <div class="comment_items clearfix"> 
          <div class="items_right"> 
           <div class="describe_detail"> 
            <span>蛮不错的值得一看，可以配着你的第一本哲学书来看? </span> 
           </div> 
           <div class="pic_show_big" style="display:none" dd_name="晒图点击"> 
            <div class="big_pic_wrap"> 
             <img> 
            </div> 
            <span class="big_pic_left"><i></i></span> 
            <span class="big_pic_right"><i></i></span> 
           </div> 
           <div class="starline clearfix"> 
            <span>2016-12-25 16:20:48</span> 
           </div> 
          </div> 
          <div class="items_left_pic"> 
           <a href="#" class="pic"><img src="../images/dandangoods/4057638164898-1_d.png"></a> 
           <span class="name" title="祝子咩咩">祝子咩咩</span> 
           <span class="level level02">黄金会员</span> 
          </div> 
         </div> 
         <div class="comment_items clearfix"> 
          <div class="items_right"> 
           <div class="describe_detail"> 
            <span>还没有看，山海经排在了本书前面。浏览了一下，印象还不错，应该不会让人失望。初次主动接触哲学，希望能有收获。 </span> 
           </div> 
           <div class="pic_show_big" style="display:none" dd_name="晒图点击"> 
            <div class="big_pic_wrap"> 
             <img> 
            </div> 
            <span class="big_pic_left"><i></i></span> 
            <span class="big_pic_right"><i></i></span> 
           </div> 
           <div class="starline clearfix"> 
            <span>2016-05-21 20:47:42</span> 
            <span>装帧设计：精美</span> 
           </div> 
          </div> 
          <div class="items_left_pic"> 
           <a href="#" class="pic"><img src="../images/dandangoods/4765176699772-1_d.png"></a> 
           <span class="name" title="silvia307">silvia307</span> 
           <span class="level level04">钻石会员</span> 
          </div> 
         </div> 
         <div class="comment_items clearfix"> 
          <div class="items_right"> 
           <div class="describe_detail"> 
            <span>哲学是人生活道理的学问。人为什么活着，由哲学家们来回答。 </span> 
           </div> 
           <div class="pic_show_big" style="display:none" dd_name="晒图点击"> 
            <div class="big_pic_wrap"> 
             <img> 
            </div> 
            <span class="big_pic_left"><i></i></span> 
            <span class="big_pic_right"><i></i></span> 
           </div> 
           <div class="starline clearfix"> 
            <span>2016-08-09 09:13:03</span> 
            <span>装帧设计：精美</span> 
           </div> 
          </div> 
          <div class="items_left_pic"> 
           <a href="#" class="pic"><img src="../images/dandangoods/2099636100949-1_d.png"></a> 
           <span class="name" title="">无昵称用户</span> 
           <span class="level level04">钻石会员</span> 
          </div> 
         </div> 
         <div class="comment_items clearfix"> 
          <div class="items_right"> 
           <div class="describe_detail"> 
            <span>以前以为哲学深奥，看完此书才明白原来其实就是做人做事的道理行为准则受益匪浅 </span> 
           </div> 
           <div class="pic_show_big" style="display:none" dd_name="晒图点击"> 
            <div class="big_pic_wrap"> 
             <img> 
            </div> 
            <span class="big_pic_left"><i></i></span> 
            <span class="big_pic_right"><i></i></span> 
           </div> 
           <div class="starline clearfix"> 
            <span>2016-07-19 10:59:26</span> 
            <span>装帧设计：精美</span> 
           </div> 
          </div> 
          <div class="items_left_pic"> 
           <a href="#" class="pic"><img src="../images/dandangoods/8425836900008-1_d.png"></a> 
           <span class="name" title="旺豆丁">旺豆丁</span> 
           <span class="level level02">黄金会员</span> 
          </div> 
         </div> 
         <div class="comment_items clearfix"> 
          <div class="items_right"> 
           <div class="describe_detail"> 
            <span>很轻松好玩的一本通识类的书籍。如果想培养兴趣的朋友，可以看看。</span> 
           </div> 
           <ul class="pic_show clearfix" dd_name="晒图点击"> 
            <li><a href="#"><img src="../images/dandangoods/10322979-reviewimg-1_p.jpg" data-big-pic="http://img7x9.ddimg.cn/Community71/51/16/10322979-reviewimg-1_e.jpg"></a><b class="pic_show_arrow"></b></li> 
           </ul> 
           <div class="pic_show_big" style="display:none" dd_name="晒图点击"> 
            <div class="big_pic_wrap"> 
             <img> 
            </div> 
            <span class="big_pic_left"><i></i></span> 
            <span class="big_pic_right"><i></i></span> 
           </div> 
           <div class="starline clearfix"> 
            <span>2017-02-27 21:01:55</span> 
           </div> 
          </div> 
          <div class="items_left_pic"> 
           <a href="#" class="pic"><img src="../images/dandangoods/7543558740984-1_d.png"></a> 
           <span class="name" title="">白***8(匿名)</span> 
           <span class="level level04">钻石会员</span> 
          </div> 
         </div> 
         <div class="comment_items clearfix"> 
          <div class="items_right"> 
           <div class="describe_detail"> 
            <span>很久不看实体书，买来作为重新开启实体书研读的一个起点吧，希望有意思。 </span> 
           </div> 
           <div class="pic_show_big" style="display:none" dd_name="晒图点击"> 
            <div class="big_pic_wrap"> 
             <img> 
            </div> 
            <span class="big_pic_left"><i></i></span> 
            <span class="big_pic_right"><i></i></span> 
           </div> 
           <div class="starline clearfix"> 
            <span>2016-11-22 17:38:13</span> 
            <span>装帧设计：精美</span> 
           </div> 
          </div> 
          <div class="items_left_pic"> 
           <a href="#" class="pic"><img src="../images/dandangoods/5030486227312-1_d.png"></a> 
           <span class="name" title="拉风兔">拉风兔</span> 
           <span class="level level04">钻石会员</span> 
          </div> 
         </div> 
        </div> 
        <!-- 评论列表end --> 
        <!-- 页码begin --> 
        <div class="fanye_box clearfix" id="comment_page" dd_name="评论翻页"> 
         <div class="fanye"> 
          <a href="#" class="on J-num">1</a> 
          <a href="#" class="J-num">2</a> 
          <a href="#" class="J-num">3</a> 
          <a href="#" class="J-num">4</a> 
          <a href="#" class="J-num">5</a> 
          <span class="pot">...</span> 
          <a href="#" class="btn next"></a> 
         </div> 
        </div> 
        <!-- 页码end --> 
       </div> 
      </div> 
      <!-- 标签模板 -->  
     </div> 
     <!-- 商品评论 end --> 
     <!-- 评论区end --> 
     <!-- 问答区begin --> 
     <div id="question_all" class="mbox3" name="Question_b2c" dd_name="商品问答"> 
      <h3 class="tit"> 商品问答<i>（<a id="question_total_count" href="#">0</a>条） </i> </h3> 
      <div class="ques_none clearfix"> 
       <input type="button" class="btn_ask right" value="我要提问" id="question_new" name="__Submit_qa_book" dd_name="问答按钮">目前没有问答 
      </div> 
      <!-- 商品问答 end --> 
     </div> 
     <!-- 问答区end --> 
    </div> 
   </div> 
   <!-- 右侧主体end --> 
   <!-- 左侧主体 --> 
   <div class="aside" dd_name="左侧区域"> 
    <div class="abox" dd_name="看过还看了" ddt-area="013" id="alsoView" style="
    display: none;
"> 
     <h3>看过本商品的人还看了</h3> 
     <ul class="none_b list01 list_alsoview"> 
      <li data-type="" traced="1"> <p class="pic"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/23717372-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">284条评论</span> </span> </p> <p class="price"> <span class="price_d">￥25.90</span> </p> <p class="name"> <a href="#" target="_blank">管理学原来这么有趣：颠覆传统教学的18堂管理课</a> </p> <p class="zuozhe">汪继红　著</p> </li> 
      <li data-type="" traced="1"> <p class="pic"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/23703436-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">147条评论</span> </span> </p> <p class="price"> <span class="price_d">￥31.40</span> </p> <p class="name"> <a href="#" target="_blank">经济学原来这么有趣II：让你豁然开朗的18堂经济学公开课</a> </p> <p class="zuozhe">钟伟伟著</p> </li> 
      <li data-type="" traced="1"> <p class="pic"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/23947063-1_l.jpg"> </a> <span class="hover"> <span class="price_e">电子书价: <a href="#" target="_blank">￥8.80</a> </span> <span class="pinglun">799条评论</span> </span> </p> <p class="price"> <span class="price_d">￥22.90</span> </p> <p class="name"> <a href="#" target="_blank">与哲学家一起思考：七天哲学课</a> </p> <p class="zuozhe">［德］格哈德·恩斯特著</p> </li> 
      <li data-type="" traced="1"> <p class="pic"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/23563600-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">1616条评论</span> </span> </p> <p class="price"> <span class="price_d">￥22.20</span> </p> <p class="name"> <a href="#" target="_blank">哲学是每个人的事（本书作者为邓小平所推崇，并三次接见。这</a> </p> <p class="zuozhe">MortimerJ.Adler</p> </li> 
      <li data-type="" traced="1"> <p class="pic"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/23717393-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">197条评论</span> </span> </p> <p class="price"> <span class="price_d">￥23.60</span> </p> <p class="name"> <a href="#" target="_blank">营销学原来这么有趣：颠覆传统教学的18堂营销课</a> </p> <p class="zuozhe">刘文秀著</p> </li> 
      <li data-type="" traced="1"> <p class="pic"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/23676093-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">1516条评论</span> </span> </p> <p class="price"> <span class="price_d">￥80.20</span> </p> <p class="name"> <a href="#" target="_blank">像哲学家一样思考（第11版）</a> </p> <p class="zuozhe">（美）克里斯蒂安　著，赫忠慧　译</p> </li> 
      <li data-type="" traced="1"> <p class="pic"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/24159127-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">57条评论</span> </span> </p> <p class="price"> <span class="price_d">￥31.50</span> </p> <p class="name"> <a href="#" target="_blank">世界第一好懂的哲学课</a> </p> <p class="zuozhe">[日]小川仁志</p> </li> 
      <li data-type="" traced="1"> <p class="pic"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/23377960-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">4495条评论</span> </span> </p> <p class="price"> <span class="price_d">￥26.10</span> </p> <p class="name"> <a href="#" target="_blank">哲学的盛宴（推开哲学家的门扉，品味大师们的盛宴，读哲人故</a> </p> <p class="zuozhe">RobertAllen</p> </li> 
      <li data-type="pub2mall" traced="1"> <p class="pic"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/1021205405-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">1410条评论</span> </span> </p> <p class="price"> <span class="price_d">￥69.00</span> </p> <p class="name"> <a href="#" target="_blank">UOVO2017新款童鞋男女童鞋休闲鞋运动轻便网布时尚透</a> </p> <p class="zuozhe"></p> </li> 
      <li data-type="pub2mall" traced="1"> <p class="pic"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/1254874931-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">39条评论</span> </span> </p> <p class="price"> <span class="price_d">￥239.00</span> </p> <p class="name"> <a href="#" target="_blank">camel骆驼男鞋韩版潮流透气滑板鞋夏季日常休闲板鞋</a> </p> <p class="zuozhe"></p> </li> 
      <li data-type="pub2mall" traced="1"> <p class="pic"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/60566913-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">1406条评论</span> </span> </p> <p class="price"> <span class="price_d">￥219.00</span> </p> <p class="name"> <a href="#" target="_blank">【当当自营】Midea美的电磁炉WT2121S</a> </p> <p class="zuozhe"></p> </li> 
      <li data-type="pub2mall" traced="1"> <p class="pic"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/1427305437-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">1条评论</span> </span> </p> <p class="price"> <span class="price_d">￥65.00</span> </p> <p class="name"> <a href="#" target="_blank">男士短袖T恤修身圆领黑白男衫半袖印花青年棉质衣服夏季潮牌</a> </p> <p class="zuozhe"></p> </li> 
      <li data-type="pub2mall" traced="1"> <p class="pic"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/1276392258-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">0条评论</span> </span> </p> <p class="price"> <span class="price_d">￥129.00</span> </p> <p class="name"> <a href="#" target="_blank">杰克琼斯2017年夏季新品印花T恤10-1-1-2153</a> </p> <p class="zuozhe"></p> </li> 
      <li data-type="pub2mall" traced="1"> <p class="pic"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/1259789206-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">604条评论</span> </span> </p> <p class="price"> <span class="price_d">￥89.00</span> </p> <p class="name"> <a href="#" target="_blank">【全场满200减100】法国PELLIOT/伯希和儿童皮</a> </p> <p class="zuozhe"></p> </li> 
      <li data-type="pub2mall" traced="1"> <p class="pic"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/60623789-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">395条评论</span> </span> </p> <p class="price"> <span class="price_d">￥59.00</span> </p> <p class="name"> <a href="#" target="_blank">[当当自营]碧柔深层净润卸妆乳150ml</a> </p> <p class="zuozhe"></p> </li> 
      <li data-type="pub2mall" traced="1"> <p class="pic"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/1282073035-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">56条评论</span> </span> </p> <p class="price"> <span class="price_d">￥79.00</span> </p> <p class="name"> <a href="#" target="_blank">探路者TOREAD品牌童装夏装男童清爽背心/短裤套装儿童</a> </p> <p class="zuozhe"></p> </li> 
     </ul> 
    </div> 
    <!-- 同类图书排行榜 begin --> 
    <div class="abox" dd_name="同类图书排行榜" id="bang_div" style="" isloaded="1"> 
     <h3>同类图书排行榜</h3> 
     <ul class="tab" id="bang_tab"> 
      <li dd_name="畅销榜" class="">畅销榜</li> 
      <li dd_name="新书榜" class="hover">新书榜</li> 
     </ul> 
     <ul class="list02 clearfix" id="hotBang_data" style="display: none;" ddt-area="018"> 
      <li class="hover"> <span class="num num_top3">1</span> <a href="#" class="pic" target="_blank" style="display: inline;"> <img id="largePic" src="../images/dandangoods/22925064-1_x_2.jpg"> </a> <p class="name" dd_name="排行榜商品名称1"> <a href="#" target="_blank">学会提问（原书第10版）（批判性思维领域的“圣经”，看见柴静诸多提问背后的真谛）</a> </p> <p class="zuozhe" style="display: block;">(美)尼尔.布朗 </p> <p class="price" style="display: block;"> <span class="price_d">21.00</span> <span class="price_zhe">(6折)</span> </p> </li> 
      <li class=""> <span class="num num_top3">2</span> <a href="#" class="pic" target="_blank" style="display: none;"> <img id="largePic" src="../images/dandangoods/23730322-1_x_1.jpg"> </a> <p class="name" dd_name="排行榜商品名称2"> <a href="#" target="_blank">胡适：人生有何意义</a> </p> <p class="zuozhe" style="display: none;">胡适　著</p> <p class="price" style="display: none;"> <span class="price_d">21.00</span> <span class="price_zhe">(7.5折)</span> </p> </li> 
      <li class=""> <span class="num num_top3">3</span> <a href="#" class="pic" target="_blank" style="display: none;"> <img id="largePic" src="../images/dandangoods/23516322-1_x_8.jpg"> </a> <p class="name" dd_name="排行榜商品名称3"> <a href="#" target="_blank">相约星期二(新版)</a> </p> <p class="zuozhe" style="display: none;">米奇·阿尔博姆</p> <p class="price" style="display: none;"> <span class="price_d">17.30</span> <span class="price_zhe">(7.87折)</span> </p> </li> 
      <li class=""> <span class="num ">4</span> <a href="#" class="pic" target="_blank" style="display: none;"> <img id="largePic" src="../images/dandangoods/23501649-1_x_2.jpg"> </a> <p class="name" dd_name="排行榜商品名称4"> <a href="#" target="_blank">菜根谭（精装典藏本）</a> </p> <p class="zuozhe" style="display: none;">洪应明</p> <p class="price" style="display: none;"> <span class="price_d">22.60</span> <span class="price_zhe">(6.9折)</span> </p> </li> 
      <li class=""> <span class="num ">5</span> <a href="#" class="pic" target="_blank" style="display: none;"> <img id="largePic" src="../images/dandangoods/21052765-1_x_4.jpg"> </a> <p class="name" dd_name="排行榜商品名称5"> <a href="#" target="_blank">论语译注（简体字本）</a> </p> <p class="zuozhe" style="display: none;">杨伯峻</p> <p class="price" style="display: none;"> <span class="price_d">15.60</span> <span class="price_zhe">(6折)</span> </p> </li> 
      <li class=""> <span class="num ">6</span> <a href="#" class="pic" target="_blank" style="display: none;"> <img id="largePic" src="../images/dandangoods/22504494-1_x_1.jpg"> </a> <p class="name" dd_name="排行榜商品名称6"> <a href="#" target="_blank">禅与摩托车维修艺术（精装）</a> </p> <p class="zuozhe" style="display: none;">罗伯特·M.波西格</p> <p class="price" style="display: none;"> <span class="price_d">25.90</span> <span class="price_zhe">(7.2折)</span> </p> </li> 
      <li class=""> <span class="num ">7</span> <a href="#" class="pic" target="_blank" style="display: none;"> <img id="largePic" src="../images/dandangoods/23445574-1_x_3.jpg"> </a> <p class="name" dd_name="排行榜商品名称7"> <a href="#" target="_blank">美的历程（李泽厚代表名作）</a> </p> <p class="zuozhe" style="display: none;">李泽厚</p> <p class="price" style="display: none;"> <span class="price_d">35.30</span> <span class="price_zhe">(6.31折)</span> </p> </li> 
      <li class=""> <span class="num ">8</span> <a href="#" class="pic" target="_blank" style="display: none;"> <img id="largePic" src="../images/dandangoods/23579910-1_x_1.jpg"> </a> <p class="name" dd_name="排行榜商品名称8"> <a href="#" target="_blank">我的第一本思维导图入门书</a> </p> <p class="zuozhe" style="display: none;">胡雅茹　著</p> <p class="price" style="display: none;"> <span class="price_d">20.00</span> <span class="price_zhe">(5.56折)</span> </p> </li> 
      <li class=""> <span class="num ">9</span> <a href="#" class="pic" target="_blank" style="display: none;"> <img id="largePic" src="../images/dandangoods/22765017-1_x_8.jpg"> </a> <p class="name" dd_name="排行榜商品名称9"> <a href="#" target="_blank">理想国</a> </p> <p class="zuozhe" style="display: none;">柏拉图</p> <p class="price" style="display: none;"> <span class="price_d">21.60</span> <span class="price_zhe">(6.18折)</span> </p> </li> 
      <li class=""> <span class="num ">10</span> <a href="#" class="pic" target="_blank" style="display: none;"> <img id="largePic" src="../images/dandangoods/23681673-1_x_2.jpg"> </a> <p class="name" dd_name="排行榜商品名称10"> <a href="#" target="_blank">活出生命的意义（独家精装珍藏版）</a> </p> <p class="zuozhe" style="display: none;">（美）弗兰克尔　著等</p> <p class="price" style="display: none;"> <span class="price_d">31.40</span> <span class="price_zhe">(7.89折)</span> </p> </li> 
     </ul> 
     <div class="link_more" style="display: none;"> 
      <a href="#" target="_blank">更多&gt;&gt;</a> 
     </div> 
     <ul class="list02 clearfix" id="newBang_data" style="" ddt-area="019"> 
      <li class="hover"> <span class="num num_top3">1</span> <a href="#" class="pic" target="_blank" style="display: inline;"> <img id="largePic" src="../images/dandangoods/24221334-1_x_6.jpg"> </a> <p class="name" dd_name="排行榜商品名称1"> <a href="#" target="_blank">姥姥语录（精装增订本，2017年新版）本书全新推出增订本，增订本中将收录10余篇倪萍近年最新文章，以及20余幅新的画作。</a> </p> <p class="zuozhe" style="display: block;">倪萍</p> <p class="price" style="display: block;"> <span class="price_d">28.40</span> <span class="price_zhe">(6.77折)</span> </p> </li> 
      <li class=""> <span class="num num_top3">2</span> <a href="#" class="pic" target="_blank" style="display: none;"> <img id="largePic" src="../images/dandangoods/24248105-1_x_3.jpg"> </a> <p class="name" dd_name="排行榜商品名称2"> <a href="#" target="_blank">好的孤独</a> </p> <p class="zuozhe" style="display: none;">陈果</p> <p class="price" style="display: none;"> <span class="price_d">24.80</span> <span class="price_zhe">(6.89折)</span> </p> </li> 
      <li class=""> <span class="num num_top3">3</span> <a href="#" class="pic" target="_blank" style="display: none;"> <img id="largePic" src="../images/dandangoods/24193579-1_x_3.jpg"> </a> <p class="name" dd_name="排行榜商品名称3"> <a href="#" target="_blank">中国人缺少什么？</a> </p> <p class="zuozhe" style="display: none;">周国平 著</p> <p class="price" style="display: none;"> <span class="price_d">44.20</span> <span class="price_zhe">(7.9折)</span> </p> </li> 
      <li class=""> <span class="num ">4</span> <a href="#" class="pic" target="_blank" style="display: none;"> <img id="largePic" src="../images/dandangoods/24229163-1_x_3.jpg"> </a> <p class="name" dd_name="排行榜商品名称4"> <a href="#" target="_blank">于丹《论语》心得（2017年修订新版）</a> </p> <p class="zuozhe" style="display: none;">于丹</p> <p class="price" style="display: none;"> <span class="price_d">31.30</span> <span class="price_zhe">(7.87折)</span> </p> </li> 
      <li class=""> <span class="num ">5</span> <a href="#" class="pic" target="_blank" style="display: none;"> <img id="largePic" src="../images/dandangoods/24229026-1_x_2.jpg"> </a> <p class="name" dd_name="排行榜商品名称5"> <a href="#" target="_blank">纯粹理性批判（平装，2017年新版）</a> </p> <p class="zuozhe" style="display: none;">康德著 邓晓芒译 杨祖陶校 著</p> <p class="price" style="display: none;"> <span class="price_d">54.00</span> <span class="price_zhe">(7.83折)</span> </p> </li> 
      <li class=""> <span class="num ">6</span> <a href="#" class="pic" target="_blank" style="display: none;"> <img id="largePic" src="../images/dandangoods/25069882-1_x_2.jpg"> </a> <p class="name" dd_name="排行榜商品名称6"> <a href="#" target="_blank">寂静之道（2017修订新版）</a> </p> <p class="zuozhe" style="display: none;">希阿荣博堪布</p> <p class="price" style="display: none;"> <span class="price_d">31.10</span> <span class="price_zhe">(7.82折)</span> </p> </li> 
      <li class=""> <span class="num ">7</span> <a href="#" class="pic" target="_blank" style="display: none;"> <img id="largePic" src="../images/dandangoods/24221516-1_x_3.jpg"> </a> <p class="name" dd_name="排行榜商品名称7"> <a href="#" target="_blank">我是谁</a> </p> <p class="zuozhe" style="display: none;">曾仕强</p> <p class="price" style="display: none;"> <span class="price_d">41.80</span> <span class="price_zhe">(7.21折)</span> </p> </li> 
      <li class=""> <span class="num ">8</span> <a href="#" class="pic" target="_blank" style="display: none;"> <img id="largePic" src="../images/dandangoods/24228850-1_x_3.jpg"> </a> <p class="name" dd_name="排行榜商品名称8"> <a href="#" target="_blank">哲学的盛宴（中国篇精装，人文经典书系）</a> </p> <p class="zuozhe" style="display: none;">胡适</p> <p class="price" style="display: none;"> <span class="price_d">43.50</span> <span class="price_zhe">(7.5折)</span> </p> </li> 
      <li class=""> <span class="num ">9</span> <a href="#" class="pic" target="_blank" style="display: none;"> <img id="largePic" src="../images/dandangoods/24228849-1_x_3.jpg"> </a> <p class="name" dd_name="排行榜商品名称9"> <a href="#" target="_blank">哲学的盛宴（精装，人文经典书系）</a> </p> <p class="zuozhe" style="display: none;">[英]罗伯特?艾伦</p> <p class="price" style="display: none;"> <span class="price_d">43.50</span> <span class="price_zhe">(7.5折)</span> </p> </li> 
      <li class=""> <span class="num ">10</span> <a href="#" class="pic" target="_blank" style="display: none;"> <img id="largePic" src="../images/dandangoods/25062973-1_x_3.jpg"> </a> <p class="name" dd_name="排行榜商品名称10"> <a href="#" target="_blank">王安石全集（套装共10册）</a> </p> <p class="zuozhe" style="display: none;">王水照 主编</p> <p class="price" style="display: none;"> <span class="price_d">440.00</span> <span class="price_zhe">(5折)</span> </p> </li> 
     </ul> 
     <div class="link_more" style=""> 
      <a href="#" target="_blank">更多&gt;&gt;</a> 
     </div> 
    </div> 
    <!-- 同类图书排行榜 end --> 
    <div id="cpc_0" class="abox ad_product" dd_name="热卖商品1"> 
     <h3>推广商品</h3> 
     <ul class="list01"> 
      <li id="seq_0"><p class="pic"><a href="#" class="pic" rel="nofollow" target="_blank"><img src="../images/dandangoods/1150188692-1_l_3.jpg"></a></p><p class="price"><span class="price_d">￥64.00</span></p><p class="name"><a rel="nofollow" href="#" target="_blank">菜根谭图文珍藏版全集洪应明<br></a></p></li> 
      <li id="seq_1"><p class="pic"><a href="#" class="pic" rel="nofollow" target="_blank"><img src="../images/dandangoods/1001631395-1_l_2.jpg"></a></p><p class="price"><span class="price_d">￥920.00</span></p><p class="name"><a rel="nofollow" href="#" target="_blank">四书五经全注全译 国学线装函套竖排 4函28<br></a></p></li> 
      <li id="seq_2"><p class="pic"><a href="#" class="pic" rel="nofollow" target="_blank"><img src="../images/dandangoods/1023220576-1_l_2.jpg"></a></p><p class="price"><span class="price_d">￥55.00</span></p><p class="name"><a rel="nofollow" href="#" target="_blank">做人哲学全知道 人际沟通方<br></a></p></li> 
      <li id="seq_3"><p class="pic"><a href="#" class="pic" rel="nofollow" target="_blank"><img src="../images/dandangoods/1232462172-1_l_3.jpg"></a></p><p class="price"><span class="price_d">￥145.00</span></p><p class="name"><a rel="nofollow" href="#" target="_blank">菜根谭 洪应明 全注全译 <br></a></p></li> 
      <li id="seq_4"><p class="pic"><a href="#" class="pic" rel="nofollow" target="_blank"><img src="../images/dandangoods/1402228966-1_l_2.jpg"></a></p><p class="price"><span class="price_d">￥78.00</span></p><p class="name"><a rel="nofollow" href="#" target="_blank">菜根谭 文白对照 全套4册<br></a></p></li> 
      <li id="seq_5"><p class="pic"><a href="#" class="pic" rel="nofollow" target="_blank"><img src="../images/dandangoods/1016243781-1_l_2.jpg"></a></p><p class="price"><span class="price_d">￥1420.00</span></p><p class="name"><a rel="nofollow" href="#" target="_blank">论语别裁线装典藏本1函8册<br></a></p></li> 
      <li id="seq_6"><p class="pic"><a href="#" class="pic" rel="nofollow" target="_blank"><img src="../images/dandangoods/1073525923-1_l_6.jpg"></a></p><p class="price"><span class="price_d">￥95.00</span></p><p class="name"><a rel="nofollow" href="#" target="_blank">了凡四训 袁了凡 一函4册 线装国学经典<br></a></p></li> 
      <li id="seq_7"><p class="pic"><a href="#" class="pic" rel="nofollow" target="_blank"><img src="../images/dandangoods/1255024552-1_l_1.jpg"></a></p><p class="price"><span class="price_d">￥155.00</span></p><p class="name"><a rel="nofollow" href="#" target="_blank">国学智慧全书全套6册精装 国学智慧典籍<br></a></p></li> 
     </ul> 
     <div class="link_more"> 
      <a href="#" target="_blank">我要推广&gt;&gt;</a> 
     </div> 
    </div> 
    <div class="abox attention" dd_name="购买本书的用户还关注了" ddt-area="014" id="alsoAttention" style=""> 
     <h3>购买本书的用户还关注了</h3> 
     <ul class="list01"> 
      <li> <p class="pic" dd_name="购买本书的用户还关注了商品图片0"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/60067063-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">13687条评论</span> </span> </p> <p class="price"> <span class="price_d">￥189.00</span> <span class="price_zhe"></span> </p> <p class="name" dd_name="购买本书的用户还关注了商品名称0"> <a href="#" target="_blank">[当当自营]Huggies好奇金装纸尿裤加大号XL105片(适合12-16公斤)箱装尿不湿</a> </p> </li> 
      <li> <p class="pic" dd_name="购买本书的用户还关注了商品图片1"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/1012308258-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">1条评论</span> </span> </p> <p class="price"> <span class="price_d">￥189.00</span> <span class="price_zhe"></span> </p> <p class="name" dd_name="购买本书的用户还关注了商品名称1"> <a href="#" target="_blank">奥康男鞋商务鞋子尖头系带透气耐磨牛皮都市时尚正装男士皮鞋</a> </p> </li> 
      <li> <p class="pic" dd_name="购买本书的用户还关注了商品图片2"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/1066057948-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">0条评论</span> </span> </p> <p class="price"> <span class="price_d">￥338.00</span> <span class="price_zhe"></span> </p> <p class="name" dd_name="购买本书的用户还关注了商品名称2"> <a href="#" target="_blank">Belle/百丽夏牛皮革知性女凉鞋BDB39BL6</a> </p> </li> 
      <li> <p class="pic" dd_name="购买本书的用户还关注了商品图片3"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/1159085380-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">1条评论</span> </span> </p> <p class="price"> <span class="price_d">￥136.00</span> <span class="price_zhe"></span> </p> <p class="name" dd_name="购买本书的用户还关注了商品名称3"> <a href="#" target="_blank">Shes茜子发饰韩版印花双杠多用飘带头箍蝴蝶结发箍发卡头饰品SHG9611018</a> </p> </li> 
      <li> <p class="pic" dd_name="购买本书的用户还关注了商品图片4"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/60629452-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">67条评论</span> </span> </p> <p class="price"> <span class="price_d">￥19.80</span> <span class="price_zhe"></span> </p> <p class="name" dd_name="购买本书的用户还关注了商品名称4"> <a href="#" target="_blank">【当当自营】亨氏Heinz贝比鲜酱油150ml</a> </p> </li> 
     </ul> 
    </div> 
   </div> 
   <!-- 左侧主体end --> 
  </div> 
  <div class="product_content product_content_b clearfix"> 
   <div class="main"> 
    <div class="mbox_another mbox_another_two" dd_name="浏览历史推荐" ddt-area="015" id="historyReco" style=""> 
     <h3> <span class="title">猜你喜欢</span> <span class="num"> <span id="now_page">1</span> <b>/<span id="total_page">10</span></b> </span> </h3> 
     <div class="bucket"> 
      <!-- 不可选择时调取btn_none --> 
      <a href="#" class="btn_a prev "></a> 
      <a href="#" class="btn_a next "></a> 
      <div class="over"> 
       <ul class="none_b"> 
        <div class="list_page"> 
         <li> <p class="pic" dd_name="猜你喜欢商品图片90"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/1309821186-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">1条评论</span> </span> </p> <p class="price"> <span class="price_d">￥39.90</span> </p> <p class="name" dd_name="猜你喜欢商品名称90"> <a href="#" target="_blank">【江山】海南小贵妃芒果新鲜水果贵妃芒5斤装</a> </p> </li> 
         <li> <p class="pic" dd_name="猜你喜欢商品图片91"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/1138069106-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">3681条评论</span> </span> </p> <p class="price"> <span class="price_d">￥24.80</span> </p> <p class="name" dd_name="猜你喜欢商品名称91"> <a href="#" target="_blank">【三只松鼠_和田小枣180g】休闲零食干果新疆特产和田红枣红枣子小枣</a> </p> </li> 
         <li> <p class="pic" dd_name="猜你喜欢商品图片92"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/1298140337-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">44条评论</span> </span> </p> <p class="price"> <span class="price_d">￥259.00</span> </p> <p class="name" dd_name="猜你喜欢商品名称92"> <a href="#" target="_blank">Converse匡威男鞋女鞋开口笑经典款帆布鞋运动鞋1Q698</a> </p> </li> 
         <li> <p class="pic" dd_name="猜你喜欢商品图片93"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/60303244-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">1251条评论</span> </span> </p> <p class="price"> <span class="price_d">￥19.90</span> </p> <p class="name" dd_name="猜你喜欢商品名称93"> <a href="#" target="_blank">[当当自营]斯里兰卡进口哈文迪Hevenly精选红茶2g*25袋</a> </p> </li> 
         <li> <p class="pic" dd_name="猜你喜欢商品图片94"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/1197019901-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">270条评论</span> </span> </p> <p class="price"> <span class="price_d">￥26.00</span> </p> <p class="name" dd_name="猜你喜欢商品名称94"> <a href="#" target="_blank">【特惠包邮抢！】品胜苹果安卓三星通用三合一数据充电线加长一拖三多功能智能手机充电线iphone6/6S充电线数据线苹果5数据线</a> </p> </li> 
         <li> <p class="pic" dd_name="猜你喜欢商品图片95"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/1210615686-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">0条评论</span> </span> </p> <p class="price"> <span class="price_d">￥389.00</span> </p> <p class="name" dd_name="猜你喜欢商品名称95"> <a href="#" target="_blank">Oiwas/爱华仕变色龙箱包拉杆箱20寸旅行箱男行李箱万向轮6218</a> </p> </li> 
         <li> <p class="pic" dd_name="猜你喜欢商品图片96"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/60632544-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">28条评论</span> </span> </p> <p class="price"> <span class="price_d">￥799.00</span> </p> <p class="name" dd_name="猜你喜欢商品名称96"> <a href="#" target="_blank">[当当自营]Lancome兰蔻新精华肌底液50ml(小黑瓶)</a> </p> </li> 
         <li> <p class="pic" dd_name="猜你喜欢商品图片97"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/1060066905-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">764条评论</span> </span> </p> <p class="price"> <span class="price_d">￥39.00</span> </p> <p class="name" dd_name="猜你喜欢商品名称97"> <a href="#" target="_blank">渔民部落户外男女情侣款轻薄透气防水防晒皮肤风衣</a> </p> </li> 
         <li> <p class="pic" dd_name="猜你喜欢商品图片98"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/1060213095-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">112条评论</span> </span> </p> <p class="price"> <span class="price_d">￥149.00</span> </p> <p class="name" dd_name="猜你喜欢商品名称98"> <a href="#" target="_blank">【领券下单立减80元仅限今日】2017新款高腰网纱半身裙女中长款</a> </p> </li> 
         <li> <p class="pic" dd_name="猜你喜欢商品图片99"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/60324873-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">828条评论</span> </span> </p> <p class="price"> <span class="price_d">￥299.00</span> </p> <p class="name" dd_name="猜你喜欢商品名称99"> <a href="#" target="_blank">[当当自营]Barbie芭比梦幻衣橱带娃娃女孩娃娃玩具X4833</a> </p> </li> 
        </div> 
        <div class="list_page"> 
         <li traced="1"> <p class="pic" dd_name="猜你喜欢商品图片0"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/23491719-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">665条评论</span> </span> </p> <p class="price"> <span class="price_d">￥22.60</span> </p> <p class="name" dd_name="猜你喜欢商品名称0"> <a href="#" target="_blank">历史学原来这么有趣：颠覆传统教学的18堂历史课</a> </p> </li> 
         <li traced="1"> <p class="pic" dd_name="猜你喜欢商品图片1"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/23717372-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">284条评论</span> </span> </p> <p class="price"> <span class="price_d">￥25.90</span> </p> <p class="name" dd_name="猜你喜欢商品名称1"> <a href="#" target="_blank">管理学原来这么有趣：颠覆传统教学的18堂管理课</a> </p> </li> 
         <li traced="1"> <p class="pic" dd_name="猜你喜欢商品图片2"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/23703436-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">147条评论</span> </span> </p> <p class="price"> <span class="price_d">￥31.40</span> </p> <p class="name" dd_name="猜你喜欢商品名称2"> <a href="#" target="_blank">经济学原来这么有趣II：让你豁然开朗的18堂经济学公开课(钟伟伟)</a> </p> </li> 
         <li traced="1"> <p class="pic" dd_name="猜你喜欢商品图片3"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/23947711-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">344条评论</span> </span> </p> <p class="price"> <span class="price_d">￥22.60</span> </p> <p class="name" dd_name="猜你喜欢商品名称3"> <a href="#" target="_blank">逻辑学原来这么有趣：颠覆传统教学的18堂逻辑课</a> </p> </li> 
         <li traced="1"> <p class="pic" dd_name="猜你喜欢商品图片4"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/23958987-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">172条评论</span> </span> </p> <p class="price"> <span class="price_d">￥22.60</span> </p> <p class="name" dd_name="猜你喜欢商品名称4"> <a href="#" target="_blank">社会学原来这么有趣：颠覆传统教学的18堂社会学课</a> </p> </li> 
         <li traced="1"> <p class="pic" dd_name="猜你喜欢商品图片5"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/1099249595-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">3条评论</span> </span> </p> <p class="price"> <span class="price_d">￥149.00</span> </p> <p class="name" dd_name="猜你喜欢商品名称5"> <a href="#" target="_blank">davebella戴维贝拉2017夏季新款女宝连衣裙宝宝公主裙网纱裙</a> </p> </li> 
         <li traced="1"> <p class="pic" dd_name="猜你喜欢商品图片6"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/1270970236-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">0条评论</span> </span> </p> <p class="price"> <span class="price_d">￥598.00</span> </p> <p class="name" dd_name="猜你喜欢商品名称6"> <a href="#" target="_blank">Haglofs火柴棍干爽舒适透气休闲短袖T恤602453</a> </p> </li> 
         <li traced="1"> <p class="pic" dd_name="猜你喜欢商品图片7"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/1259789206-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">604条评论</span> </span> </p> <p class="price"> <span class="price_d">￥89.00</span> </p> <p class="name" dd_name="猜你喜欢商品名称7"> <a href="#" target="_blank">【全场满200减100】法国PELLIOT/伯希和儿童皮肤衣户外防晒透气女风衣风衣外套</a> </p> </li> 
         <li traced="1"> <p class="pic" dd_name="猜你喜欢商品图片8"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/60602804-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">779条评论</span> </span> </p> <p class="price"> <span class="price_d">￥268.00</span> </p> <p class="name" dd_name="猜你喜欢商品名称8"> <a href="#" target="_blank">【当当自营】美素力/佳儿金装婴幼儿配方奶粉1段900g/桶荷兰原装进口（美素一段）</a> </p> </li> 
         <li traced="1"> <p class="pic" dd_name="猜你喜欢商品图片9"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/1195216649-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">0条评论</span> </span> </p> <p class="price"> <span class="price_d">￥218.00</span> </p> <p class="name" dd_name="猜你喜欢商品名称9"> <a href="#" target="_blank">aza阿札2017春夏新款女包初夏系列唯美斜挎包9950</a> </p> </li> 
        </div> 
        <div class="list_page"> 
         <li> <p class="pic" dd_name="猜你喜欢商品图片10"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/23457321-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">1108条评论</span> </span> </p> <p class="price"> <span class="price_d">￥22.10</span> </p> <p class="name" dd_name="猜你喜欢商品名称10"> <a href="#" target="_blank">尼采的锤子：哲学大师的25种思维工具</a> </p> </li> 
         <li> <p class="pic" dd_name="猜你喜欢商品图片11"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/23382987-1_l.jpg"> </a> <span class="hover"> <span class="price_e">电子书价: <a href="#" target="_blank">￥11.19</a> </span> <span class="pinglun">1551条评论</span> </span> </p> <p class="price"> <span class="price_d">￥25.90</span> </p> <p class="name" dd_name="猜你喜欢商品名称11"> <a href="#" target="_blank">文学原来这么有趣：颠覆传统教学的18堂文学课(史上超有趣的文学读本，像读故事一样读懂文学。中央财经大学文化经济学院院长魏鹏举教授审订)</a> </p> </li> 
         <li> <p class="pic" dd_name="猜你喜欢商品图片12"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/23947063-1_l.jpg"> </a> <span class="hover"> <span class="price_e">电子书价: <a href="#" target="_blank">￥8.80</a> </span> <span class="pinglun">812条评论</span> </span> </p> <p class="price"> <span class="price_d">￥22.90</span> </p> <p class="name" dd_name="猜你喜欢商品名称12"> <a href="#" target="_blank">与哲学家一起思考：七天哲学课</a> </p> </li> 
         <li> <p class="pic" dd_name="猜你喜欢商品图片13"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/23563600-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">1627条评论</span> </span> </p> <p class="price"> <span class="price_d">￥22.20</span> </p> <p class="name" dd_name="猜你喜欢商品名称13"> <a href="#" target="_blank">哲学是每个人的事（本书作者为邓小平所推崇，并三次接见。这是本由全球各界领袖专门讨论的书。如果我们要处理我们当今的经济、政治、社会及道德难题，我们就必须掌握书中的六大观念！）</a> </p> </li> 
         <li> <p class="pic" dd_name="猜你喜欢商品图片14"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/23717393-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">199条评论</span> </span> </p> <p class="price"> <span class="price_d">￥23.60</span> </p> <p class="name" dd_name="猜你喜欢商品名称14"> <a href="#" target="_blank">营销学原来这么有趣：颠覆传统教学的18堂营销课</a> </p> </li> 
         <li> <p class="pic" dd_name="猜你喜欢商品图片15"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/60313940-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">11220条评论</span> </span> </p> <p class="price"> <span class="price_d">￥85.00</span> </p> <p class="name" dd_name="猜你喜欢商品名称15"> <a href="#" target="_blank">[当当自营]帮宝适超薄干爽纸尿裤加加大号XXL34片（适合12kg以上）大包装尿不湿</a> </p> </li> 
         <li> <p class="pic" dd_name="猜你喜欢商品图片16"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/1270576536-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">10条评论</span> </span> </p> <p class="price"> <span class="price_d">￥1198</span> </p> <p class="name" dd_name="猜你喜欢商品名称16"> <a href="#" target="_blank">Haglofs火柴棍女款轻便透气减震防滑徒步鞋495690</a> </p> </li> 
         <li> <p class="pic" dd_name="猜你喜欢商品图片17"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/1074070549-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">0条评论</span> </span> </p> <p class="price"> <span class="price_d">￥89.00</span> </p> <p class="name" dd_name="猜你喜欢商品名称17"> <a href="#" target="_blank">gxgjeans男装冬季男士英伦时尚撞色拼接修身休闲长袖衬衫54603016</a> </p> </li> 
         <li> <p class="pic" dd_name="猜你喜欢商品图片18"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/1054886849-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">72条评论</span> </span> </p> <p class="price"> <span class="price_d">￥123.00</span> </p> <p class="name" dd_name="猜你喜欢商品名称18"> <a href="#" target="_blank">Adidas阿迪达斯2017新款男子运动短袖T恤BQ0357/BK6955</a> </p> </li> 
         <li> <p class="pic" dd_name="猜你喜欢商品图片19"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/1165081550-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">0条评论</span> </span> </p> <p class="price"> <span class="price_d">￥138.00</span> </p> <p class="name" dd_name="猜你喜欢商品名称19"> <a href="#" target="_blank">木林森男凉鞋2017春夏男士沙滩鞋舒适透气男休闲凉鞋05277705</a> </p> </li> 
        </div> 
        <div class="list_page"> 
         <li> <p class="pic" dd_name="猜你喜欢商品图片20"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/20811905-1_l.jpg"> </a> <span class="hover"> <span class="price_e">电子书价: <a href="#" target="_blank">￥3.50</a> </span> <span class="pinglun">56653条评论</span> </span> </p> <p class="price"> <span class="price_d">￥18.00</span> </p> <p class="name" dd_name="猜你喜欢商品名称20"> <a href="#" target="_blank">卡耐基口才的艺术与人际关系（全集）</a> </p> </li> 
         <li> <p class="pic" dd_name="猜你喜欢商品图片21"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/22871030-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">641条评论</span> </span> </p> <p class="price"> <span class="price_d">￥20.90</span> </p> <p class="name" dd_name="猜你喜欢商品名称21"> <a href="#" target="_blank">彩排（2013年英国布克奖得主：埃莉诺·卡顿处女作品）</a> </p> </li> 
         <li> <p class="pic" dd_name="猜你喜欢商品图片22"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/23895474-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">400条评论</span> </span> </p> <p class="price"> <span class="price_d">￥92.20</span> </p> <p class="name" dd_name="猜你喜欢商品名称22"> <a href="#" target="_blank">蔡志忠佛学禅宗（全四册）——国学大师蔡志忠解密《禅》+《心经》+《金刚经》+《菜根谭》</a> </p> </li> 
         <li> <p class="pic" dd_name="猜你喜欢商品图片23"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/9352587-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">439条评论</span> </span> </p> <p class="price"> <span class="price_d">￥9.80</span> </p> <p class="name" dd_name="猜你喜欢商品名称23"> <a href="#" target="_blank">西方哲学经典讲演录</a> </p> </li> 
         <li> <p class="pic" dd_name="猜你喜欢商品图片24"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/23327986-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">280条评论</span> </span> </p> <p class="price"> <span class="price_d">￥37.90</span> </p> <p class="name" dd_name="猜你喜欢商品名称24"> <a href="#" target="_blank">流放的灵魂：索尔仁尼琴</a> </p> </li> 
         <li> <p class="pic" dd_name="猜你喜欢商品图片25"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/1255052331-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">15条评论</span> </span> </p> <p class="price"> <span class="price_d">￥269.00</span> </p> <p class="name" dd_name="猜你喜欢商品名称25"> <a href="#" target="_blank">camel骆驼男鞋欧美时尚透气网面鞋日常休闲男鞋子</a> </p> </li> 
         <li> <p class="pic" dd_name="猜你喜欢商品图片26"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/1161738780-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">0条评论</span> </span> </p> <p class="price"> <span class="price_d">￥189.00</span> </p> <p class="name" dd_name="猜你喜欢商品名称26"> <a href="#" target="_blank">特步女鞋2017春季新款休闲鞋轻便运动鞋时尚潮流百搭椰子鞋跑步鞋</a> </p> </li> 
         <li> <p class="pic" dd_name="猜你喜欢商品图片27"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/1034400248-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">0条评论</span> </span> </p> <p class="price"> <span class="price_d">￥3380</span> </p> <p class="name" dd_name="猜你喜欢商品名称27"> <a href="#" target="_blank">周大福珠宝首饰圣诞麋鹿碧玺18K金钻石项链/吊坠V107514</a> </p> </li> 
         <li> <p class="pic" dd_name="猜你喜欢商品图片28"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/60617420-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">880条评论</span> </span> </p> <p class="price"> <span class="price_d">￥179.00</span> </p> <p class="name" dd_name="猜你喜欢商品名称28"> <a href="#" target="_blank">【当当自营】美素佳儿金装儿童配方奶粉4段盒装1200g荷兰原装进口（美素四段）</a> </p> </li> 
         <li> <p class="pic" dd_name="猜你喜欢商品图片29"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/1049302593-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">4条评论</span> </span> </p> <p class="price"> <span class="price_d">￥239.00</span> </p> <p class="name" dd_name="猜你喜欢商品名称29"> <a href="#" target="_blank">七匹狼牛仔裤春季新品男士时尚休闲生活牛仔裤男装4035627</a> </p> </li> 
        </div> 
        <div class="list_page"> 
         <li> <p class="pic" dd_name="猜你喜欢商品图片30"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/23717486-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">98条评论</span> </span> </p> <p class="price"> <span class="price_d">￥10.20</span> </p> <p class="name" dd_name="猜你喜欢商品名称30"> <a href="#" target="_blank">《玛格丽特系列：洋娃娃失踪了》一件丢失的东西，大人收获的可能是曾经，但孩子会知道——向前看，意大利安徒生奖最佳插画师作品</a> </p> </li> 
         <li> <p class="pic" dd_name="猜你喜欢商品图片31"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/1099464206-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">74条评论</span> </span> </p> <p class="price"> <span class="price_d">￥15.00</span> </p> <p class="name" dd_name="猜你喜欢商品名称31"> <a href="#" target="_blank">婚姻是女人一辈子的事陆琪北方妇女儿童出版社</a> </p> </li> 
         <li> <p class="pic" dd_name="猜你喜欢商品图片32"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/24143750-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">35条评论</span> </span> </p> <p class="price"> <span class="price_d">￥19.40</span> </p> <p class="name" dd_name="猜你喜欢商品名称32"> <a href="#" target="_blank">一路向西，绝色四川图说天下国家地理</a> </p> </li> 
         <li> <p class="pic" dd_name="猜你喜欢商品图片33"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/23389524-1_l.jpg"> </a> <span class="hover"> <span class="price_e">电子书价: <a href="#" target="_blank">￥11.19</a> </span> <span class="pinglun">5676条评论</span> </span> </p> <p class="price"> <span class="price_d">￥20.00</span> </p> <p class="name" dd_name="猜你喜欢商品名称33"> <a href="#" target="_blank">再忙也要做个好妻子（畅销书珍藏版）为什么有些人永远不离婚？好妻子炼成的智慧之道，做荣耀的帮助者。做一个收获成功事业与幸福家庭的双赢女人，让女人越忙越幸福！</a> </p> </li> 
         <li> <p class="pic" dd_name="猜你喜欢商品图片34"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/23307641-1_l.jpg"> </a> <span class="hover"> <span class="price_e">电子书价: <a href="#" target="_blank">￥0.99</a> </span> <span class="pinglun">744条评论</span> </span> </p> <p class="price"> <span class="price_d">￥10.40</span> </p> <p class="name" dd_name="猜你喜欢商品名称34"> <a href="#" target="_blank">主食变变变（最少的时间、最常见的食材、最简单的步骤做最营养的一餐！新浪百万级美食博主，“下厨房”超人气厨友与你分享最适合都市上班族的主食烹饪指南！）</a> </p> </li> 
         <li> <p class="pic" dd_name="猜你喜欢商品图片35"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/1064053870-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">0条评论</span> </span> </p> <p class="price"> <span class="price_d">￥129.90</span> </p> <p class="name" dd_name="猜你喜欢商品名称35"> <a href="#" target="_blank">Amii[极简主义]2017春装新款修身松紧腰百搭显瘦铅笔牛仔九分裤女</a> </p> </li> 
         <li> <p class="pic" dd_name="猜你喜欢商品图片36"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/1229925886-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">21条评论</span> </span> </p> <p class="price"> <span class="price_d">￥299.00</span> </p> <p class="name" dd_name="猜你喜欢商品名称36"> <a href="#" target="_blank">【可礼品卡支付】Delsey法国大使拉杆箱2017新款旅行箱男女硬箱行李箱纤巧</a> </p> </li> 
         <li> <p class="pic" dd_name="猜你喜欢商品图片37"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/1088788580-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">44条评论</span> </span> </p> <p class="price"> <span class="price_d">￥59.00</span> </p> <p class="name" dd_name="猜你喜欢商品名称37"> <a href="#" target="_blank">【包邮】Shes茜子雪纺印花爱心吊坠发圈盘发发饰/支持礼品卡</a> </p> </li> 
         <li> <p class="pic" dd_name="猜你喜欢商品图片38"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/1135916745-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">151条评论</span> </span> </p> <p class="price"> <span class="price_d">￥119.00</span> </p> <p class="name" dd_name="猜你喜欢商品名称38"> <a href="#" target="_blank">巴拉巴拉男童中裤男中大童七分裤童裤夏季童装儿童裤子男</a> </p> </li> 
         <li> <p class="pic" dd_name="猜你喜欢商品图片39"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/60598681-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">1779条评论</span> </span> </p> <p class="price"> <span class="price_d">￥20.30</span> </p> <p class="name" dd_name="猜你喜欢商品名称39"> <a href="#" target="_blank">[当当自营]鲁花芝麻香油350ml</a> </p> </li> 
        </div> 
        <div class="list_page"> 
         <li> <p class="pic" dd_name="猜你喜欢商品图片40"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/22775741-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">19861条评论</span> </span> </p> <p class="price"> <span class="price_d">￥31.10</span> </p> <p class="name" dd_name="猜你喜欢商品名称40"> <a href="#" target="_blank">上古（一场跨越前世今生的亘古之恋，一段铭刻三生三世的万卷长情！媲美唐七公子《三生三世十里桃花》的玄幻大作。）</a> </p> </li> 
         <li> <p class="pic" dd_name="猜你喜欢商品图片41"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/23951294-1_l.jpg"> </a> <span class="hover"> <span class="price_e">电子书价: <a href="#" target="_blank">￥9.99</a> </span> <span class="pinglun">40792条评论</span> </span> </p> <p class="price"> <span class="price_d">￥64.50</span> </p> <p class="name" dd_name="猜你喜欢商品名称41"> <a href="#" target="_blank">巨人的陨落（套装共3册）</a> </p> </li> 
         <li> <p class="pic" dd_name="猜你喜欢商品图片42"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/23510362-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">357条评论</span> </span> </p> <p class="price"> <span class="price_d">￥23.50</span> </p> <p class="name" dd_name="猜你喜欢商品名称42"> <a href="#" target="_blank">天上的爱情，人间的婚姻</a> </p> </li> 
         <li> <p class="pic" dd_name="猜你喜欢商品图片43"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/22540844-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">2242条评论</span> </span> </p> <p class="price"> <span class="price_d">￥22.10</span> </p> <p class="name" dd_name="猜你喜欢商品名称43"> <a href="#" target="_blank">青春读书课第三卷-世界的影像：文学理想启蒙读本：第二册</a> </p> </li> 
         <li> <p class="pic" dd_name="猜你喜欢商品图片44"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/22898735-1_l.jpg"> </a> <span class="hover"> <span class="price_e">电子书价: <a href="#" target="_blank">￥1.99</a> </span> <span class="pinglun">12997条评论</span> </span> </p> <p class="price"> <span class="price_d">￥14.90</span> </p> <p class="name" dd_name="猜你喜欢商品名称44"> <a href="#" target="_blank">实用公文写作一本通（年度畅销版）（党政企事业单位公务员、大专院校师生的必备用书。实用的案头工具书。）</a> </p> </li> 
         <li> <p class="pic" dd_name="猜你喜欢商品图片45"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/60112073-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">56318条评论</span> </span> </p> <p class="price"> <span class="price_d">￥27.90</span> </p> <p class="name" dd_name="猜你喜欢商品名称45"> <a href="#" target="_blank">【当当自营】Pigeon贝亲婴儿柔湿巾湿巾湿纸巾80片*3包PL135贝亲洗护喂养用品</a> </p> </li> 
         <li> <p class="pic" dd_name="猜你喜欢商品图片46"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/1199672066-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">6条评论</span> </span> </p> <p class="price"> <span class="price_d">￥287.80</span> </p> <p class="name" dd_name="猜你喜欢商品名称46"> <a href="#" target="_blank">裂帛2017春装牛仔背带裙刺绣口袋纽扣门襟无袖连衣裙女</a> </p> </li> 
         <li> <p class="pic" dd_name="猜你喜欢商品图片47"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/1355413445-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">179条评论</span> </span> </p> <p class="price"> <span class="price_d">￥69.00</span> </p> <p class="name" dd_name="猜你喜欢商品名称47"> <a href="#" target="_blank">巴拉巴拉男童短袖t恤中大童上衣童装夏年装儿童学生T恤</a> </p> </li> 
         <li> <p class="pic" dd_name="猜你喜欢商品图片48"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/1027130248-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">13条评论</span> </span> </p> <p class="price"> <span class="price_d">￥1392.92</span> </p> <p class="name" dd_name="猜你喜欢商品名称48"> <a href="#" target="_blank">【周大福佳礼可礼品卡购】周大福玫瑰花黄金足金吊坠(工费:108元计价)F193926</a> </p> </li> 
         <li> <p class="pic" dd_name="猜你喜欢商品图片49"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/1034976560-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">6条评论</span> </span> </p> <p class="price"> <span class="price_d">￥139.00</span> </p> <p class="name" dd_name="猜你喜欢商品名称49"> <a href="#" target="_blank">【领券下单立减60元】骆驼女鞋春夏新款韩版时尚帆布鞋时尚休闲单鞋女</a> </p> </li> 
        </div> 
        <div class="list_page"> 
         <li> <p class="pic" dd_name="猜你喜欢商品图片50"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/23059996-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">3970条评论</span> </span> </p> <p class="price"> <span class="price_d">￥11.80</span> </p> <p class="name" dd_name="猜你喜欢商品名称50"> <a href="#" target="_blank">乡土中国</a> </p> </li> 
         <li> <p class="pic" dd_name="猜你喜欢商品图片51"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/23402647-1_l.jpg"> </a> <span class="hover"> <span class="price_e">电子书价: <a href="#" target="_blank">￥1.99</a> </span> <span class="pinglun">1811条评论</span> </span> </p> <p class="price"> <span class="price_d">￥9.30</span> </p> <p class="name" dd_name="猜你喜欢商品名称51"> <a href="#" target="_blank">宅腐控心理学（宅人、腐女、瓶邪、南派三叔、萝莉控、中二病、女汉子……揭秘当下流行的新生心理现象）</a> </p> </li> 
         <li> <p class="pic" dd_name="猜你喜欢商品图片52"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/23505074-1_l.jpg"> </a> <span class="hover"> <span class="price_e">电子书价: <a href="#" target="_blank">￥12.00</a> </span> <span class="pinglun">5298条评论</span> </span> </p> <p class="price"> <span class="price_d">￥27.50</span> </p> <p class="name" dd_name="猜你喜欢商品名称52"> <a href="#" target="_blank">5：2轻断食</a> </p> </li> 
         <li> <p class="pic" dd_name="猜你喜欢商品图片53"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/23334798-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">2341条评论</span> </span> </p> <p class="price"> <span class="price_d">￥9.30</span> </p> <p class="name" dd_name="猜你喜欢商品名称53"> <a href="#" target="_blank">亲近自然游戏大冒险</a> </p> </li> 
         <li> <p class="pic" dd_name="猜你喜欢商品图片54"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/22805111-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">2792条评论</span> </span> </p> <p class="price"> <span class="price_d">￥53.70</span> </p> <p class="name" dd_name="猜你喜欢商品名称54"> <a href="#" target="_blank">GB/T9704—2012国家标准应用指南</a> </p> </li> 
         <li> <p class="pic" dd_name="猜你喜欢商品图片55"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/1026769460-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">48条评论</span> </span> </p> <p class="price"> <span class="price_d">￥199.00</span> </p> <p class="name" dd_name="猜你喜欢商品名称55"> <a href="#" target="_blank">【领券下单立减60元】骆驼女鞋2017春夏新款轻便透气飞织布单鞋舒适防滑百搭休闲鞋</a> </p> </li> 
         <li> <p class="pic" dd_name="猜你喜欢商品图片56"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/20625023-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">22260条评论</span> </span> </p> <p class="price"> <span class="price_d">￥99.00</span> </p> <p class="name" dd_name="猜你喜欢商品名称56"> <a href="#" target="_blank">[当当自营]LOREAL欧莱雅男士劲能醒肤露8重功效50ml</a> </p> </li> 
         <li> <p class="pic" dd_name="猜你喜欢商品图片57"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/1470769971-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">2条评论</span> </span> </p> <p class="price"> <span class="price_d">￥269.00</span> </p> <p class="name" dd_name="猜你喜欢商品名称57"> <a href="#" target="_blank">camel骆驼男鞋夏季新款日常简约撞色拼接牛皮鞋面休闲鞋男</a> </p> </li> 
         <li> <p class="pic" dd_name="猜你喜欢商品图片58"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/1026071960-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">2条评论</span> </span> </p> <p class="price"> <span class="price_d">￥149.00</span> </p> <p class="name" dd_name="猜你喜欢商品名称58"> <a href="#" target="_blank">【领券下单立减60元】骆驼女鞋2017春夏新款舒适透气帆布鞋时尚平底单鞋</a> </p> </li> 
         <li> <p class="pic" dd_name="猜你喜欢商品图片59"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/1208988150-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">1条评论</span> </span> </p> <p class="price"> <span class="price_d">￥149.00</span> </p> <p class="name" dd_name="猜你喜欢商品名称59"> <a href="#" target="_blank">初语2017年夏季新款学生牛仔短裤女热裤夏宽松阔腿裤破洞牛仔裤</a> </p> </li> 
        </div> 
        <div class="list_page"> 
         <li> <p class="pic" dd_name="猜你喜欢商品图片60"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/23480442-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">12507条评论</span> </span> </p> <p class="price"> <span class="price_d">￥15.60</span> </p> <p class="name" dd_name="猜你喜欢商品名称60"> <a href="#" target="_blank">一个人的好天气</a> </p> </li> 
         <li> <p class="pic" dd_name="猜你喜欢商品图片61"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/20911651-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">7853条评论</span> </span> </p> <p class="price"> <span class="price_d">￥22.40</span> </p> <p class="name" dd_name="猜你喜欢商品名称61"> <a href="#" target="_blank">健康生活新开始</a> </p> </li> 
         <li> <p class="pic" dd_name="猜你喜欢商品图片62"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/23930016-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">610条评论</span> </span> </p> <p class="price"> <span class="price_d">￥10.90</span> </p> <p class="name" dd_name="猜你喜欢商品名称62"> <a href="#" target="_blank">我想你时，月亮刚好经过</a> </p> </li> 
         <li> <p class="pic" dd_name="猜你喜欢商品图片63"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/23803869-1_l.jpg"> </a> <span class="hover"> <span class="price_e">电子书价: <a href="#" target="_blank">￥2.00</a> </span> <span class="pinglun">3796条评论</span> </span> </p> <p class="price"> <span class="price_d">￥13.00</span> </p> <p class="name" dd_name="猜你喜欢商品名称63"> <a href="#" target="_blank">秘密花园：THESECRETGARDEN（英文原版）</a> </p> </li> 
         <li> <p class="pic" dd_name="猜你喜欢商品图片64"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/23597509-1_l.jpg"> </a> <span class="hover"> <span class="price_e">电子书价: <a href="#" target="_blank">￥9.99</a> </span> <span class="pinglun">877条评论</span> </span> </p> <p class="price"> <span class="price_d">￥20.00</span> </p> <p class="name" dd_name="猜你喜欢商品名称64"> <a href="#" target="_blank">无论爱与不爱，下辈子，都不会再见</a> </p> </li> 
         <li> <p class="pic" dd_name="猜你喜欢商品图片65"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/1282070435-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">6条评论</span> </span> </p> <p class="price"> <span class="price_d">￥59.00</span> </p> <p class="name" dd_name="猜你喜欢商品名称65"> <a href="#" target="_blank">探路者TOREAD品牌童装夏装男童动物系列短袖T恤a儿童T恤</a> </p> </li> 
         <li> <p class="pic" dd_name="猜你喜欢商品图片66"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/1211132850-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">0条评论</span> </span> </p> <p class="price"> <span class="price_d">￥179.00</span> </p> <p class="name" dd_name="猜你喜欢商品名称66"> <a href="#" target="_blank">初语夏装新款迪士尼圆领五分袖T恤女纯棉印花拼接中袖宽松上衣</a> </p> </li> 
         <li> <p class="pic" dd_name="猜你喜欢商品图片67"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/1154451947-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">1条评论</span> </span> </p> <p class="price"> <span class="price_d">￥115.00</span> </p> <p class="name" dd_name="猜你喜欢商品名称67"> <a href="#" target="_blank">Daphne/达芙妮中跟平底防滑一字扣鳄鱼纹夏季女凉鞋1515303056</a> </p> </li> 
         <li> <p class="pic" dd_name="猜你喜欢商品图片68"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/1198145580-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">0条评论</span> </span> </p> <p class="price"> <span class="price_d">￥89.00</span> </p> <p class="name" dd_name="猜你喜欢商品名称68"> <a href="#" target="_blank">【3.28上新】海贝2017年夏季新女装气质纯色圆领无袖假两件斗篷套头雪纺衬衫</a> </p> </li> 
         <li> <p class="pic" dd_name="猜你喜欢商品图片69"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/60203038-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">22472条评论</span> </span> </p> <p class="price"> <span class="price_d">￥139.00</span> </p> <p class="name" dd_name="猜你喜欢商品名称69"> <a href="#" target="_blank">[当当自营]Huggies好奇银装纸尿裤中号M160片(适合7-11公斤)箱装尿不湿</a> </p> </li> 
        </div> 
        <div class="list_page"> 
         <li> <p class="pic" dd_name="猜你喜欢商品图片70"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/22893361-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">593条评论</span> </span> </p> <p class="price"> <span class="price_d">￥18.90</span> </p> <p class="name" dd_name="猜你喜欢商品名称70"> <a href="#" target="_blank">中学图书馆文库——师门五年记胡适琐记（增补本）</a> </p> </li> 
         <li> <p class="pic" dd_name="猜你喜欢商品图片71"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/24180083-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">39条评论</span> </span> </p> <p class="price"> <span class="price_d">￥19.40</span> </p> <p class="name" dd_name="猜你喜欢商品名称71"> <a href="#" target="_blank">时光流转，小镇风情</a> </p> </li> 
         <li> <p class="pic" dd_name="猜你喜欢商品图片72"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/24008598-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">306条评论</span> </span> </p> <p class="price"> <span class="price_d">￥15.80</span> </p> <p class="name" dd_name="猜你喜欢商品名称72"> <a href="#" target="_blank">尔雅附音序、笔画索引</a> </p> </li> 
         <li> <p class="pic" dd_name="猜你喜欢商品图片73"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/24181533-1_l.jpg"> </a> <span class="hover"> <span class="price_e">电子书价: <a href="#" target="_blank">￥11.99</a> </span> <span class="pinglun">11条评论</span> </span> </p> <p class="price"> <span class="price_d">￥53.70</span> </p> <p class="name" dd_name="猜你喜欢商品名称73"> <a href="#" target="_blank">对空言说：传播的观念史（大学译丛）</a> </p> </li> 
         <li> <p class="pic" dd_name="猜你喜欢商品图片74"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/22630568-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">403条评论</span> </span> </p> <p class="price"> <span class="price_d">￥15.50</span> </p> <p class="name" dd_name="猜你喜欢商品名称74"> <a href="#" target="_blank">大家写给大家：柴门清话</a> </p> </li> 
         <li> <p class="pic" dd_name="猜你喜欢商品图片75"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/1026310005-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">5559条评论</span> </span> </p> <p class="price"> <span class="price_d">￥119.00</span> </p> <p class="name" dd_name="猜你喜欢商品名称75"> <a href="#" target="_blank">UOVO2017畅销包头儿童凉鞋男童女童镂空沙滩鞋夏季小大童男童鞋女童鞋韩版潮新款风之子1</a> </p> </li> 
         <li> <p class="pic" dd_name="猜你喜欢商品图片76"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/1437567871-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">63条评论</span> </span> </p> <p class="price"> <span class="price_d">￥189.00</span> </p> <p class="name" dd_name="猜你喜欢商品名称76"> <a href="#" target="_blank">【领券下单立减60元】骆驼女鞋春季新款七彩拼色轻便平底鞋透气单鞋女</a> </p> </li> 
         <li> <p class="pic" dd_name="猜你喜欢商品图片77"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/1102968890-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">17条评论</span> </span> </p> <p class="price"> <span class="price_d">￥159.00</span> </p> <p class="name" dd_name="猜你喜欢商品名称77"> <a href="#" target="_blank">茵曼2017夏装新款文艺条纹高腰短袖连衣裙A字裙女【1872102173】</a> </p> </li> 
         <li> <p class="pic" dd_name="猜你喜欢商品图片78"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/1161212127-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">28条评论</span> </span> </p> <p class="price"> <span class="price_d">￥289.00</span> </p> <p class="name" dd_name="猜你喜欢商品名称78"> <a href="#" target="_blank">汉客(HANKE)万向轮PC拉杆旅行箱行李箱登机箱男女硬箱子</a> </p> </li> 
         <li> <p class="pic" dd_name="猜你喜欢商品图片79"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/60603856-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">1241条评论</span> </span> </p> <p class="price"> <span class="price_d">￥103.00</span> </p> <p class="name" dd_name="猜你喜欢商品名称79"> <a href="#" target="_blank">【当当自营】Pigeon贝亲自然实感宽口径玻璃奶瓶240ml配L奶嘴(黄色旋盖/Lsize)AA92</a> </p> </li> 
        </div> 
        <div class="list_page"> 
         <li> <p class="pic" dd_name="猜你喜欢商品图片80"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/1272151508-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">203条评论</span> </span> </p> <p class="price"> <span class="price_d">￥27.00</span> </p> <p class="name" dd_name="猜你喜欢商品名称80"> <a href="#" target="_blank">禾煜枸杞王200g/袋宁夏特产枸杞枸杞子宁夏枸杞</a> </p> </li> 
         <li> <p class="pic" dd_name="猜你喜欢商品图片81"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/1386469235-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">103条评论</span> </span> </p> <p class="price"> <span class="price_d">￥17.80</span> </p> <p class="name" dd_name="猜你喜欢商品名称81"> <a href="#" target="_blank">【三只松鼠_琥珀阿胶蜜枣220g】休闲零食特产蜜饯后红枣无核蜜枣</a> </p> </li> 
         <li> <p class="pic" dd_name="猜你喜欢商品图片82"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/1116278960-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">0条评论</span> </span> </p> <p class="price"> <span class="price_d">￥13.80</span> </p> <p class="name" dd_name="猜你喜欢商品名称82"> <a href="#" target="_blank">顶诺台式原味新鲜冷冻鸡胸肉单片低脂代餐健身营养生鲜鸡胸脯肉</a> </p> </li> 
         <li> <p class="pic" dd_name="猜你喜欢商品图片83"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/1305657405-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">1056条评论</span> </span> </p> <p class="price"> <span class="price_d">￥15.00</span> </p> <p class="name" dd_name="猜你喜欢商品名称83"> <a href="#" target="_blank">才者荷叶普洱小沱茶15粒盒装云南普洱茶叶熟茶</a> </p> </li> 
         <li> <p class="pic" dd_name="猜你喜欢商品图片84"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/1383385193-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">110条评论</span> </span> </p> <p class="price"> <span class="price_d">￥65.00</span> </p> <p class="name" dd_name="猜你喜欢商品名称84"> <a href="#" target="_blank">【本来生活】光明莫斯利安钻石包巴氏杀菌酸牛奶(原味)200g×12</a> </p> </li> 
         <li> <p class="pic" dd_name="猜你喜欢商品图片85"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/1300029190-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">1条评论</span> </span> </p> <p class="price"> <span class="price_d">￥199.00</span> </p> <p class="name" dd_name="猜你喜欢商品名称85"> <a href="#" target="_blank">茵曼2017夏装新款棉质个性破洞小脚时尚牛仔裤女【1872334358】</a> </p> </li> 
         <li> <p class="pic" dd_name="猜你喜欢商品图片86"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/1427477437-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">2条评论</span> </span> </p> <p class="price"> <span class="price_d">￥69.00</span> </p> <p class="name" dd_name="猜你喜欢商品名称86"> <a href="#" target="_blank">以纯A21女装宽松圆领太空棉短袖T恤青春休闲个性2017夏装新品印花潮T</a> </p> </li> 
         <li> <p class="pic" dd_name="猜你喜欢商品图片87"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/1356425965-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">0条评论</span> </span> </p> <p class="price"> <span class="price_d">￥239.00</span> </p> <p class="name" dd_name="猜你喜欢商品名称87"> <a href="#" target="_blank">七匹狼休闲裤春夏男士经典百搭新品休闲长裤男装正品4082706</a> </p> </li> 
         <li> <p class="pic" dd_name="猜你喜欢商品图片88"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/1131056447-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">22条评论</span> </span> </p> <p class="price"> <span class="price_d">￥115.00</span> </p> <p class="name" dd_name="猜你喜欢商品名称88"> <a href="#" target="_blank">Daphne/达芙妮春季新款女鞋高跟圆头牛皮通勤单鞋</a> </p> </li> 
         <li> <p class="pic" dd_name="猜你喜欢商品图片89"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/1379390141-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">22条评论</span> </span> </p> <p class="price"> <span class="price_d">￥369.00</span> </p> <p class="name" dd_name="猜你喜欢商品名称89"> <a href="#" target="_blank">camel骆驼男鞋新款系带休闲鞋头层皮耐磨男士休闲板鞋</a> </p> </li> 
        </div> 
        <div class="list_page"> 
         <li> <p class="pic" dd_name="猜你喜欢商品图片90"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/1309821186-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">1条评论</span> </span> </p> <p class="price"> <span class="price_d">￥39.90</span> </p> <p class="name" dd_name="猜你喜欢商品名称90"> <a href="#" target="_blank">【江山】海南小贵妃芒果新鲜水果贵妃芒5斤装</a> </p> </li> 
         <li> <p class="pic" dd_name="猜你喜欢商品图片91"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/1138069106-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">3681条评论</span> </span> </p> <p class="price"> <span class="price_d">￥24.80</span> </p> <p class="name" dd_name="猜你喜欢商品名称91"> <a href="#" target="_blank">【三只松鼠_和田小枣180g】休闲零食干果新疆特产和田红枣红枣子小枣</a> </p> </li> 
         <li> <p class="pic" dd_name="猜你喜欢商品图片92"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/1298140337-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">44条评论</span> </span> </p> <p class="price"> <span class="price_d">￥259.00</span> </p> <p class="name" dd_name="猜你喜欢商品名称92"> <a href="#" target="_blank">Converse匡威男鞋女鞋开口笑经典款帆布鞋运动鞋1Q698</a> </p> </li> 
         <li> <p class="pic" dd_name="猜你喜欢商品图片93"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/60303244-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">1251条评论</span> </span> </p> <p class="price"> <span class="price_d">￥19.90</span> </p> <p class="name" dd_name="猜你喜欢商品名称93"> <a href="#" target="_blank">[当当自营]斯里兰卡进口哈文迪Hevenly精选红茶2g*25袋</a> </p> </li> 
         <li> <p class="pic" dd_name="猜你喜欢商品图片94"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/1197019901-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">270条评论</span> </span> </p> <p class="price"> <span class="price_d">￥26.00</span> </p> <p class="name" dd_name="猜你喜欢商品名称94"> <a href="#" target="_blank">【特惠包邮抢！】品胜苹果安卓三星通用三合一数据充电线加长一拖三多功能智能手机充电线iphone6/6S充电线数据线苹果5数据线</a> </p> </li> 
         <li> <p class="pic" dd_name="猜你喜欢商品图片95"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/1210615686-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">0条评论</span> </span> </p> <p class="price"> <span class="price_d">￥389.00</span> </p> <p class="name" dd_name="猜你喜欢商品名称95"> <a href="#" target="_blank">Oiwas/爱华仕变色龙箱包拉杆箱20寸旅行箱男行李箱万向轮6218</a> </p> </li> 
         <li> <p class="pic" dd_name="猜你喜欢商品图片96"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/60632544-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">28条评论</span> </span> </p> <p class="price"> <span class="price_d">￥799.00</span> </p> <p class="name" dd_name="猜你喜欢商品名称96"> <a href="#" target="_blank">[当当自营]Lancome兰蔻新精华肌底液50ml(小黑瓶)</a> </p> </li> 
         <li> <p class="pic" dd_name="猜你喜欢商品图片97"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/1060066905-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">764条评论</span> </span> </p> <p class="price"> <span class="price_d">￥39.00</span> </p> <p class="name" dd_name="猜你喜欢商品名称97"> <a href="#" target="_blank">渔民部落户外男女情侣款轻薄透气防水防晒皮肤风衣</a> </p> </li> 
         <li> <p class="pic" dd_name="猜你喜欢商品图片98"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/1060213095-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">112条评论</span> </span> </p> <p class="price"> <span class="price_d">￥149.00</span> </p> <p class="name" dd_name="猜你喜欢商品名称98"> <a href="#" target="_blank">【领券下单立减80元仅限今日】2017新款高腰网纱半身裙女中长款</a> </p> </li> 
         <li> <p class="pic" dd_name="猜你喜欢商品图片99"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/60324873-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">828条评论</span> </span> </p> <p class="price"> <span class="price_d">￥299.00</span> </p> <p class="name" dd_name="猜你喜欢商品名称99"> <a href="#" target="_blank">[当当自营]Barbie芭比梦幻衣橱带娃娃女孩娃娃玩具X4833</a> </p> </li> 
        </div> 
        <div class="list_page"> 
         <li> <p class="pic" dd_name="猜你喜欢商品图片0"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/23491719-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">665条评论</span> </span> </p> <p class="price"> <span class="price_d">￥22.60</span> </p> <p class="name" dd_name="猜你喜欢商品名称0"> <a href="#" target="_blank">历史学原来这么有趣：颠覆传统教学的18堂历史课</a> </p> </li> 
         <li> <p class="pic" dd_name="猜你喜欢商品图片1"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/23717372-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">284条评论</span> </span> </p> <p class="price"> <span class="price_d">￥25.90</span> </p> <p class="name" dd_name="猜你喜欢商品名称1"> <a href="#" target="_blank">管理学原来这么有趣：颠覆传统教学的18堂管理课</a> </p> </li> 
         <li> <p class="pic" dd_name="猜你喜欢商品图片2"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/23703436-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">147条评论</span> </span> </p> <p class="price"> <span class="price_d">￥31.40</span> </p> <p class="name" dd_name="猜你喜欢商品名称2"> <a href="#" target="_blank">经济学原来这么有趣II：让你豁然开朗的18堂经济学公开课(钟伟伟)</a> </p> </li> 
         <li> <p class="pic" dd_name="猜你喜欢商品图片3"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/23947711-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">344条评论</span> </span> </p> <p class="price"> <span class="price_d">￥22.60</span> </p> <p class="name" dd_name="猜你喜欢商品名称3"> <a href="#" target="_blank">逻辑学原来这么有趣：颠覆传统教学的18堂逻辑课</a> </p> </li> 
         <li> <p class="pic" dd_name="猜你喜欢商品图片4"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/23958987-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">172条评论</span> </span> </p> <p class="price"> <span class="price_d">￥22.60</span> </p> <p class="name" dd_name="猜你喜欢商品名称4"> <a href="#" target="_blank">社会学原来这么有趣：颠覆传统教学的18堂社会学课</a> </p> </li> 
         <li> <p class="pic" dd_name="猜你喜欢商品图片5"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/1099249595-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">3条评论</span> </span> </p> <p class="price"> <span class="price_d">￥149.00</span> </p> <p class="name" dd_name="猜你喜欢商品名称5"> <a href="#" target="_blank">davebella戴维贝拉2017夏季新款女宝连衣裙宝宝公主裙网纱裙</a> </p> </li> 
         <li> <p class="pic" dd_name="猜你喜欢商品图片6"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/1270970236-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">0条评论</span> </span> </p> <p class="price"> <span class="price_d">￥598.00</span> </p> <p class="name" dd_name="猜你喜欢商品名称6"> <a href="#" target="_blank">Haglofs火柴棍干爽舒适透气休闲短袖T恤602453</a> </p> </li> 
         <li> <p class="pic" dd_name="猜你喜欢商品图片7"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/1259789206-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">604条评论</span> </span> </p> <p class="price"> <span class="price_d">￥89.00</span> </p> <p class="name" dd_name="猜你喜欢商品名称7"> <a href="#" target="_blank">【全场满200减100】法国PELLIOT/伯希和儿童皮肤衣户外防晒透气女风衣风衣外套</a> </p> </li> 
         <li> <p class="pic" dd_name="猜你喜欢商品图片8"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/60602804-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">779条评论</span> </span> </p> <p class="price"> <span class="price_d">￥268.00</span> </p> <p class="name" dd_name="猜你喜欢商品名称8"> <a href="#" target="_blank">【当当自营】美素力/佳儿金装婴幼儿配方奶粉1段900g/桶荷兰原装进口（美素一段）</a> </p> </li> 
         <li> <p class="pic" dd_name="猜你喜欢商品图片9"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/1195216649-1_l.jpg"> </a> <span class="hover"> <span class="pinglun">0条评论</span> </span> </p> <p class="price"> <span class="price_d">￥218.00</span> </p> <p class="name" dd_name="猜你喜欢商品名称9"> <a href="#" target="_blank">aza阿札2017春夏新款女包初夏系列唯美斜挎包9950</a> </p> </li> 
        </div> 
       </ul> 
      </div> 
     </div> 
    </div> 
    <div class="mbox_another t_guanggao_br" id="cpc_tab" dd_name="热荐商品"> 
     <h3><span class="title">推广商品</span> 
      <span2 id="cpc_tab_page_count" class="num">
        1 
       <b>/2</b> 
      </span2></h3> 
     <div class="bucket"> 
      <a id="cpc_tab_btn_prev" href="#" class="btn_a prev"></a> 
      <a id="cpc_tab_btn_next" href="#" class="btn_a next"></a> 
      <div class="over"> 
       <ul> 
        <li id="seq_8"><p class="pic"><a href="#" class="pic" rel="nofollow" target="_blank"><img src="../images/dandangoods/1277468993-1_l_4.jpg"></a></p><p class="price"><span class="price_d">￥148.00</span></p><p class="name"><a rel="nofollow" href="#" target="_blank">菜根谭 洪应明 全注全译 文白对照全套6册精<br></a></p></li> 
        <li id="seq_9"><p class="pic"><a href="#" class="pic" rel="nofollow" target="_blank"><img src="../images/dandangoods/1291932025-1_l_1.jpg"></a></p><p class="price"><span class="price_d">￥128.00</span></p><p class="name"><a rel="nofollow" href="#" target="_blank">论语 国学经典 国画珍藏版<br>论语品鉴 哲学16开4册</a></p></li> 
        <li id="seq_10"><p class="pic"><a href="#" class="pic" rel="nofollow" target="_blank"><img src="../images/dandangoods/1475574375-1_l_2.jpg"></a></p><p class="price"><span class="price_d">￥88.00</span></p><p class="name"><a rel="nofollow" href="#" target="_blank">孟子荀子古线装4册(双色插<br></a></p></li> 
        <li id="seq_11"><p class="pic"><a href="#" class="pic" rel="nofollow" target="_blank"><img src="../images/dandangoods/1485357266-1_l_2.jpg"></a></p><p class="price"><span class="price_d">￥630.00</span></p><p class="name"><a rel="nofollow" href="#" target="_blank">菜根谭精注精译精评宣纸线装<br></a></p></li> 
        <li id="seq_12"><p class="pic"><a href="#" class="pic" rel="nofollow" target="_blank"><img src="../images/dandangoods/1489374542-1_l_1.jpg"></a></p><p class="price"><span class="price_d">￥98.00</span></p><p class="name"><a rel="nofollow" href="#" target="_blank">孟子荀子古线装4册(双色插<br></a></p></li> 
        <li id="seq_13"><p class="pic"><a href="#" class="pic" rel="nofollow" target="_blank"><img src="../images/dandangoods/1492157666-1_l_2.jpg"></a></p><p class="price"><span class="price_d">￥85.00</span></p><p class="name"><a rel="nofollow" href="#" target="_blank">菜根谭 线装全四册 线装国<br></a></p></li> 
        <li id="seq_14"><p class="pic"><a href="#" class="pic" rel="nofollow" target="_blank"><img src="../images/dandangoods/1149815925-1_l_1.jpg"></a></p><p class="price"><span class="price_d">￥178.00</span></p><p class="name"><a rel="nofollow" href="#" target="_blank">周易 图文珍藏版16开4卷<br>绸缎面精装 定价980元</a></p></li> 
        <li id="seq_15"><p class="pic"><a href="#" class="pic" rel="nofollow" target="_blank"><img src="../images/dandangoods/1489918128-1_l_1.jpg"></a></p><p class="price"><span class="price_d">￥62.00</span></p><p class="name"><a rel="nofollow" href="#" target="_blank">国学经典 全新函套精装16<br>开4册 中国文化/佛道/养</a></p></li> 
        <li id="seq_16"><p class="pic"><a href="#" class="pic" rel="nofollow" target="_blank"><img src="../images/dandangoods/1010996125-1_l_1.jpg"></a></p><p class="price"><span class="price_d">￥85.00</span></p><p class="name"><a rel="nofollow" href="#" target="_blank">四书五经 文白全译精装书<br>16开精装4册 语文教科书</a></p></li> 
        <li id="seq_17"><p class="pic"><a href="#" class="pic" rel="nofollow" target="_blank"><img src="../images/dandangoods/1010523125-1_l_1.jpg"></a></p><p class="price"><span class="price_d">￥89.00</span></p><p class="name"><a rel="nofollow" href="#" target="_blank">周易全书 插盒套装文白对照<br>16开精装4册 易经 易学</a></p></li> 
       </ul> 
      </div> 
     </div> 
    </div> 
   </div> 
   <div class="aside"> 
    <div class="abox" dd_name="浏览历史" ddt-area="020" id="history" style=""> 
     <h3>您的浏览历史</h3> 
     <ul class="list04"> 
      <li> <p class="pic" dd_name="您的浏览历史商品图片0"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/22765017-1_x.jpg"> </a> </p> <p class="name" dd_name="您的浏览历史商品名称0"> <a href="#" target="_blank">理想国</a> </p> <p class="price"> <span class="price_d">￥21.60</span> <span class="price_zhe"></span> </p> </li> 
      <li> <p class="pic" dd_name="您的浏览历史商品图片1"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/23681673-1_x.jpg"> </a> </p> <p class="name" dd_name="您的浏览历史商品名称1"> <a href="#" target="_blank">活出生命的意义（独家精装珍藏版）</a> </p> <p class="price"> <span class="price_d">￥31.40</span> <span class="price_zhe"></span> </p> </li> 
      <li> <p class="pic" dd_name="您的浏览历史商品图片2"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/23203528-1_x.jpg"> </a> </p> <p class="name" dd_name="您的浏览历史商品名称2"> <a href="#" target="_blank">哲学的故事（经典的哲学入门读物，让深奥的哲学立刻生动起来）</a> </p> <p class="price"> <span class="price_d">￥36.80</span> <span class="price_zhe"></span> </p> </li> 
      <li> <p class="pic" dd_name="您的浏览历史商品图片3"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/24202665-1_x.jpg"> </a> </p> <p class="name" dd_name="您的浏览历史商品名称3"> <a href="#" target="_blank">我是花木兰</a> </p> <p class="price"> <span class="price_d">￥32.00</span> <span class="price_zhe"></span> </p> </li> 
      <li> <p class="pic" dd_name="您的浏览历史商品图片4"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/24221309-1_x.jpg"> </a> </p> <p class="name" dd_name="您的浏览历史商品名称4"> <a href="#" target="_blank">恋情的终结（21次诺贝尔文学奖提名的传奇大师）（精装典藏版）</a> </p> <p class="price"> <span class="price_d">￥41.80</span> <span class="price_zhe"></span> </p> </li> 
      <li> <p class="pic" dd_name="您的浏览历史商品图片5"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/24552273-1_x_3.jpg"> </a> </p> <p class="name" dd_name="您的浏览历史商品名称5"> <a href="#" target="_blank">人工智能</a> </p> <p class="price"> <span class="price_d">￥40.40</span> <span class="price_zhe"></span> </p> </li> 
      <li> <p class="pic" dd_name="您的浏览历史商品图片6"> <a href="#" target="_blank"> <img id="largePic" src="../images/dandangoods/23176692-1_x_1.jpg"> </a> </p> <p class="name" dd_name="您的浏览历史商品名称6"> <a href="#" target="_blank">哲学原来这么有趣：颠覆传统教学的18堂哲学课(史上超有趣的哲学读本，像读故事一样读懂哲学。中国人民大学哲学教授、博士生导师李萍审订并点评！)</a> </p> <p class="price"> <span class="price_d">￥25.60</span> <span class="price_zhe"></span> </p> </li> 
     </ul> 
    </div> 
   </div> 
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