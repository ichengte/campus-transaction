<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%--
  ~ Project: campus-transaction
  ~ File: user-login.jsp
  ~ Date: 2021/3/23 下午6:29
  ~ Author: TonyJam
  --%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>南昌大学校园二手商品交易平台</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <link href="css/user-login.css" rel="stylesheet" type="text/css"/>
    <script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
    <script type="text/javascript" src="js/jquery-form.js"></script>
    <script type="text/javascript" src="js/user-login.js"></script>

</head>
<body>
<h1 style="color: #4BC0A5">南昌大学校园二手商品交易平台<sup>2021</sup></h1>

<div class="login" style="margin-top:50px;">
    <div class="header">
        <div class="switch" id="switch">
            <a class="switch_btn_focus" id="switch_qlogin" href="javascript:void(0);" tabindex="7">快速登录</a>
            <a class="switch_btn" id="switch_login" href="javascript:void(0);" tabindex="8">快速注册</a>
            <div class="switch_bottom" id="switch_bottom" style="position: absolute; width: 64px; left: 0;">
            </div>
        </div>
    </div>
    <div class="web_qr_login" id="web_qr_login" style="display: block; height: 235px;">
        <!--登录-->
        <div class="web_login" id="web_login">
            <div class="login-box">
                <div class="login_form">
                    <div id="loginCue" class="cue">欢迎登陆</div>
                        <div class="uinArea" id="uinArea">
                            <label class="input-tips" for="username">用户：</label>
                            <div class="inputOuter" id="uArea">
                                <input type="text" id="username" name="username" class="inputstyle"/>
                            </div>
                        </div>
                        <div class="pwdArea" id="pwdArea">
                            <label class="input-tips" for="userpwd">密码：</label>
                            <div class="inputOuter" id="pArea">
                                <input type="password" id="userpwd" name="userpwd" class="inputstyle"/>
                            </div>
                        </div>
                        <div style="padding-left:50px;margin-top:20px;">
                            <button id="login_button" value="登 录" style="width:150px;" class="button_blue"
                                    href="javascript::">登录
                            </button>
                        </div>
                </div>
            </div>
        </div>
        <!--登录end-->
    </div>
    <!--注册-->
    <div class="qlogin" id="qlogin" style="display: none; ">
        <div class="web_login">
            <form name="form2" id="regForm" accept-charset="utf-8" method="post" enctype="multipart/form-data">
                <ul class="reg_form" id="reg-ul">
                    <div id="userCue" class="cue">快速注册请注意格式</div>
                    <li>
                        <label for="username1" class="input-tips2">用户：</label>
                        <div class="inputOuter2">
                            <input type="text" id="username1" name="user.username" maxlength="16" class="inputstyle2"/>
                        </div>
                    </li>
                    <li>
                        <label for="password1" class="input-tips2">密码：</label>
                        <div class="inputOuter2">
                            <input type="password" id="password1" name="user.userpwd" maxlength="16" class="inputstyle2"/>
                        </div>
                    </li>
                    <li>
                        <label for="password2" class="input-tips2">确认密码：</label>
                        <div class="inputOuter2">
                            <input type="password" id="password2" name="user.userpwd1" maxlength="16" class="inputstyle2"/>
                        </div>
                    </li>
                    <li>
                        <label for="name" class="input-tips2">姓名：</label>
                        <div class="inputOuter2">
                            <input type="text" id="name" name="user.realname" maxlength="16" class="inputstyle2"/>
                        </div>
                    </li>
                    <li>
                        <label for="sex" class="input-tips2">性别：</label>
                        <div class="inputOuter2">
                            <input type="text" id="sex" name="user.sex" maxlength="16" class="inputstyle2"/>
                        </div>
                    </li>
                    <li>
                        <label for="academy" class="input-tips2">学院：</label>
                        <div class="inputOuter2">
                            <input type="text" id="academy" name="user.academy" maxlength="16" class="inputstyle2"/>
                        </div>
                    </li>
                    <li>
                        <label for="grade" class="input-tips2">年级：</label>
                        <div class="inputOuter2">
                            <input type="text" id="grade" name="user.grade" maxlength="16" class="inputstyle2"/>
                        </div>
                    </li>
                    <li>
                        <label for="qq" class="input-tips2">QQ：</label>
                        <div class="inputOuter2">
                            <input type="text" id="qq" name="user.qq" maxlength="10" class="inputstyle2"/>
                        </div>
                    </li>
                    <li>
                        <label for="phone" class="input-tips2">电话：</label>
                        <div class="inputOuter2">
                            <input type="text" id="phone" name="user.phone" maxlength="16" class="inputstyle2"/>
                        </div>
                    </li>
                    <li>
                        <label for="profile" class="input-tips2">头像：</label>
                        <div class="inputOuter2">
                            <input type="file" id="profile" name="file" maxlength="16" class="inputstyle2"/>
                        </div>
                    </li>
                    <li>
                        <div class="inputArea">
                            <input type="button" id="reg_button" style="margin-top:10px;margin-left:85px;"
                                   class="button_blue" value="注册成为会员"/>
                        </div>
                    </li>
                    <div class="cl"></div>
                </ul>
            </form>
        </div>
    </div>
    <!--注册end-->
</div>
<div class="jianyi">*推荐使用ie8或以上版本ie浏览器或Chrome内核浏览器访问本站</div>
</body>

</html>