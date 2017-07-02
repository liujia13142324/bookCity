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
 
  <link href="css/css_dan1/shopping_cart_new.css" rel="stylesheet" type="text/css"> 
  <link rel="stylesheet" href="css/css_dan1/size_color.css">
 
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
 <article style="width:90%; margin:0 auto;">
 	 
  <div class="w960" id="cart"> 
   <ul class="shopping_title" id="j_carttitle"> 
    <li class="f1"><a id="j_selectall" href="javascript:void(0)" class="checknow fn-checkall check_on" dd_name="全选">选中</a>全选</li> 
    <li class="f2">商品信息</li> 
    <li class="f3">单价（元）</li> 
    <li class="f4">数量</li> 
    <li class="f4">金额（元）</li> 
    <li class="f5">操作</li> 
   </ul> 
   <div class="fn-shops" id="J_cartContent"> 
    <div class="fn-shop"> 
     <table border="0" cellspacing="0" cellpadding="0" class="shop_title"> 
      <tbody> 
       <tr> 
        <td><a href="javascript:void(0)" dd_name="选中店铺" class="checknow fn-shop-checkall check_on">选中</a></td> 
        <td><span class="shop_icon"></span></td> 
        <td><a href="http://www.dangdang.com/" target="_blank">当当自营</a></td> 
        <td></td> 
        <td></td> 
       </tr> 
      </tbody> 
     </table> 
     <div class="shopping_list"> 
      <table width="100%" border="0" cellspacing="0" cellpadding="0"> 
       <tbody data-stock="2686" data-offline="false" data-productid="23203528" data-timestamp="1494220777000" data-orderforspupormo="0"> 
        <tr id="tr_487681399" class="bb_none tree_first "> 
         <td class="row1"> <a href="javascript:void(0)" data-item="487681399" class="fn-product-check checknow check_on">选中</a> </td> 
         <td class="row_img"> <a href="http://product.dangdang.com/23203528.html" target="_blank" dd_name="查看详情"> <img onmouseout="$(this).parent().next().hide()" onmouseover="$(this).parent().next().show()" src="./shopping_files/23203528-1_m_1.jpg" width="80" height="80"> </a> 
          <div style="display: none;" class="img_big"> 
           <a href="http://product.dangdang.com/23203528.html" dd_name="查看详情" target="_blank"><img src="./shopping_files/23203528-1_b_1.jpg"></a> 
           <span class="arrow"></span> 
          </div> </td> 
         <td class="row_name"> 
          <div class="name"> 
           <a href="http://product.dangdang.com/23203528.html" title="哲学的故事（经典的哲学入门读物，让深奥的哲学立刻生动起来）" target="_blank" dd_name="查看详情" style="word-break:break-all;  word-wrap:break-word;">哲学的故事（经典的哲学入门读物，让深奥的哲学立刻生动起来）</a> 
          </div> </td> 
         <td class="row3"><span>¥36.80</span></td> 
         <td data-minbuy="0" class="fn-count-tip row3 "><span class="amount fn-updatecount " data-value="1"><a dd_name="减少数量" href="javascript:void(0)">-</a><input data-value="1" value="1" type="text"><a dd_name="增加数量" href="javascript:void(0)">+</a></span></td> 
         <td class="row4"><span class="red">¥36.80</span></td> 
         <td class="row5 "><span><a href="javascript:void(0)" data-item="487681399" class="fn-add-wish" dd_name="加入收藏按钮">移入收藏</a></span><span><a href="javascript:void(0)" data-item="487681399" class="fn-remove-product" dd_name="删除普通品">删除</a></span></td> 
        </tr> 
        <tr class=" tree_last "> 
         <td class="row1"></td> 
         <td class="row_img"><span class="tree_icon eblue">&nbsp;</span></td> 
         <td class="event_box" colspan="5"> <p class="event">购买此商品,可享促销&nbsp;&nbsp;<a href="javascript:;" class="ebtn eblue fn-toggle-gift">加价购</a></p> 
          <div class="event_list" style="display:none"> 
           <ul class="clearfix" style="undefined"> 
            <li class="fn-choose-gift " data-item="21093050_487681399_4005550_注目礼-利益最大化的博弈之道"> <a href="http://product.dangdang.com/21093050.html" class="img" target="_blank"><img src="./shopping_files/21093050-1_m.jpg" width="70" height="70"></a> 
             <div class="info fn-select-gift" data-item="0"> 
              <p class="name" title="注目礼-利益最大化的博弈之道" style="word-break:break-all;  word-wrap:break-word;">注目礼-利益最大化的博弈之道</p> 
              <p><span class="red">¥10.00</span><span class="through">¥22.40</span></p> 
             </div> </li> 
            <li class="fn-choose-gift " data-item="22508459_487681399_4005550_每个父母都是拆弹专家"> <a href="http://product.dangdang.com/22508459.html" class="img" target="_blank"><img src="./shopping_files/22508459-1_m.jpg" width="70" height="70"></a> 
             <div class="info fn-select-gift" data-item="0"> 
              <p class="name" title="每个父母都是拆弹专家" style="word-break:break-all;  word-wrap:break-word;">每个父母都是拆弹专家</p> 
              <p><span class="red">¥10.00</span><span class="through">¥27.20</span></p> 
             </div> </li> 
            <li class="fn-choose-gift " data-item="21010511_487681399_4005550_风语（2）（独家附赠电视剧剧本抢先试读本）"> <a href="http://product.dangdang.com/21010511.html" class="img" target="_blank"><img src="./shopping_files/21010511-1_m.jpg" width="70" height="70"></a> 
             <div class="info fn-select-gift" data-item="0"> 
              <p class="name" title="风语（2）（独家附赠电视剧剧本抢先试读本）" style="word-break:break-all;  word-wrap:break-word;">风语（2）（独家附赠电视剧剧本抢先试读本）</p> 
              <p><span class="red">¥10.00</span><span class="through">¥22.40</span></p> 
             </div> </li> 
            <li class="fn-choose-gift " data-item="21081709_487681399_4005550_侵华日军主要将帅的最后结局"> <a href="http://product.dangdang.com/21081709.html" class="img" target="_blank"><img src="./shopping_files/21081709-1_m.jpg" width="70" height="70"></a> 
             <div class="info fn-select-gift" data-item="0"> 
              <p class="name" title="侵华日军主要将帅的最后结局" style="word-break:break-all;  word-wrap:break-word;">侵华日军主要将帅的最后结局</p> 
              <p><span class="red">¥12.00</span><span class="through">¥33.90</span></p> 
             </div> </li> 
            <li class="fn-choose-gift " data-item="22479372_487681399_4005550_贪玩的中国人：玩出创造世界的智慧"> <a href="http://product.dangdang.com/22479372.html" class="img" target="_blank"><img src="./shopping_files/22479372-1_m.jpg" width="70" height="70"></a> 
             <div class="info fn-select-gift" data-item="0"> 
              <p class="name" title="贪玩的中国人：玩出创造世界的智慧" style="word-break:break-all;  word-wrap:break-word;">贪玩的中国人：玩出创造世界的智慧</p> 
              <p><span class="red">¥12.00</span><span class="through">¥32.30</span></p> 
             </div> </li> 
            <li class="fn-choose-gift " data-item="21102496_487681399_4005550_一辈子的活法——王蒙的人生历练"> <a href="http://product.dangdang.com/21102496.html" class="img" target="_blank"><img src="./shopping_files/21102496-1_m.jpg" width="70" height="70"></a> 
             <div class="info fn-select-gift" data-item="0"> 
              <p class="name" title="一辈子的活法——王蒙的人生历练" style="word-break:break-all;  word-wrap:break-word;">一辈子的活法——王蒙的人生历练</p> 
              <p><span class="red">¥12.00</span><span class="through">¥29.90</span></p> 
             </div> </li> 
           </ul> 
           <ul class="clearfix" style="display:none"> 
            <li class="fn-choose-gift " data-item="22879668_487681399_4005550_媲美明星3  心机美颜术 （当当网全国独家发售！亚洲超人气明星造型师、美丽俏佳人资深美容专家小P老师重磅新作！诠释完美彩妆伪整形VS无痕医美微整形，李静、小S、大S、吴佩慈鼎力推荐。让爱美的你轻松逆转时光"> <a href="http://product.dangdang.com/22879668.html" class="img" target="_blank"><img src="./shopping_files/22879668-1_m.jpg" width="70" height="70"></a> 
             <div class="info fn-select-gift" data-item="0"> 
              <p class="name" title="媲美明星3  心机美颜术 （当当网全国独家发售！亚洲超人气明星造型师、美丽俏佳人资深美容专家小P老师重磅新作！诠释完美彩妆伪整形VS无痕医美微整形，李静、小S、大S、吴佩慈鼎力推荐。让爱美的你轻松逆转时光" style="word-break:break-all;  word-wrap:break-word;">媲美明星3 心机美颜术 （当当网全国独家发售...</p> 
              <p><span class="red">¥12.00</span><span class="through">¥29.90</span></p> 
             </div> </li> 
            <li class="fn-choose-gift " data-item="22779610_487681399_4005550_汉武帝的三张面孔（精装盖章本，百家讲坛作品）首次提携中国崛起的汉武帝奠定中华两千年帝制格局，生逢国运拐点，他如何处置国运与民生？"> <a href="http://product.dangdang.com/22779610.html" class="img" target="_blank"><img src="./shopping_files/22779610-1_m.jpg" width="70" height="70"></a> 
             <div class="info fn-select-gift" data-item="0"> 
              <p class="name" title="汉武帝的三张面孔（精装盖章本，百家讲坛作品）首次提携中国崛起的汉武帝奠定中华两千年帝制格局，生逢国运拐点，他如何处置国运与民生？" style="word-break:break-all;  word-wrap:break-word;">汉武帝的三张面孔（精装盖章本，百家讲坛作品...</p> 
              <p><span class="red">¥14.00</span><span class="through">¥40.80</span></p> 
             </div> </li> 
            <li class="fn-choose-gift " data-item="23726239_487681399_4005550_来得及（何炅领衔讲述青春记忆与生命感悟 众多文艺大咖共同分享青春故事 随书附赠电影《栀子花开》定制主创明信片2张，随机获赠独家海报）"> <a href="http://product.dangdang.com/23726239.html" class="img" target="_blank"><img src="./shopping_files/23726239-1_m.jpg" width="70" height="70"></a> 
             <div class="info fn-select-gift" data-item="0"> 
              <p class="name" title="来得及（何炅领衔讲述青春记忆与生命感悟 众多文艺大咖共同分享青春故事 随书附赠电影《栀子花开》定制主创明信片2张，随机获赠独家海报）" style="word-break:break-all;  word-wrap:break-word;">来得及（何炅领衔讲述青春记忆与生命感悟 众多...</p> 
              <p><span class="red">¥14.00</span><span class="through">¥36.30</span></p> 
             </div> </li> 
            <li class="fn-choose-gift " data-item="22493132_487681399_4005550_茅台为什么这么牛"> <a href="http://product.dangdang.com/22493132.html" class="img" target="_blank"><img src="./shopping_files/22493132-1_m.jpg" width="70" height="70"></a> 
             <div class="info fn-select-gift" data-item="0"> 
              <p class="name" title="茅台为什么这么牛" style="word-break:break-all;  word-wrap:break-word;">茅台为什么这么牛</p> 
              <p><span class="red">¥14.00</span><span class="through">¥31.50</span></p> 
             </div> </li> 
            <li class="fn-choose-gift " data-item="22629840_487681399_4005550_中国海军主战舰艇图鉴"> <a href="http://product.dangdang.com/22629840.html" class="img" target="_blank"><img src="./shopping_files/22629840-1_m.jpg" width="70" height="70"></a> 
             <div class="info fn-select-gift" data-item="0"> 
              <p class="name" title="中国海军主战舰艇图鉴" style="word-break:break-all;  word-wrap:break-word;">中国海军主战舰艇图鉴</p> 
              <p><span class="red">¥29.00</span><span class="through">¥58.80</span></p> 
             </div> </li> 
            <li class="fn-choose-gift " data-item="22554583_487681399_4005550_史蒂夫·乔布斯传果粉致敬版典藏套装（当当全国独家销售，内含精装版乔布斯传1册、绿宝书：乔布斯语录1册、乔布斯肖像木刻版画1幅、镌刻乔布斯箴言“Follow Your Heart”精美钥匙扣1个、乔布斯纪念像章1枚）"> <a href="http://product.dangdang.com/22554583.html" class="img" target="_blank"><img src="./shopping_files/22554583-1_m.jpg" width="70" height="70"></a> 
             <div class="info fn-select-gift" data-item="0"> 
              <p class="name" title="史蒂夫·乔布斯传果粉致敬版典藏套装（当当全国独家销售，内含精装版乔布斯传1册、绿宝书：乔布斯语录1册、乔布斯肖像木刻版画1幅、镌刻乔布斯箴言“Follow Your Heart”精美钥匙扣1个、乔布斯纪念像章1枚）" style="word-break:break-all;  word-wrap:break-word;">史蒂夫·乔布斯传果粉致敬版典藏套装（当当全国...</p> 
              <p><span class="red">¥59.00</span><span class="through">¥156.40</span></p> 
             </div> </li> 
           </ul> 
           <div class="pages fn-pages"> 
            <a href="javascript:;" class="on">1</a> 
            <a href="javascript:;" class="undefined">2</a> 
           </div> 
          </div> </td> 
        </tr> 
       </tbody> 
       <tbody data-stock="7203" data-offline="false" data-productid="24202665" data-timestamp="1494057918000" data-orderforspupormo="0"> 
        <tr id="tr_487088555" class="  "> 
         <td class="row1"> <a href="javascript:void(0)" data-item="487088555" class="fn-product-check checknow check_on">选中</a> </td> 
         <td class="row_img"> <a href="http://product.dangdang.com/24202665.html" target="_blank" dd_name="查看详情"> <img onmouseout="$(this).parent().next().hide()" onmouseover="$(this).parent().next().show()" src="./shopping_files/24202665-1_m_7.jpg" width="80" height="80"> </a> 
          <div style="display: none;" class="img_big"> 
           <a href="http://product.dangdang.com/24202665.html" dd_name="查看详情" target="_blank"><img src="./shopping_files/24202665-1_b_7.jpg"></a> 
           <span class="arrow"></span> 
          </div> </td> 
         <td class="row_name"> 
          <div class="name"> 
           <a href="http://product.dangdang.com/24202665.html" title="我是花木兰" target="_blank" dd_name="查看详情" style="word-break:break-all;  word-wrap:break-word;">我是花木兰</a> 
          </div> </td> 
         <td class="row3"><span>¥32.00</span></td> 
         <td data-minbuy="0" class="fn-count-tip row3 "><span class="amount fn-updatecount " data-value="1"><a dd_name="减少数量" href="javascript:void(0)">-</a><input data-value="1" value="1" type="text"><a dd_name="增加数量" href="javascript:void(0)">+</a></span></td> 
         <td class="row4"><span class="red">¥32.00</span></td> 
         <td class="row5 "><span><a href="javascript:void(0)" data-item="487088555" class="fn-add-wish" dd_name="加入收藏按钮">移入收藏</a></span><span><a href="javascript:void(0)" data-item="487088555" class="fn-remove-product" dd_name="删除普通品">删除</a></span></td> 
        </tr> 
       </tbody> 
       <tbody data-productid="0" data-timestamp="1494057883000" data-orderforspupormo="0"> 
        <tr class="tree_slogan"> 
         <td class="row1">&nbsp;</td> 
         <td class="row_img"><span class="tree_icon slogan">满额减</span></td> 
         <td class="event_box" colspan="5"><p class="event"><a target="_blank" dd_name="满额减" href="http://promo.dangdang.com/4007312">青年，读书，满100减40元；满200减80元；满300减120元；满400减160元</a></p></td> 
        </tr> 
        <tr id="tr_487088404" class="bb_none tree_line "> 
         <td class="row1"> <a href="javascript:void(0)" data-item="487088404" class="fn-product-check checknow check_on">选中</a> </td> 
         <td class="row_img"> <a href="http://product.dangdang.com/24221309.html" target="_blank" dd_name="查看详情"> <img onmouseout="$(this).parent().next().hide()" onmouseover="$(this).parent().next().show()" src="./shopping_files/24221309-1_m_4.jpg" width="80" height="80"> </a> 
          <div style="display: none;" class="img_big"> 
           <a href="http://product.dangdang.com/24221309.html" dd_name="查看详情" target="_blank"><img src="./shopping_files/24221309-1_b_4.jpg"></a> 
           <span class="arrow"></span> 
          </div> </td> 
         <td class="row_name"> 
          <div class="name"> 
           <a href="http://product.dangdang.com/24221309.html" title="恋情的终结（21次诺贝尔文学奖提名的传奇大师）（精装典藏版）" target="_blank" dd_name="查看详情" style="word-break:break-all;  word-wrap:break-word;">恋情的终结（21次诺贝尔文学奖提名的传奇大师）（精装典藏版）</a> 
          </div> </td> 
         <td class="row3"><span>¥41.80</span> 
          <div class="low_price fn-up" style="display:none;">
            优惠价格 
           <em></em> 
           <div class="low_pop" style="display:none"> 
            <ul> 
             <li>· 享受满额减优惠，满100减40，满200减80，满300减120，满400减160</li> 
            </ul> 
           </div> 
          </div></td> 
         <td data-minbuy="0" class="fn-count-tip row3 "><span class="amount fn-updatecount " data-value="1"><a dd_name="减少数量" href="javascript:void(0)">-</a><input data-value="1" value="1" type="text"><a dd_name="增加数量" href="javascript:void(0)">+</a></span></td> 
         <td class="row4"><span>¥41.80</span></td> 
         <td class="row5 "><span><a href="javascript:void(0)" data-item="487088404" class="fn-add-wish" dd_name="加入收藏按钮">移入收藏</a></span><span><a href="javascript:void(0)" data-item="487088404" class="fn-remove-product" dd_name="删除普通品">删除</a></span></td> 
        </tr> 
       
       </tbody> 
       <tfoot> 
        <tr class="total"> 
         <td class="row1">&nbsp;</td> 
         <td class="row_img">店铺合计</td> 
         <td colspan="2">&nbsp;</td> 
         <td colspan="3" class="row4"><span class="red big ooline alignright">¥110.60</span></td> 
        </tr> 
       </tfoot> 
      </table> 
     </div> 
     <div class="shipping_add" style="display:none;"></div> 
    </div> 
   </div> 
   <div class="shoppingcart_loading" id="J_cartLoading" style="display: none;"> 
    <img height="30" width="30" src="./shopping_files/loading.gif"> 
   </div> 
  </div>
   <div class="shopping_total" id="J_totalMoneyBlock"> 
   <div class="shopping_total_right"> 
    <a class="total_btn fn-checkout" href="javascript:;" id="checkout_btn" dd_name="结算">结&nbsp;&nbsp;算</a> 
    <div class="subtotal"> 
     <p><span class="cartsum">总计(不含运费)：</span><span id="payAmount" class="price">¥110.60</span></p> 
     <p><span class="cartsum">已节省：</span><span id="totalFavor">¥0.00</span></p> 
    </div> 
    <div class="pop_del pop_ebook fn-ck" id="ck_tip" style="display:none"> 
     <h1>电子书重复购买提示</h1> 
     <p></p> 
     <a id="ck_link" href="http://shopping.dangdang.com/shoppingcart/shopping_cart.aspx#" class="pop_btn">朕知道了</a> 
    </div> 
   </div> 
   <div class="shopping_total_left" id="J_leftBar"> 
    <a id="j_selectall2" href="javascript:void(0)" class="checknow fn-checkall check_on" dd_name="全选">选中</a>全选 
    <a id="j_removeproducts" href="javascript:void(0)" class="fn-batch-remove" dd_name="批量删除按钮">批量删除</a> 
    <span>已选择<font color="red">3</font>件商品</span> 
    <div id="J_batchRemoveProductBox" style="display: none;z-index:-1;left:0px;" class="pop_del"> 
     <p>您确定要批量删除商品吗？</p> 
     <a href="javascript:;" class="pop_btn fn-confirm-batchremovebox">确定</a> 
     <a href="javascript:;" class="pop_btn fn-close-batchremovebox">取消</a> 
    </div> 
    <div id="J_batchAddWishBox" style="display: none;z-index:-1;left:85px;" class="pop_del col "> 
     <p>您确定要批量移入收藏吗？</p> 
     <a href="javascript:;" class="pop_btn fn-confirm-batchaddwish">确定</a> 
     <a href="javascript:;" class="pop_btn fn-close-batchwishbox">取消</a> 
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