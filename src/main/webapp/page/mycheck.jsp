<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>欢迎--小书屋</title>
  <link href="../css/css_dan/my_account.css" rel="stylesheet" type="text/css"> 
  <link href="../css/css_dan/mydd_public.css" rel="stylesheet" type="text/css"> 
  <link href="../css/css_dan/mydnew2.css" rel="stylesheet" type="text/css"> 
  <link href="../css/css_dan/reco_wrap.css" rel="stylesheet" type="text/css"> 
  <link href="../css/css_dan/mydd_head.css" rel="stylesheet" type="text/css"> 
  <link href="../css/css_dan/mydd_public(1).css" rel="stylesheet" type="text/css"> 
  <link href="../css/css_dan/mydd_title.css" rel="stylesheet" type="text/css"> 
  <link href="../css/css_dan/mydd_leftnavi.css" rel="stylesheet" type="text/css"> 
  <link href="../css/css_dan/mydd_foot.css" rel="stylesheet" type="text/css"> 
  <link href="../css/css_dan/header_960_150803.css" rel="stylesheet" type="text/css"> 
  <link href="../css/css_dan/mydnew2(1).css" rel="stylesheet" type="text/css"> 
  <link href="../css/css_dan/dangdang.css" rel="stylesheet" type="text/css"> 
  <link href="../css/css_dan/mydnew.css" rel="stylesheet" type="text/css"> 
  <link type="text/css" rel="stylesheet" href="../css/css_dan/mydang.css"> 
  <link href="../css/css_dan/footer_150526.css" rel="stylesheet" type="text/css">
  <style type="text/css">
     /*设置弹出效果*/
