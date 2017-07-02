<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
    <!DOCTYPE html>
    <html>

    <head>
        <meta http-equiv="X-UA-Compatible" content="IE=Edge" />
        <title>小书屋-欢迎登录</title>
        <link type="text/css" rel="stylesheet" href="../user/css/userLogin.css" source="widget" />
        <script type="text/javascript" src="../easyui/jquery.min.js"></script>
        <script type="text/javascript" src="../user/js/login.js"></script>
    </head>

    <body>
        <div id="content">
            <div class="login-wrap">
                <div class="w">
                    <div class="login-form">
                        <div class="login-tab login-tab-r">
                            <a href="javascript:void(0">账户登录</a>
                        </div>
                        <div class="login-box">
                            <div class="mt tab-h"></div>
                            <div class="msg-wrap">
                                <div class="msg-error hide" id="loginMsg-error">${sessionScope.errorMsg}</div>
                            </div>
                            <div class="mc">
                                <div class="form">
                                    <form id="formlogin" method="post" onsubmit="return false;">
                                        <input type="hidden" id="uuid" name="uuid" />
                                        <input type="hidden" name="eid" id="eid" value="" class="hide" />
                                        <input type="hidden" name="fp" id="sessionId" value="" class="hide" />
                                        <input type="hidden" name="_t" id="token" value="_ntXubuv" class="hide" />
                                        <input type="hidden" name="loginType" id="loginType" value="c" class="hide" />
                                        <input type="hidden" name="pubKey" id="pubKey" class="hide" />
                                        <input type="hidden" name="npXPeINZhM" value="NdZUX" />
                                        <label class="sub_label">您的用户名：</label>
                                        <div class="item item-fore1">
                                            <input id="loginname" type="text" class="itxt" onkeyup="loginnameCheck()" name="loginname" tabindex="1" autocomplete="off" maxlength="18" placeholder="用户名/已验证的方式" />
                                            <span class="clear-btn" onclick="emptyLoginname(this)"></span>
                                        </div>
                                        <label class="sub_label">您的密码：</label>
                                        <div id="Lentry" class="item item-fore2">
                                            <input type="password" id="nloginpwd" name="nloginpwd" class="itxt itxt-error" onkeyup="nloginpwdCheck()" tabindex="2" autocomplete="off" placeholder="密码" maxlength="18" /> <span class="clear-btn" onclick="emptyNloginpwd(this)"></span> <span class="capslock"><b></b>大小写锁定已打开</span>
                                        </div>
                                        <div id="forget">
                                            <span class="forget-pw-safe"> <a
											href="/uc/links?tag=safe" class="" target="_blank">忘记密码</a>
										</span>
                                        </div>
                                        <div id="o-authcode" class="item item-vcode item-fore3">
                                            <input id="authcode" placeholder="请输入验证码" type="text" class="itxt itxt02" name="authcode" tabindex="3"> <img id="JD_Verification1" class="verify-code" src="../vcode.jpg" onclick="changeVcode(this)" />
                                            <a href="javascript:void(0)" onclick="$('#JD_Verification1').click();">换一张</a>
                                        </div>
                                        <div class="item item-fore5">
                                            <div class="login-btn">
                                                <a href="javascript:login();" class="btn-img btn-entry" id="loginsubmit" tabindex="6" onclick="loginSubmit()" clstag="pageclick|keycount|201607144|3">登&nbsp;&nbsp;&nbsp;&nbsp;录</a>
                                            </div>
                                        </div>
                                    </form>
                                    <div class="login-btn">
                                        <a class="btn-img btn-entry" tabindex="6" href="register.jsp" target="_blank"><b></b>立即注册</a>
                                    </div>
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
