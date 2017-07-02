<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<html>
<head></head>
<body>

	<%
		String basePath = "../";
	%>

	<meta charset="utf-8">
	<li>
		<title>欢迎--小书屋</title>
		<meta content="小书屋,心灵之旅" name="Keywords">
		<meta content="小书屋，心灵休憩的角落" name="Description">

		<link rel="stylesheet" href="../css/css_dan1/my_account_address.css">
		<!-- 本页面引入 -->
		<link href="../css/css_dan/mydd_head.css" rel="stylesheet"
			type="text/css">
		<link href="../css/css_dan/mydd_public.css" rel="stylesheet"
			type="text/css">
		<link href="../css/css_dan/mydd_title.css" rel="stylesheet"
			type="text/css">
		<link href="../css/css_dan/mydd_leftnavi.css" rel="stylesheet"
			type="text/css">
		<link href="../css/css_dan/mydd_foot.css" rel="stylesheet"
			type="text/css">
		<link href="../css/css_dan/rightSidebar.css" rel="stylesheet"
			type="text/css">
		<link href="../css/css_dan/menu.css" rel="stylesheet" type="text/css">
		<link href="../css/css_dan/style.css" rel="stylesheet" type="text/css">
		<link href="../css/css_dan/ad.css" rel="stylesheet" type="text/css">
		<!-- 首页样式 -->
		<link rel="stylesheet" type="text/css"
			href="<%=basePath%>css/basic.css">
		<link rel="stylesheet" type="text/css"
			href="<%=basePath%>css/index.css">
		<link rel="stylesheet" type="text/css"
			href="<%=basePath%>css/footer.css">
		<link rel="stylesheet" type="text/css"
			href="<%=basePath%>/css/css_dan/search_pub.css"> <!-- 苏宁易购 -->
		<link rel="stylesheet" type="text/css"
			href="<%=basePath%>css/css_su/common.min.css">
		<link rel="stylesheet" type="text/css"
			href="<%=basePath%>css/css_su/snEbook.min.css">
		<link rel="stylesheet" href="<%=basePath%>css/css_su/saved_resource">
		<link rel="stylesheet" type="text/css"
			href="<%=basePath%>css/css_su/menuNav.min.css"> <!-- 当当 -->
		<link rel="stylesheet" type="text/css"
			href="<%=basePath%>css/css_dan/theme_1.css">
		<link rel="Stylesheet" type="text/css"
			href="<%=basePath%>css/css_dan/home.css">
		<link rel="Stylesheet" type="text/css"
			href="<%=basePath%>css/css_dan/header_150803.css">
		<link href="<%=basePath%>css/css_dan/footer_150526.css"
			rel="stylesheet" type="text/css">
		<link href="<%=basePath%>css/css_dan/mycss.css" rel="stylesheet"
			type="text/css">
		<link rel="stylesheet"
			href="<%=basePath%>/css/css_su/saved_resource(4)"> <!-- 苏宁中间 -->
		<link rel="stylesheet" href="<%=basePath%>css/css_su/book.min.css">
		<link rel="stylesheet" type="text/css"
			href="<%=basePath%>css/css_su/menuNav.min.css"> <!-- 亚马逊的 -->
		<link rel="stylesheet"
			href="<%=basePath%>css/css_ya/index_products.css">
		<link rel="stylesheet" href="<%=basePath%>css/css_ya/index_ya.css">
		<!-- 亚马逊结尾 -->
		<style type="text/css">
