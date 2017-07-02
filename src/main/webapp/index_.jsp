<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<html>
 <head></head>
 <body>

<%
String basePath = "";
%>

  <meta charset="utf-8"> 
  <title>欢迎--小书屋</title> 
  <meta content="小书屋,心灵之旅" name="Keywords"> 
  <meta content="小书屋，心灵休憩的角落" name="Description"> 
  <base href="/bookCity/"> 
 
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