.new_window{width:337px; border:solid 2px #447aa9; background-color:#f7fff8}
.wind_top{height:20px; padding:2px 2px 0 8px; background-color:#458bc9}
.wind_top .title_left{padding-top:2px; color:#fff; float:left}
.w_close{ float:right}



   </style> 
  <style>
        .foot_tip_ad { width:40px; height:40px; font:12px/40px "simsun"; text-align:center; color:#fff; background-color:#474747; position:fixed; right:0; bottom:10px;_position:absolute; _bottom:auto;_top:expression(eval(document.documentElement.scrollTop+document.documentElement.clientHeight-this.offsetHeight-(parseInt(this.currentStyle.marginTop,10)||0)-(parseInt(this.currentStyle.marginBottom,10)||0)));}
    </style>
 </head>
 <body>
  <div id="main_frame"> 
   <!-- leftmenu --> 
   <div class="mydang_left"> 
    <div class="mydang_left_inner"> 
     <h3 class="mydang_left_title border_top0">我的常用链接<a id="DocPersonal_set" name="setting" href="javascript:showDocSetPage()" style="font-size: 12px; color:#1A66B3;
                                                                           font-family: 宋体; font-weight:normal; padding-left: 40px;">设置</a></h3> 
     <ul style="padding:0px;" class="my_href" id="myfavoriteLink"> 
      <input type="hidden" id="rememberCustomerID" value="0"> 
     </ul> 
     <h3 class="mydang_left_title">我的交易<a class="slide_up" id="class600" href="javascript:void(click_a('class600','display600'))"></a></h3> 
     <ul class="my_content" style="display:block;" id="display600"> 
      <li><a class="" target="_parent" href="http://myhome.dangdang.com/myOrder" name="myallorders">我的订单</a> </li> 
      <li><a class="" target="_parent" href="http://e.dangdang.com/ebook/listUserEbooks.do" name="myebook">电子书</a> </li> 
      <li><a href="http://newaccount.dangdang.com/payhistory/mypaymenthistory.aspx" class="on">我的账单</a> </li> 
     </ul> 
     <h3 class="mydang_left_title">我的拍卖<a class="slide_up" id="class605" href="javascript:void(click_a('class605','display605'))"></a></h3> 
     <ul class="my_content" style="display:block;" id="display605"> 
      <li><a class="" target="_parent" href="http://myhome.dangdang.com/myAuction" name="myAuction">参拍/获拍</a> </li> 
      <li><a class="" target="_parent" href="http://myhome.dangdang.com/myMargin" name="myMargin">我的保证金</a> </li> 
     </ul> 
     <h3 class="mydang_left_title">我的收藏<a class="slide_up" id="class610" href="javascript:void(click_a('class610','display610'))"></a></h3> 
     <ul class="my_content" style="display:block;" id="display610"> 
      <li><a class="" target="_parent" href="http://wish.dangdang.com/wishlist/cust_wish_list.php" name="wishlist">商品收藏</a> </li> 
      <li><a class="" target="_parent" href="http://wish.dangdang.com/collectshop/collect_list.php" name="collectlist">店铺收藏</a> </li> 
     </ul> 
     <h3 class="mydang_left_title">我的钱包<a class="slide_up" id="class620" href="javascript:void(click_a('class620','display620'))"></a></h3> 
     <ul class="my_content" style="display:block;" id="display620"> 
      <li><a class="" target="_parent" href="http://newaccount.dangdang.com/payhistory/mymoney.aspx" name="mymoneys">我的礼品卡</a> </li> 
      <li><a class="" target="_parent" href="http://newaccount.dangdang.com/payhistory/mycoupon.aspx" name="mycoupons">我的礼券</a> </li> 
      <li><a class="" target="_parent" href="http://newaccount.dangdang.com/payhistory/mybalance.aspx" name="mybalance">我的余额</a> </li> 
      <li><a class="" target="_parent" href="http://point.dangdang.com/index.html" name="points_index_list">我的积分</a> </li> 
     </ul> 
     <h3 class="mydang_left_title">售后服务<a class="slide_up" id="class630" href="javascript:void(click_a('class630','display630'))"></a></h3> 
     <ul class="my_content" style="display:block;" id="display630"> 
      <li><a class="" target="_parent" href="http://return.dangdang.com/reverseapplystart.aspx" name="re_list">申请/查询退换货</a> </li> 
      <li><a class="" target="_parent" href="http://order.dangdang.com/InvoiceApply/InvoiceOnlineReissue.aspx" name="myinvoice">补开/合并发票</a> </li> 
     </ul> 
     <h3 class="mydang_left_title">个人中心<a class="slide_up" id="class640" href="javascript:void(click_a('class640','display640'))"></a></h3> 
     <ul class="my_content" style="display:block;" id="display640"> 
      <li><a class="" target="_parent" href="http://info.safe.dangdang.com/Myarchives.php" name="profileleft">个人信息</a> </li> 
      <li><a class="" target="_parent" href="http://safe.dangdang.com/" name="safe_center">安全中心</a> </li> 
      <li><a class="" target="_parent" href="http://myaddress.dangdang.com/myaddress.php" name="myaddress">收货地址</a> </li> 
      <li><a class="" target="_parent" href="http://myaddress.dangdang.com/onekey_buy/info.php" name="onekeybuy">一键购买地址</a> </li> 
      <li><a class="" target="_parent" href="http://customer.dangdang.com/message/email_sub.php" name="myfeed">邮件/短信订阅</a> </li> 
     </ul> 
     <h3 class="mydang_left_title">社区<a class="slide_up" id="class650" href="javascript:void(click_a('class650','display650'))"></a></h3> 
     <ul class="my_content" style="display:block;" id="display650"> 
      <li><a class="" target="_parent" href="http://comment.dangdang.com/comment" name="myreview">评论/晒单</a> </li> 
      <li><a class="" target="_parent" href="http://comm.dangdang.com/question/myquestion.php" name="myquestion">提问/回答</a> </li> 
      <li><a class="" target="_parent" href="http://comm.dangdang.com/interesting/interesting.php" name="myinteresting">好友关注</a> </li> 
      <li><a class="" target="_parent" href="http://comm.dangdang.com/bookshelf/mybookshelf.php" name="mybookmark">我的书架</a> </li> 
      <li><a class="" target="_parent" href="http://comm.dangdang.com/message/message.php" name="mymessage">我的留言板</a> </li> 
     </ul> 
     <script type="text/javascript">
function addScriptTag(src){
     var script = document.createElement('script');
     script.setAttribute('type','text/javascript');
     script.src = src;
     document.body.appendChild(script);
}

function getunreadmessagecount(){

var customer_id = getCookie_ones('customerid','dang');
        var perm_id = getCookie_ones('__permanent_id','');
        var message_url = 'http://message.dangdang.com/api/msg_count_api.php?customer_id='+customer_id+'&perm_id='+perm_id+'&data_type=jsonp&callback=message_result';
 addScriptTag(message_url);     
  
}
function message_result(data) {

    if(data['errorCode']=='200'){
        var jytx_num = data['data']['1'];
        var zhtx_num = data['data']['2'];
        var sqxx_num = data['data']['3'];
        var fwtz_num = data['data']['4'];
        var scjtx_num = data['data']['5'];
        if(parseInt(jytx_num)>=100){jytx_num = '99+';}
        if(parseInt(zhtx_num)>=100){zhtx_num = '99+';}
        if(parseInt(sqxx_num)>=100){sqxx_num = '99+';}
        if(parseInt(fwtz_num)>=100){fwtz_num = '99+';}
        if(parseInt(scjtx_num)>=100){scjtx_num = '99+';}
        var znx_sum = parseInt(jytx_num)+parseInt(zhtx_num)+parseInt(sqxx_num)+parseInt(fwtz_num)+parseInt(scjtx_num);

        if(znx_sum>=100){znx_sum = '99+';}
            var obj = document.getElementById('leftmenumymsgcount');
            obj.innerHTML = '（'+znx_sum+'）';

            }

}
function getCookie_ones(name,type){
  var cookies=document.cookie.split(';')  ;
  var temp ;
  var find_name;
  if(type=='dangdang' || type=='ddoy'|| type=='login'){
    if(type == 'dangdang'){find_name = 'dangdang.com=';}
    if(type == 'ddoy'){find_name = 'ddoy=';}
    if(type == 'login'){find_name = 'login.dangdang.com=';}
    var dangdangcookie='';
     for(i=0;i<cookies.length;i++){
        if(cookies[i].indexOf(find_name)>-1){
            dangdangcookie=cookies[i].split('&');
            for(x=0;x<dangdangcookie.length;x++){
                 temp = dangdangcookie[x].split('=')  ;
                 if(header_trims(temp[0])==name){
                     return unescape(temp[1])
                 }
            }
        }
     }
  }else if(type=='login_comm'){
      for(j=0;j<cookies.length;j++){
          if(cookies[j].indexOf('login.dangdang.com=')>0){
              dangdangcookie=cookies[j].split('.ASPXAUTH=');
              return dangdangcookie[1];
          }
      }
  }else if(type=='dang'){
      for(j=0;j<cookies.length;j++){
          if(cookies[j].indexOf('dangdang.com=')==1){
              dangdangcookie=cookies[j].split('customerid=');
              temp = dangdangcookie[1].split('&');
              return temp[0];
          }
      }
  }else{
       for(i=0;i<cookies.length;i++){
        if(cookies[i].indexOf('dangdang.com=')<0){
            temp = cookies[i].split('=')  ;
             if(header_trims(temp[0])==name){
                 return unescape(temp[1]);
             }
        }
      }
  }
  return '';
}
function header_trims(str)
{
 return str.replace(/(\s*$)|(^\s*)/g, '');
}

window.onload=function (){
    doc_prev_referer = ddclick_page_tracker .__dd_referrer;
    doc_referer = ddclick_page_tracker .__dd_url;
    //getunreadmessagecount();
};


</script> 
    </div> 
   </div> 
   <link type="text/css" rel="stylesheet" href="../css/css_dan/mydang.css"> 
   <style type="text/css">
     /*设置弹出效果*/
.new_window{width:337px; border:solid 2px #447aa9; background-color:#f7fff8}
.wind_top{height:20px; padding:2px 2px 0 8px; background-color:#458bc9}
.wind_top .title_left{padding-top:2px; color:#fff; float:left}
.w_close{ float:right}



   </style> 
   <script type="text/javascript">

var StringBuilder = function(){
    this.cache = [];
    if(arguments.length)this.append.apply(this,arguments);
}
StringBuilder.prototype = {
    prepend:function(){
        this.cache.splice.apply(this.cache,[].concat.apply([0,0],arguments));
        return this;
    },
    append:function(){
        this.cache = this.cache.concat.apply(this.cache,arguments);
        return this;
    },
    toString:function(){
        return this.getString();
    },
    getString:function(){
        return this.cache.join('');
    }
}


//个性化设置弹出
function doc_show_window(survey_url)
{
    var sb = new StringBuilder('<div id="e1" style="width:336px; border:solid 2px #447aa9; background-color:#f7fff8;">');
    var sb = new StringBuilder('<div id="e1" class="new_window">');
    sb.append('<div id="handle" class="wind_top">');
    sb.append('<div  class="title_left">用户常用链接设置<\/div>');
    sb.append('<div class="w_close"><a href=javascript:hidden1();><img src="http://my.dangdang.com\/myhome\/images\/windo_close.gif" title="关闭窗口"\/><\/a><\/div>');

    sb.append('<\/div>');

     sb.append('<iframe   src="',survey_url,'" style="background-color:#f7fff8;width:336px;height:800px;" frameborder="0" scrolling="no" name="survey_frame" id="survey_frame" ></iframe>');
     sb.append('<\/div>');
    return sb.getString();
}


function IsIE(){
		return ( navigator.appName=="Microsoft Internet Explorer" );
}

function IsNav(){
	return ( navigator.appName=="Netscape" );
}

var survey_url="http://my.dangdang.com/myhome/DocPersonalMenu.aspx";

function showDocSetPage()
{
   var lin =  document.getElementById("tag_box1");

           lin.innerHTML = doc_show_window(survey_url);

            new dragObject(lin, "handle", null, null, null, null, null, false);
             var pos = getPosition(document.getElementById("DocPersonal_set"));
             lin.style.left= pos.x +80 + "px";
             lin.style.top = pos.y -10 + "px";

            lin.style.display="block";

}


function windowMoveToCenterfororderlistsurvey()
{
    var lin =  document.getElementById("tag_box1");
    if(document.documentElement)
    {
        if(document.documentElement.clientWidth > 320)
        {
            lin.style.left= ((document.documentElement.clientWidth-320)/2 + document.documentElement.scrollLeft)  + "px";
        }
        else
        {
            lin.style.left= "10px";
        }

        if(document.documentElement.clientHeight > 200)
        {
            var xh = (document.documentElement.clientHeight-200)/2 + document.documentElement.scrollTop ;
            lin.style.top=((document.documentElement.clientHeight-200)/2 )  + "px";
        }
        else
        {
            lin.style.top= "10px";
        }
    }

    m_is_windowMoveToCenter = true;
}


function hidden1()
{
    var lin =  document.getElementById("tag_box1");
    if(lin)lin.style.display="none";
}

function NormalBind(str)
{
 document.getElementById("myfavoriteLink").innerHTML=str;
}

function GetCustid()
{
 return  document.getElementById("rememberCustomerID").value;
}

/////////////////////////


function Position(x, y)
{
  this.X = x;
  this.Y = y;

  this.Add = function(val)
  {
    var newPos = new Position(this.X, this.Y);
    if(val != null)
    {
      if(!isNaN(val.X))
        newPos.X += val.X;
      if(!isNaN(val.Y))
        newPos.Y += val.Y
    }
    return newPos;
  }

  this.Subtract = function(val)
  {
    var newPos = new Position(this.X, this.Y);
    if(val != null)
    {
      if(!isNaN(val.X))
        newPos.X -= val.X;
      if(!isNaN(val.Y))
        newPos.Y -= val.Y
    }
    return newPos;
  }

  this.Min = function(val)
  {
    var newPos = new Position(this.X, this.Y)
    if(val == null)
      return newPos;

    if(!isNaN(val.X) && this.X > val.X)
      newPos.X = val.X;
    if(!isNaN(val.Y) && this.Y > val.Y)
      newPos.Y = val.Y;

    return newPos;
  }

  this.Max = function(val)
  {
    var newPos = new Position(this.X, this.Y)
    if(val == null)
      return newPos;

    if(!isNaN(val.X) && this.X < val.X)
      newPos.X = val.X;
    if(!isNaN(val.Y) && this.Y < val.Y)
      newPos.Y = val.Y;

    return newPos;
  }

  this.Bound = function(lower, upper)
  {
    var newPos = this.Max(lower);
    return newPos.Min(upper);
  }

  this.Check = function()
  {
    var newPos = new Position(this.X, this.Y);
    if(isNaN(newPos.X))
      newPos.X = 0;
    if(isNaN(newPos.Y))
      newPos.Y = 0;
    return newPos;
  }

  this.Apply = function(element)
  {
    if(typeof(element) == "string")
      element = document.getElementById(element);
    if(element == null)
      return;
    if(!isNaN(this.X))
      element.style.left = this.X + 'px';
    if(!isNaN(this.Y))
      element.style.top = this.Y + 'px';
  }
}

function hookEvent(element, eventName, callback)
{
  if(typeof(element) == "string")
    element = document.getElementById(element);
  if(element == null)
    return;
  if(element.addEventListener)
  {
    element.addEventListener(eventName, callback, false);
  }
  else if(element.attachEvent)
    element.attachEvent("on" + eventName, callback);
}

function unhookEvent(element, eventName, callback)
{
  if(typeof(element) == "string")
    element = document.getElementById(element);
  if(element == null)
    return;
  if(element.removeEventListener)
    element.removeEventListener(eventName, callback, false);
  else if(element.detachEvent)
    element.detachEvent("on" + eventName, callback);
}

function cancelEvent(e)
{
  e = e ? e : window.event;
  if(e.stopPropagation)
    e.stopPropagation();
  if(e.preventDefault)
    e.preventDefault();
  e.cancelBubble = true;
  e.cancel = true;
  e.returnValue = false;
  return false;
}

function getEventTarget(e)
{
  e = e ? e : window.event;
  return e.target ? e.target : e.srcElement;
}

function absoluteCursorPostion(eventObj)
{
  eventObj = eventObj ? eventObj : window.event;

  if(isNaN(window.scrollX))
    return new Position(eventObj.clientX + document.documentElement.scrollLeft + document.body.scrollLeft,
      eventObj.clientY + document.documentElement.scrollTop + document.body.scrollTop);
  else
    return new Position(eventObj.clientX + window.scrollX, eventObj.clientY + window.scrollY);
}

function dragObject(element, attachElement, lowerBound, upperBound, startCallback, moveCallback, endCallback, attachLater)
{
  if(typeof(element) == "string")
    element = document.getElementById(element);
  if(element == null)
      return;

  if(lowerBound != null && upperBound != null)
  {
    var temp = lowerBound.Min(upperBound);
    upperBound = lowerBound.Max(upperBound);
    lowerBound = temp;
  }

  var cursorStartPos = null;
  var elementStartPos = null;
  var dragging = false;
  var listening = false;
  var disposed = false;

  function dragStart(eventObj)
  {
    if(dragging || !listening || disposed) return;
    dragging = true;

    if(startCallback != null)
      startCallback(eventObj, element);

    cursorStartPos = absoluteCursorPostion(eventObj);

    elementStartPos = new Position(parseInt(element.style.left), parseInt(element.style.top));

    elementStartPos = elementStartPos.Check();

    hookEvent(document, "mousemove", dragGo);
    hookEvent(document, "mouseup", dragStopHook);

    return cancelEvent(eventObj);
  }

  function dragGo(eventObj)
  {
    if(!dragging || disposed) return;

    var newPos = absoluteCursorPostion(eventObj);
    newPos = newPos.Add(elementStartPos).Subtract(cursorStartPos);

    newPos = newPos.Bound(lowerBound, upperBound)
    newPos.Apply(element);
    if(moveCallback != null)
      moveCallback(newPos, element, eventObj);

    return cancelEvent(eventObj);
  }

  function dragStopHook(eventObj)
  {
    dragStop();
    return cancelEvent(eventObj);
  }

  function dragStop()
  {
    if(!dragging || disposed) return;
    unhookEvent(document, "mousemove", dragGo);
    unhookEvent(document, "mouseup", dragStopHook);
    cursorStartPos = null;
    elementStartPos = null;
    if(endCallback != null)
      endCallback(element);
    dragging = false;
  }

  this.Dispose = function()
  {
    if(disposed) return;
    this.StopListening(true);
    element = null;
    attachElement = null
    lowerBound = null;
    upperBound = null;
    startCallback = null;
    moveCallback = null
    endCallback = null;
    disposed = true;
  }

  this.StartListening = function()
  {
    if(listening || disposed) return;
    listening = true;
    hookEvent(attachElement, "mousedown", dragStart);
  }

  this.StopListening = function(stopCurrentDragging)
  {
    if(!listening || disposed) return;
    unhookEvent(attachElement, "mousedown", dragStart);
    listening = false;

    if(stopCurrentDragging && dragging)
      dragStop();
  }

  this.IsDragging = function(){ return dragging; }
  this.IsListening = function() { return listening; }
  this.IsDisposed = function() { return disposed; }

  if(typeof(attachElement) == "string")
    attachElement = document.getElementById(attachElement);
  if(attachElement == null)
    attachElement = element;

  if(!attachLater)
    this.StartListening();
}


function getPosition(o){

	var nLt=0;
	var nTp=0;
	var offsetParent = o;

	while (offsetParent!=null && offsetParent!=document.body) {

			nLt+=offsetParent.offsetLeft;
			nTp+=offsetParent.offsetTop;

	if(!IsNav()){
		parseInt(offsetParent.currentStyle.borderLeftWidth)>0?nLt+=parseInt(offsetParent.currentStyle.borderLeftWidth):"";
		parseInt(offsetParent.currentStyle.borderTopWidth)>0?nTp+=parseInt(offsetParent.currentStyle.borderTopWidth):"";
		}
	offsetParent=offsetParent.offsetParent;
	}

	return {x:nLt, y:nTp};
}




   </script> 
   <script language="javascript" type="text/javascript">
        /***
        *功能：隐藏和显示div
        *参数divDisplay：html标签id
        ***/
        function click_a(changecss,divDisplay)
        {

            if(document.getElementById(divDisplay).style.display != "block")
            {
   document.getElementById(changecss).className  = "slide_up";
                document.getElementById(divDisplay).style.display = "block";
            }
            else
            {

                document.getElementById(divDisplay).style.display = "none";
                   document.getElementById(changecss).className  = "slide_down";
            }
        }
    </script> 
   <div id="tag_box1" style="display:none;position:absolute; z-index:20000;"></div> 
   <div id="callbackjs"> 
    <script src="../css/css_dan/DocCallBackJs.aspx" type="text/javascript"></script> 
   </div> 
   <script type="text/javascript" language="javascript">
  document.domain = "dangdang.com";
 </script> 
   <div class="account_right" id="account_right"> 
    <div id="list"> 
     <h2>订单支付历史</h2> 
     <div class="account_right_zhifulishi">
       只提供非货到付款的订单支付历史。 
     </div> 
     <div class="clear"></div> 
     <div class="order_list no_history">
       您没有任何支付历史。 
     </div> 
     <div class="mydangdang_notice"> 
      <p> 请注意：<br> ·自2009年1月1日起开始记录。 <br> ·本服务只提供非货到付款的订单支付历史。<br> ·银行转账的到款时间一般为办理转帐手续之后的1-3个工作日内。</p> 
     </div> 
     <div class="empty_box"></div> 
    </div> 
    <div id="fp_ads" class="narrow_page"> 
     <div class="reco_wrap"> 
      <div id="fp_ads_tab" class="tab"> 
       <span><p id="fp_title">24小时特惠</p></span> 
      </div> 
      <div class="recommend" id="fp"> 
       <div class="pages">
         第 
        <i id="orange" class="orange">1</i>页（共 
        <span>3</span>页） 
       </div> 
       <div class="over"> 
        <ul id="fp_list_ul" style="left: 0px;"> 
         <li><a href="images/dandanmycheck/60640779.html#ddclick_area_flash_products" class="pic" rel="nofollow" target="_blank" title="限时抢 Guangbo广博 GBR0664 十本装软抄笔记本"><img src="../css/css_dan/60640779-1_l.jpg"></a><a class="name" rel="nofollow" href="../images/dandanmycheck/60640779.html#ddclick_area_flash_products" title="限时抢 Guangbo广博 GBR0664 十本装软抄笔记本" target="_blank">限时抢 Guangbo广博 GBR0664 十本装软抄笔记本</a><p class="price_p"><span class="d_price">??17.50</span><i class="m_price">??45.00</i></p><p class=""><span class="starlevel s4.75"></span><a class="" target="_blank" href="../images/dandanmycheck/60640779.html#comment">21</a>条评论</p></li> 
         <li><a href="images/dandanmycheck/24185729.html#ddclick_area_flash_products" class="pic" rel="nofollow" target="_blank" title="看得见的中国史 套装共14册"><img src="../css/css_dan/24185729-1_l.jpg"></a><a class="name" rel="nofollow" href="../images/dandanmycheck/24185729.html#ddclick_area_flash_products" title="看得见的中国史 套装共14册" target="_blank">看得见的中国史 套装共14册</a><p class="price_p"><span class="d_price">??234.80</span><i class="m_price">??361.20</i></p><p class=""><span class="starlevel s4.87"></span><a class="" target="_blank" href="../images/dandanmycheck/24185729.html#comment">776</a>条评论</p></li> 
         <li><a href="images/dandanmycheck/9319968.html#ddclick_area_flash_products" class="pic" rel="nofollow" target="_blank" title="小熊宝宝绘本（全15册）"><img src="../css/css_dan/9319968-1_l.jpg"></a><a class="name" rel="nofollow" href="../images/dandanmycheck/9319968.html#ddclick_area_flash_products" title="小熊宝宝绘本（全15册）" target="_blank">小熊宝宝绘本（全15册）</a><p class="price_p"><span class="d_price">??59.20</span><i class="m_price">??75.00</i></p><p class=""><span class="starlevel s4.85"></span><a class="" target="_blank" href="../images/dandanmycheck/9319968.html#comment">424174</a>条评论</p></li> 
         <li><a href="images/dandanmycheck/23719626.html#ddclick_area_flash_products" class="pic" rel="nofollow" target="_blank" title="货币战争文集"><img src="../css/css_dan/23719626-1_l.jpg"></a><a class="name" rel="nofollow" href="../images/dandanmycheck/23719626.html#ddclick_area_flash_products" title="货币战争文集" target="_blank">货币战争文集</a><p class="price_p"><span class="d_price">??240.60</span><i class="m_price">??350.00</i></p><p class=""><span class="starlevel s5"></span><a class="" target="_blank" href="../images/dandanmycheck/23719626.html#comment">1775</a>条评论</p></li> 
         <li><a href="images/dandanmycheck/23836594.html#ddclick_area_flash_products" class="pic" rel="nofollow" target="_blank" title="十万个为什么 七彩生活 第八辑 套装共15册 小学生必备 彩色图文版"><img src="../css/css_dan/23836594-1_l.jpg"></a><a class="name" rel="nofollow" href="../images/dandanmycheck/23836594.html#ddclick_area_flash_products" title="十万个为什么 七彩生活 第八辑 套装共15册 小学生必备 彩色图文版" target="_blank">十万个为什么 七彩生活 第八辑 套装共15册 小学生必备 彩色图文版</a><p class="price_p"><span class="d_price">??129.60</span><i class="m_price">??447.00</i></p><p class=""><span class="starlevel s5"></span><a class="" target="_blank" href="../images/dandanmycheck/23836594.html#comment">30</a>条评论</p></li> 
         <li><a href="images/dandanmycheck/24134991.html#ddclick_area_flash_products" class="pic" rel="nofollow" target="_blank" title="此刻花开（一本精美绝伦的手工纸雕书）"><img src="../css/css_dan/24134991-1_l.jpg"></a><a class="name" rel="nofollow" href="../images/dandanmycheck/24134991.html#ddclick_area_flash_products" title="此刻花开（一本精美绝伦的手工纸雕书）" target="_blank">此刻花开（一本精美绝伦的手工纸雕书）</a><p class="price_p"><span class="d_price">??34.00</span><i class="m_price">??68.00</i></p><p class=""><span class="starlevel s4.98"></span><a class="" target="_blank" href="../images/dandanmycheck/24134991.html#comment">17351</a>条评论</p></li> 
         <li><a href="images/dandanmycheck/25062150.html#ddclick_area_flash_products" class="pic" rel="nofollow" target="_blank" title="简·海恩斯：写意水彩+水彩光色瞬间"><img src="../css/css_dan/25062150-1_l.jpg"></a><a class="name" rel="nofollow" href="../images/dandanmycheck/25062150.html#ddclick_area_flash_products" title="简·海恩斯：写意水彩+水彩光色瞬间" target="_blank">简·海恩斯：写意水彩+水彩光色瞬间</a><p class="price_p"><span class="d_price">??93.60</span><i class="m_price">??156.00</i></p><p class=""><span class="starlevel s5"></span><a class="" target="_blank" href="../images/dandanmycheck/25062150.html#comment">0</a>条评论</p></li> 
         <li><a href="images/dandanmycheck/60611020.html#ddclick_area_flash_products" class="pic" rel="nofollow" target="_blank" title="【自营】美的微波炉"><img src="../css/css_dan/60611020-1_l.jpg"></a><a class="name" rel="nofollow" href="../images/dandanmycheck/60611020.html#ddclick_area_flash_products" title="【自营】美的微波炉" target="_blank">【自营】美的微波炉</a><p class="price_p"><span class="d_price">??299.00</span><i class="m_price">??359.00</i></p><p class=""><span class="starlevel s5"></span><a class="" target="_blank" href="../images/dandanmycheck/60611020.html#comment">3623</a>条评论</p></li> 
         <li><a href="images/dandanmycheck/60638139.html#ddclick_area_flash_products" class="pic" rel="nofollow" target="_blank" title="【自营】美的电饭煲"><img src="../css/css_dan/60638139-1_l.jpg"></a><a class="name" rel="nofollow" href="../images/dandanmycheck/60638139.html#ddclick_area_flash_products" title="【自营】美的电饭煲" target="_blank">【自营】美的电饭煲</a><p class="price_p"><span class="d_price">??299.00</span><i class="m_price">??599.00</i></p><p class=""><span class="starlevel s5"></span><a class="" target="_blank" href="../images/dandanmycheck/60638139.html#comment">143</a>条评论</p></li> 
         <li><a href="images/dandanmycheck/60641647.html#ddclick_area_flash_products" class="pic" rel="nofollow" target="_blank" title="限时抢 可水洗印花夏凉被"><img src="../css/css_dan/60641647-1_l.jpg"></a><a class="name" rel="nofollow" href="../images/dandanmycheck/60641647.html#ddclick_area_flash_products" title="限时抢 可水洗印花夏凉被" target="_blank">限时抢 可水洗印花夏凉被</a><p class="price_p"><span class="d_price">??29.00</span><i class="m_price">??159.00</i></p><p class=""><span class="starlevel s5"></span><a class="" target="_blank" href="../images/dandanmycheck/60641647.html#comment">38</a>条评论</p></li> 
         <li><a href="images/dandanmycheck/1037969808.html#ddclick_area_flash_products" class="pic" rel="nofollow" target="_blank" title="YooCar 汽车方向盘套 车用把套 四季方向盘套"><img src="../css/css_dan/1037969808-1_l.jpg"></a><a class="name" rel="nofollow" href="../images/dandanmycheck/1037969808.html#ddclick_area_flash_products" title="YooCar 汽车方向盘套 车用把套 四季方向盘套" target="_blank">YooCar 汽车方向盘套 车用把套 四季方向盘套</a><p class="price_p"><span class="d_price">??38.00</span><i class="m_price">??90.00</i></p><p class=""><span class="starlevel s4.92"></span><a class="" target="_blank" href="../images/dandanmycheck/1037969808.html#comment">78</a>条评论</p></li> 
         <li><a href="images/dandanmycheck/1053709160.html#ddclick_area_flash_products" class="pic" rel="nofollow" target="_blank" title="兰祺全棉夏凉被"><img src="../css/css_dan/1053709160-1_l.jpg"></a><a class="name" rel="nofollow" href="../images/dandanmycheck/1053709160.html#ddclick_area_flash_products" title="兰祺全棉夏凉被" target="_blank">兰祺全棉夏凉被</a><p class="price_p"><span class="d_price">??98.00</span><i class="m_price">??688.00</i></p><p class=""><span class="starlevel s5"></span><a class="" target="_blank" href="../images/dandanmycheck/1053709160.html#comment">6</a>条评论</p></li> 
         <li><a href="images/dandanmycheck/1083888260.html#ddclick_area_flash_products" class="pic" rel="nofollow" target="_blank" title="camel骆驼凉鞋 夏季男士沙滩凉鞋"><img src="../css/css_dan/1083888260-1_l.jpg"></a><a class="name" rel="nofollow" href="../images/dandanmycheck/1083888260.html#ddclick_area_flash_products" title="camel骆驼凉鞋 夏季男士沙滩凉鞋" target="_blank">camel骆驼凉鞋 夏季男士沙滩凉鞋</a><p class="price_p"><span class="d_price">??289.00</span><i class="m_price">??1698.00</i></p><p class=""><span class="starlevel s5"></span><a class="" target="_blank" href="../images/dandanmycheck/1083888260.html#comment">0</a>条评论</p></li> 
         <li><a href="images/dandanmycheck/1098306248.html#ddclick_area_flash_products" class="pic" rel="nofollow" target="_blank" title="杰克琼斯春秋男士时尚潮流修身水洗磨白牛仔裤 32-5-3-216132026160"><img src="../css/css_dan/1098306248-1_l.jpg"></a><a class="name" rel="nofollow" href="../images/dandanmycheck/1098306248.html#ddclick_area_flash_products" title="杰克琼斯春秋男士时尚潮流修身水洗磨白牛仔裤 32-5-3-216132026160" target="_blank">杰克琼斯春秋男士时尚潮流修身水洗磨白牛仔裤 32-5-3-216132026160</a><p class="price_p"><span class="d_price">??210.00</span><i class="m_price">??499.00</i></p><p class=""><span class="starlevel s4.79"></span><a class="" target="_blank" href="../images/dandanmycheck/1098306248.html#comment">95</a>条评论</p></li> 
         <li><a href="images/dandanmycheck/1151096347.html#ddclick_area_flash_products" class="pic" rel="nofollow" target="_blank" title="达芙妮夏季超高跟鱼嘴单鞋"><img src="../css/css_dan/1151096347-1_l.jpg"></a><a class="name" rel="nofollow" href="../images/dandanmycheck/1151096347.html#ddclick_area_flash_products" title="达芙妮夏季超高跟鱼嘴单鞋" target="_blank">达芙妮夏季超高跟鱼嘴单鞋</a><p class="price_p"><span class="d_price">??59.00</span><i class="m_price">??599.00</i></p><p class=""><span class="starlevel s5"></span><a class="" target="_blank" href="../images/dandanmycheck/1151096347.html#comment">0</a>条评论</p></li> 
         <li><a href="images/dandanmycheck/1187488549.html#ddclick_area_flash_products" class="pic" rel="nofollow" target="_blank" title="歌歌宝贝宝宝短袖套装1-3岁男女儿童t恤短裤夏装婴儿衣服纯棉夏季"><img src="../css/css_dan/1187488549-1_l.jpg"></a><a class="name" rel="nofollow" href="../images/dandanmycheck/1187488549.html#ddclick_area_flash_products" title="歌歌宝贝宝宝短袖套装1-3岁男女儿童t恤短裤夏装婴儿衣服纯棉夏季" target="_blank">歌歌宝贝宝宝短袖套装1-3岁男女儿童t恤短裤夏装婴儿衣服纯棉夏季</a><p class="price_p"><span class="d_price">??42.00</span><i class="m_price">??189.00</i></p><p class=""><span class="starlevel s5"></span><a class="" target="_blank" href="../images/dandanmycheck/1187488549.html#comment">0</a>条评论</p></li> 
         <li><a href="images/dandanmycheck/1223265626.html#ddclick_area_flash_products" class="pic" rel="nofollow" target="_blank" title="世界地图插国旗"><img src="../css/css_dan/1223265626-1_l.jpg"></a><a class="name" rel="nofollow" href="../images/dandanmycheck/1223265626.html#ddclick_area_flash_products" title="世界地图插国旗" target="_blank">世界地图插国旗</a><p class="price_p"><span class="d_price">??59.00</span><i class="m_price">??861.00</i></p><p class=""><span class="starlevel s4.99"></span><a class="" target="_blank" href="../images/dandanmycheck/1223265626.html#comment">154</a>条评论</p></li> 
         <li><a href="images/dandanmycheck/1271311390.html#ddclick_area_flash_products" class="pic" rel="nofollow" target="_blank" title="binpaw夏装女童小公主裙2017新款吸汗全棉儿童连衣裙童裙"><img src="../css/css_dan/1271311390-1_l.jpg"></a><a class="name" rel="nofollow" href="../images/dandanmycheck/1271311390.html#ddclick_area_flash_products" title="binpaw夏装女童小公主裙2017新款吸汗全棉儿童连衣裙童裙" target="_blank">binpaw夏装女童小公主裙2017新款吸汗全棉儿童连衣裙童裙</a><p class="price_p"><span class="d_price">??62.30</span><i class="m_price">??138.00</i></p><p class=""><span class="starlevel s5"></span><a class="" target="_blank" href="../images/dandanmycheck/1271311390.html#comment">1</a>条评论</p></li> 
         <li><a href="images/dandanmycheck/1279799892.html#ddclick_area_flash_products" class="pic" rel="nofollow" target="_blank" title="sharove 喜朗 婴儿手口湿巾80片*5包带盖"><img src="../css/css_dan/1279799892-1_l.jpg"></a><a class="name" rel="nofollow" href="../images/dandanmycheck/1279799892.html#ddclick_area_flash_products" title="sharove 喜朗 婴儿手口湿巾80片*5包带盖" target="_blank">sharove 喜朗 婴儿手口湿巾80片*5包带盖</a><p class="price_p"><span class="d_price">??29.90</span><i class="m_price">??254.00</i></p><p class=""><span class="starlevel s4.84"></span><a class="" target="_blank" href="../images/dandanmycheck/1279799892.html#comment">152</a>条评论</p></li> 
         <li><a href="images/dandanmycheck/1318261890.html#ddclick_area_flash_products" class="pic" rel="nofollow" target="_blank" title="限时抢夏季新款休闲时尚韩版短袖套装"><img src="../css/css_dan/1318261890-1_l.jpg"></a><a class="name" rel="nofollow" href="../images/dandanmycheck/1318261890.html#ddclick_area_flash_products" title="限时抢夏季新款休闲时尚韩版短袖套装" target="_blank">限时抢夏季新款休闲时尚韩版短袖套装</a><p class="price_p"><span class="d_price">??149.00</span><i class="m_price">??899.00</i></p><p class=""><span class="starlevel s5"></span><a class="" target="_blank" href="../images/dandanmycheck/1318261890.html#comment">1</a>条评论</p></li> 
        </ul> 
       </div> 
       <a id="fp_btn_prev" class="btn_slide prev_none" href="javascript:void(0);" title="上一页"><span></span></a> 
       <a id="fp_btn_next" class="btn_slide btn_next" href="javascript:void(0);" title="下一页"><span></span></a> 
      </div> 
     </div> 
    </div> 
   </div> 
   <div class="empty_box"></div> 
   <div id="tag_box" style="position:absolute;"></div> 
  </div>
 </body>
</html>