.hidden {
	display: none;
}
</style> <header>
			<div class="h_top">
				<ul class="u_left">
					<li>您好！请 [<a href="#">登陆</a>]
					</li>
					<li>[<a href="#">注册</a>]
					</li>
					<li id="message"><span></span><a href="#">消息</a></li>
					<li><a href="#">领取积分抵钱</a></li>
				</ul>
				<ul class="u_right" id="u_right">
					<li id="mywowo"><span></span><a href="#">我的小屋</a><span
						class="san"></span>
						<ul class="ulbox">
							<li><a href="#">我的订单</a></li>
							<li><a href="#">我的评价</a></li>
							<li><a href="#">我的资产</a></li>
							<li><a href="#">我的收藏</a></li>
							<li><a href="#">&nbsp;账户中心</a></li>
						</ul></li>
					<li class="myFocus" id="myFocus"><a href="#">关注</a><span
						class="san"></span>
						<ul class="ulbox_fo">
							<li></li>
							<li><a title="窝窝团新浪微博" target="_blank" href="#">窝窝团新浪微博</a></li>
							<li><a title="窝窝团腾讯微博" target="_blank" href="#">&nbsp;窝窝团腾讯微博</a></li>
							<li><a target="_blank" title="窝窝团新浪客服微博" href="#">窝窝团新浪客服微博</a></li>
						</ul></li>
					<li class="h_more" id="h_more"><span></span><a href="#">更多</a><span
						class="san"></span>
						<ul class="ulbox_more" id="ulbox_more">
							<li></li>
							<li><a href="#">手机版下载</a></li>
							<li><a id="addEmailBtn" href="#">邮件订阅</a></li>
							<li><a onclick="AddFavorite(window.location,document.title)"
								href="#">收藏本站</a></li>
						</ul></li>
				</ul>
			</div>
			<div class="h_bottom">
				<div class="hb_left">
					<img src="<%=basePath%>images/logo.png" style="height: 90%;">
				</div>
				<ul class="hb_right">
					<li><button id="hb_showShan">
							类别<span class="san"></span><span></span>
						</button> <input type="text" width="32px" size="50px"
						placeholder="&nbsp;请输入书籍信息">
						<button>搜索</button></li>
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
			<div class="g-channel-nav" id="g-channel-nav"
				style="border-top: 2px solid #333;">
				<div class="wrapper">
					<div class="channel-nav-logo" style="margin-right: 80px;">
						<img src="<%=basePath%>images/navgation_imag.png" alt=""
							style="height: 45px;">
					</div>
					<ul class="channel-sub-nav" style="width: 555px;">
						<li class="home"><a href="#"
							name="snbook_index_daohang_nav01">小书屋首页</a></li>
						<li><a href="#" name="snbook_index_daohang_nav02">出版物</a></li>
						<li><a href="#" name="snbook_index_daohang_nav03">网络小说区</a></li>
						<li><a href="#" name="snbook_index_daohang_nav05">分类</a></li>
						<li><a href="#" name="snbook_index_daohang_nav06	">排行榜</a></li>
					</ul>
					<div class="channel-nav-link">
						<a name="snbook_index_daohang_nav07" class="b-d fwb fl" href="#"
							id="myCloudBS" style="margin-top: 2px;"><em></em>我的书架</a>
					</div>
				</div>
			</div>
		</div>

		<article style="margin: 0 auto; width: 90%;">


			<div class="mydang" id="J_muneAndContentWrap">
				<!--左栏开始-->
				<div class="my_left" id="myLeftMenu">
					<link href="../images/dandanmyIndex/menu.css" rel="stylesheet"
						type="text/css">
					<div class="my_menu">
						<h3 class="my_menu_title">
							<a id="J_myhomeBtn" href="#">我的当当</a>
						</h3>
						<dl>
							<!--  
			<dd><a class="j-menuItem" name="" data-href="/myhome" href="javascript:void(0);" target="_parent">我的当当</a></dd>
			<dd><a class="j-menuItem" name="" data-href="/myAds" href="javascript:void(0);" target="_parent">我的test2</a></dd>
			<dd><a class="j-menuItem" name="" data-href="/test3" href="javascript:void(0);" target="_parent">我的test3</a></dd>
			<dd><a class="j-menuItem" name="" data-href="/test4" href="javascript:void(0);" target="_parent">我的test4</a></dd>
			<dd><a class="j-menuItem" name="" data-href="/test5" href="javascript:void(0);" target="_parent">我的test5</a></dd>
			 -->
							<dt id="class600" name="orders">我的交易</dt>
							<dd>
								<a class="j-menuItem" name="myallorders" href="#"
									target="_parent">我的订单</a>
							</dd>
							<dd>
								<a class="j-menuItem" name="myebook" href="#" target="_parent">电子书</a>
							</dd>
							<dd>
								<a class="j-menuItem" name="mypaymenthistory" href="#"
									target="_parent">我的账单</a>
							</dd>
							<dt id="class605" name="auction">我的拍卖</dt>
							<dd>
								<a class="j-menuItem" name="myAuction" href="#" target="_parent">参拍/获拍</a>
							</dd>
							<dd>
								<a class="j-menuItem" name="myMargin" href="#" target="_parent">我的保证金</a>
							</dd>
							<dt id="class610" name="interesting">我的收藏</dt>
							<dd>
								<a class="j-menuItem" name="wishlist" href="#" target="_parent">商品收藏</a>
							</dd>
							<dd>
								<a class="j-menuItem" name="collectlist" href="#"
									target="_parent">店铺收藏</a>
							</dd>
							<dt id="class620" name="account">我的钱包</dt>
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
								<a class="j-menuItem" name="points_index_list" href="#"
									target="_parent">我的积分</a>
							</dd>
							<dt id="class630" name="selfservice">售后服务</dt>
							<dd>
								<a class="j-menuItem" name="re_list" href="#" target="_parent">申请/查询退换货</a>
							</dd>
							<dd>
								<a class="j-menuItem" name="myinvoice" href="#" target="_parent">补开/合并发票</a>
							</dd>
							<dt id="class640" name="personalinformation">个人中心</dt>
							<dd>
								<a class="j-menuItem" name="profileleft" href="#"
									target="_parent">个人信息</a>
							</dd>
							<dd>
								<a class="j-menuItem" name="safe_center" href="#"
									target="_parent">安全中心</a>
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
							<dt id="class650" name="mycommunity">社区</dt>
							<dd>
								<a class="j-menuItem" name="myreview" href="#" target="_parent">评论/晒单</a>
							</dd>
							<dd>
								<a class="j-menuItem" name="myquestion" href="#"
									target="_parent">提问/回答</a>
							</dd>
							<dd>
								<a class="j-menuItem" name="myinteresting" href="#"
									target="_parent">好友关注</a>
							</dd>
							<dd>
								<a class="j-menuItem" name="mybookmark" href="#"
									target="_parent">我的书架</a>
							</dd>
							<dd>
								<a class="j-menuItem" name="mymessage" href="#" target="_parent">我的留言板</a>
							</dd>
						</dl>
					</div>
				</div>
				<!--左栏结束-->
				<!--右栏开始-->
				<div id="account_right" class="account_right"
					style="margin-left: 20px; margin-top: 0px;">
					<div id="list">
						<div class="problem"></div>
						<h2
							style="border: 1px solid #d3d3d3; border-bottom: none; padding-bottom: 0px; height: 40px; line-height: 40px">收货地址簿</h2>
						<div class="clear"></div>
						<div id="orderList">
							<div class="my_address_info"
								style="padding-top: 20px; padding-bottom: 30px;">
								<div id="div_addrs_0" class="other_address">
									<ul>
										<li><span class="address_num">1、</span> <span
											class="address_text">匡柏,&nbsp;中国,&nbsp;湖南,&nbsp;衡阳市,&nbsp;珠晖区,&nbsp;酃湖乡,&nbsp;****院,&nbsp;421002,&nbsp;153****2767</span>
										</li>
										<li class="my_address_btn"><input type="button"
											onclick="init_modify('154525126','匡柏','','9000','143','1808','1430402','143040209','湖南工学院','421002','','153****2767','','MTUzODYwMDI3Njc=','2')"
											value="修 改" name="button_update" class="button_delete myButton">
											<input type="button"
											onclick="confirm_delete(this,154525126,1)" value="删 除"
											name="button_delete" class="button_delete myButton"> <span><a
												href="javascript:set_default(154525126)">设为默认地址</a></span></li>
									</ul>
									<div class="clear"></div>
								</div>
								<div class="my_address_dashed"></div>
							</div>
						</div>
						<div class="fanye" id="div_paging"></div>
						<div class="my_address_info my_address_add"
							id="myaddress_container">
							<h5 style="height: 40px; line-height: 40px; width: 770px;">新增/修改收货地址</h5>
							<form method="post" name="myaddress" id="myaddress">
								<div class="my_address_add_info">
									<p>
										<label><strong>*</strong>收货人：</label><input type="text"
											name="ship_man" id="ship_man" maxlength="40"
											onfocus="check_focus('spn_ship_man');"
											onblur="check_ship_man();"> <span id="spn_ship_man"
											class="hint new_tip" style="display: none">请填写收货人姓名</span>
									</p>
									<p id="area">
										<label><strong>*</strong>地区：</label> <select id="country_id"
											name="country_id"
											onfocus="check_focus('spn_country_province_city');"
											onblur="check_country_province_city();"
											onchange="set_province(this.options[this.selectedIndex].value);"></select>
										<select id="province_id" name="province_id"
											onfocus="check_focus('spn_country_province_city');"
											onblur="check_country_province_city();"
											onchange="set_city(this.options[this.selectedIndex].value);"><option
												value="0">--请选择--</option></select> <select id="city_id"
											name="city_id"
											onfocus="check_focus('spn_country_province_city');"
											onblur="check_country_province_city();"
											onchange="set_town(this.options[this.selectedIndex].value);"><option
												value="0">--------</option></select> <select id="town_id"
											name="town_id"
											onfocus="check_focus('spn_country_province_city');"
											onblur="check_country_province_city();"
											onchange="set_quarter(this.options[this.selectedIndex].value);"><option
												value="0">--------</option></select> <select id="quarter_id"
											name="quarter_id"
											onfocus="check_focus('spn_country_province_city');"
											onblur="check_country_province_city();"
											onchange="update_city_path()"><option value="0">--------</option></select>
										<span id="spn_country_province_city" class="hint new_tip"
											style="display: none">请选择完整的收货地址信息</span>
									</p>
									<p>
										<label><strong>*</strong>街道地址：</label><span
											style="float: left; padding: 3px 5px 3px 0;" id="city_path"></span><input
											type="text" id="addr_detail" name="addr_detail"
											onfocus="check_country_province_city();
                                            check_focus('spn_addr_detail');"
											onblur="check_addr_detail();" maxlength="200" size="50">
										<span id="spn_addr_detail" class="hint new_tip"
											style="display: none">请填写街道地址</span>
									</p>
									<p>
										<label><strong>*</strong>邮政编码：</label><input type="text"
											id="ship_zip" name="ship_zip"
											onfocus="check_focus('spn_ship_zip');"
											onblur="check_ship_zip();"> <span id="spn_ship_zip"
											class="hint new_tip" style="display: none">请填写您的邮编
											正确的邮编有助于加快送货速度</span>
									</p>
									<p>
										<label><strong>*</strong>手机：</label><input type="text"
											id="ship_mb" name="ship_mb"
											onfocus="check_focus('spn_ship_mb', 'ship_mb');"
											onblur="check_ship_mb();"><label>或者 固定电话</label> <input
											type="text" id="ship_tel" name="ship_tel"
											onfocus="check_focus('spn_ship_mb', 'ship_tel');"
											onblur="check_ship_mb();"> <span id="spn_ship_mb"
											class="hint new_tip" style="display: none">请填写手机号码或固定电话
											请选填至少一项</span> <input type="hidden" id="ship_mb_hidden"
											name="ship_mb_hidden"> <input type="hidden"
											id="ship_tel_hidden" name="ship_tel_hidden"> <input
											type="hidden" id="ship_man_hidden" name="ship_man_hidden">
									</p>
									<p class="address_add_checkbox">
										<input type="checkbox" value="" name="default_flg"
											id="default_flg"><span>设为默认地址</span>
									</p>
									<p class="address_add_btn">
										<button class="myButton">保存</button>
									</p>
									<input id="cust_address_id" name="cust_address_id" type="text"
										value="0" style="display: none"> <input id="status"
										name="status" type="text" value="2" style="display: none">
								</div>
							</form>
						</div>
						<!--确认弹出层-->
						<div
							style="z-index: 101; position: absolute; display: none; left: 625px; top: 618px;"
							class="windo_add_shadow" id="div_confirm_delete">
							<div class="windo_top_shadow">
								<div class="windo_del_address change_windo">
									<div class="delete">
										<input type="button" value=""
											onclick="hide_popup('div_confirm_delete');">
									</div>
									<div class="content reduce_c_w">
										<p id="p_address_number">您真的需要删除地址1 ?</p>
										<input id="del_yes" type="button" value="是"
											onclick="make_del();" class="b_yes"> <input
											type="button" value="否" onclick="cancel_del();" class="b_no">
									</div>
								</div>
								<div class="w_add_shadow1"></div>
							</div>
							<div class="w_add_shadow2"></div>
						</div>
					</div>
					<div class="recommend" id="cpc_1"></div>
					<div class="recommend" id="cpc_0" style="display: none"></div>
				</div>
				<!--右栏结束-->
			</div>


		</article> <footer style="clear: both;">
			<div class="w">
				<div id="footer-2013">
					<div class="links">
						<a rel="nofollow" target="_blank" href="#"> 关于我们 </a> | <a
							rel="nofollow" target="_blank" href="#"> 联系我们 </a> | <a
							rel="nofollow" target="_blank" href="#"> 人才招聘 </a> | <a
							rel="nofollow" target="_blank" href="#"> 商家入驻 </a> | <a
							rel="nofollow" target="_blank" href="#"> 广告服务 </a> | <a
							target="_blank" href="#"
							clstag="pageclick|keycount|20150112ABD|9">English Site</a>
					</div>
					<div class="copyright">
						Copyright&nbsp;©&nbsp;2017-2017&nbsp;&nbsp;学习专用&nbsp;无商业意图</div>
				</div>
			</div>
		</footer>
		<div class="advice" style="right: 30px;">
			<div></div>
			<p align="center">意见</p>
			<p align="center">反馈</p>
		</div>
		<div class="erweima"></div> <script
			src="<%=basePath%>js/jquery-1.9.1.js"></script> <script
			src="<%=basePath%>js/basic.js"></script>
</body>
</html>