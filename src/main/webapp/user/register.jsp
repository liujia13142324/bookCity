<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
    <!DOCTYPE html>
    <html>

    <head>
        <meta http-equiv="X-UA-Compatible" content="IE=Edge" />
        <title>晓米佳-欢迎登录</title>
        <link type="text/css" rel="stylesheet" href="../user/css/userLogin.css" source="widget" />
        <script type="text/javascript" src="../easyui/jquery.min.js"></script>
        <script type="text/javascript" src="../user/js/login.js"></script>
    </head>

    <body>
        <div id="content" style="min-height:550px">
            <div class="login-wrap">
                <div class="w">
                    <div class="login-form">
                        <div class="login-tab login-tab-r">
                            <a href="javascript:void(0">创建账户</a>
                        </div>
                        <div class="login-box" >
                            <div class="mt tab-h"></div>
                            <div class="msg-wrap">
                                <div class="msg-error hide" id="loginMsg-error">${sessionScope.errorMsg}</div>
                            </div>
                            <div class="mc">
                                <div class="form">
                                    <form id="formlogin" method="post" onsubmit="return false;">
                                       <div class="basic_info">
	                                       <label class="sub_label">设置昵称</label>
	                                        <div class="item item-fore1">
	                                            <input  type="text" class="itxt"  tabindex="1" autocomplete="off" maxlength="18" placeholder="请输入你的昵称" />
	                                            <span class="clear-btn" onclick="emptyLoginname(this)"></span>
	                                        </div>
                                        </div>
                                        <div class="basic_info">
	                                        <label class="sub_label">请输入您的邮箱</label>
	                                        <div class="item item-fore1">
	                                            <input  type="text" class="itxt"  tabindex="1" autocomplete="off" maxlength="18" placeholder="设置您的账户名" />
	                                            <span class="clear-btn" onclick="emptyLoginname(this)"></span>
	                                        </div>
                                        </div>
                                         <div class="basic_info">
	                                        <label class="sub_label">设置您的密码：</label>
	                                        <div id="Rentry" class="item item-fore2">
	                                            <input type="password" id="nloginpwd" name="nloginpwd" class="itxt itxt-error" onkeyup="nloginpwdCheck()" tabindex="2" autocomplete="off" placeholder="设置您的密码" maxlength="18" /> <span class="clear-btn" onclick="emptyNloginpwd(this)"></span> <span class="capslock"><b></b>大小写锁定已打开</span>
	                                        </div>
                                        </div>
                                         <div class="basic_info">
                                       		<label class="sub_label">确认您的密码：</label>
	                                        <div id="Rentry" class="item item-fore2">
	                                            <input type="password" id="nloginpwd" name="nloginpwd" class="itxt itxt-error" onkeyup="nloginpwdCheck()" tabindex="2" autocomplete="off" placeholder="请再次输入您的密码" maxlength="18" /> <span class="clear-btn" onclick="emptyNloginpwd(this)"></span> <span class="capslock"><b></b>大小写锁定已打开</span>
	                                        </div>
                                        </div>
                                        
                                         <div class="item item-fore5" id="continue">
                                            <div class="login-btn" >
                                                <a href="javascript:void(0);"  class="btn-img btn-entry" tabindex="6" onclick="regContinue()">继&nbsp;&nbsp;&nbsp;&nbsp;续</a>
                                            </div>
                                        </div>
                                        
                                        
                                        
                                        <div class="identifiedCode" style="display:none;">
                                       		<label class="sub_label">请输入您收到的验证码：</label>
	                                        <div id="Rentry" class="item item-fore2">
	                                            <input id="nloginpwd" name="nloginpwd" class="itxt itxt-error" onkeyup="nloginpwdCheck()" tabindex="2" autocomplete="off" placeholder="请输入您收到的验证码" maxlength="18" /> <span class="clear-btn" onclick="emptyNloginpwd(this)"></span> <span class="capslock"><b></b></span>
	                                        </div>
                                        </div>
                                        
                                        <div class="item item-fore5" id="submit" style="display:none">
                                            <div class="login-btn">
                                                <a href="javascript:void(0);"  class="btn-img btn-entry" tabindex="6" onclick="register()">确&nbsp;&nbsp;&nbsp;&nbsp;定</a>
                                            </div>
                                        </div>
                                        
                                        
                                        
                                        <div class="item item-fore5" id="sendEmail" style="display:none">
                                            <div class="login-btn" style="margin-top:20px;">
                                             	<input  type="button" value="重新发送（10s）" class="btn-img btn-entry" disabled="true" id="sendbt" onclick="sendEmailMsg()"/>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="login-banner" clstag="pageclick|keycount|20150112ABD|46">
                    <div class="w">
                        <div id="banner-bg" class="i-inner"></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="w">
            <div id="footer-2013">
                <div class="links">
                    <a rel="nofollow" target="_blank" href="//www.jd.com/intro/about.aspx"> 关于我们 </a> | <a rel="nofollow" target="_blank" href="//www.jd.com/contact/"> 联系我们 </a> | <a rel="nofollow" target="_blank" href="//zhaopin.jd.com/"> 人才招聘 </a> | <a rel="nofollow" target="_blank" href="//www.jd.com/contact/joinin.aspx"> 商家入驻 </a> | <a rel="nofollow" target="_blank" href="//www.jd.com/intro/service.aspx"> 广告服务 </a> | <a target="_blank" href="//en.jd.com/" clstag="pageclick|keycount|20150112ABD|9">English Site</a>
                </div>
                <div class="copyright">
                    Copyright&nbsp;&copy;&nbsp;2004-2017&nbsp;&nbsp;晓米佳XMJ.com&nbsp;版权所有
                </div>
            </div>
        </div>
    </body>

    </html>
<script src="../user/js/register.js"></script>

        