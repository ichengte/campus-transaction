<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%--
  ~ Project: campus-transaction
  ~ File: user_center.jsp
  ~ Date: 2021/3/23 下午6:29
  ~ Author: TonyJam
  --%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ include file="../common/shop_header.jsp" %>
<%@ include file="../common/shop_left.jsp" %>
<head>
    <script type="text/javascript">
        username = ${sessionScope.user.username};
    </script>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>个人中心</title>

    <link media="all" href="${pageContext.request.contextPath}/css/user_center.css" type="text/css" rel="stylesheet">
    <link media="all" href="${pageContext.request.contextPath}/css/index.css" type="text/css" rel="stylesheet">
<%--    <script src="${pageContext.request.contextPath}/js/jquery-1.10.1.min.js" type="text/javascript"></script>--%>
<%--    <script type="text/javascript" src="/js/jquery-3.1.1.min.js"></script>--%>
    <script src="${pageContext.request.contextPath}/js/jquery-form.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/js/user_center.js" type="text/javascript"></script>
    <link media="all" href="${pageContext.request.contextPath}/css/wanted_list.css" type="text/css" rel="stylesheet">


</head>
<body>

<div class="log-reg ease2">
    <div id="have_login" class="clearfix">
        <div id="person_info" class="clearfix">
            <a href="http://hust.2shoujie.com/user/level">
                <img class="avatar" src="${pageContext.request.contextPath}/user/avatar1.png" alt="avatar">
            </a>
            <div class="person_name">
                <a href="#">'+userId+'</a>
            </div>
        </div>

    </div>
</div>




﻿
<div class="container">
    <div class="main center">
        <!-- 头像设置开始 -->
        <%--        <div class="head-img-box hide" id="head-img-box">--%>
        <%--            <div class="wrap-head-img">--%>
        <%--                <h3 class="head-title">--%>
        <%--                    <span>头像设置</span>--%>
        <%--                    <a id="close-head-img" class="close-head-img" href="javascript:;">X</a>--%>
        <%--                </h3>--%>
        <%--                <div class="head-img-area">--%>
        <%--                    <div class="wrap-img" id="wrap-img" style="position: relative;">--%>
        <%--                        <a href="javascript:;" id="upload-person-img" class="img-attr btn-upload-img "--%>
        <%--                           style="position: relative; z-index: 1;"><i>+</i>选择图片</a>--%>
        <%--                        <p class="img-attr img-limit ">只支持JPG、PNG、GIF，大小不超过5M</p>--%>
        <%--                        <img class="loading hide" src="imgs/loading.gif" alt="" width="28" height="28">--%>

        <%--                        <div id="html5_1bg62v1k415fk1n4q1gib1tgff323_container" class="moxie-shim moxie-shim-html5"--%>
        <%--                             style="position: absolute; top: 0px; left: 0px; width: 0px; height: 0px; overflow: hidden; z-index: 0;">--%>
        <%--                            <input id="html5_1bg62v1k415fk1n4q1gib1tgff323"--%>
        <%--                                   style="font-size: 999px; opacity: 0; position: absolute; top: 0px; left: 0px; width: 100%; height: 100%;"--%>
        <%--                                   accept="image/*" capture="camera" type="file">--%>
        <%--                        </div>--%>
        <%--                    </div>--%>
        <%--                </div>--%>
        <%--                <div class="head-img-footer">--%>
        <%--                    <a href="javascript:;" class="btn-ok" id="upload-ok">确定</a>--%>
        <%--                    <a href="javascript:;" id="cancel-img-box" class="btn-cancel">取消</a>--%>
        <%--                </div>--%>
        <%--            </div>--%>
        <%--        </div>--%>
        <%--        <!-- 头像设置结束 -->--%>
        <%--        <div class="top clearfix" id="user-top">--%>
        <%--            <div id="user_photo">--%>
        <%--                <img src="/user/avatar1.png" alt="profile">--%>
        <%--            </div>--%>
        <%--            <div id="user_msg">--%>
        <%--                <div class="name" id="user_big_name">--%>
        <%--                </div>--%>
        <%--                <ul class="seller_attr">--%>
        <%--                    <li>当前积分：<span id="userpoint"></span><a href="" target="_top">查看积分明细</a></li>--%>
        <%--                    <li>已发布商品：<span id="procount"></span></li>--%>
        <%--                </ul>--%>
        <%--            </div>--%>

        <%--        </div>--%>
        <ul id="middle_nav" class="clearfix middle_nav">
            <li class="on"><a href="#">个人资料</a></li>
        </ul>
        <div class="pop-tip hide">
            <div class="pop-tip-area">
                <p class="pop-tip-txt">修改成功</p>
            </div>
        </div>
        <div id="my_info">
            <%--            <div id="account_info">--%>
            <%--                <h2>账户信息</h2>--%>
            <%--                <ul class="infos">--%>
            <%--                    <li>账号</li>--%>
            <%--                    <li class="right_info">201322146108</li>--%>
            <%--                </ul>--%>
            <%--            </div>--%>
            <%--            <div id="base_info">--%>
            <%--                <h2>基本信息 <span id="edit_info">编辑</span><span id="save_info">保存</span></h2>--%>
            <%--                <ul class="infos">--%>
            <%--                    <li>昵称</li>--%>
            <%--                    <li class="right_info">--%>
            <%--                        <span id="nickname_span">sky123</span>--%>
            <%--                        <input value="" id="nickname" type="text">--%>
            <%--                    </li>--%>
            <%--                </ul>--%>
            <%--                <ul class="infos">--%>
            <%--                    <li>手机</li>--%>
            <%--                    <li class="right_info">--%>
            <%--                        <span id="phone_span">18607159682</span>--%>
            <%--                        <input value="" id="phone" type="text">--%>
            <%--                    </li>--%>
            <%--                </ul>--%>
            <%--                <ul class="infos">--%>
            <%--                    <li>QQ</li>--%>
            <%--                    <li class="right_info">--%>
            <%--                        <span id="qq_span">98798432134</span>--%>
            <%--                        <input value="" id="qq" type="text">--%>
            <%--                    </li>--%>
            <%--                </ul>--%>
            <%--                <ul class="infos">--%>
            <%--                    <li>学院</li>--%>
            <%--                    <li class="right_info">--%>
            <%--                        <span id="college_span">信息学院</span>--%>
            <%--                        <input value="" id="college" type="text">--%>
            <%--                    </li>--%>
            <%--                </ul>--%>
            <%--                <ul class="infos">--%>
            <%--                    <li>年级</li>--%>
            <%--                    <li class="right_info">--%>
            <%--                        <span id="grade_span">2013级</span>--%>
            <%--                        <input value="" id="grade" type="text">--%>
            <%--                    </li>--%>
            <%--                </ul>--%>
            <%--                <ul class="infos">--%>
            <%--                    <li>校区</li>--%>
            <%--                    <li class="right_info">--%>
            <%--                        <span id="area_span">2013级</span>--%>
            <%--                        <input value="" id="area" type="text">--%>
            <%--                    </li>--%>
            <%--                </ul>--%>
            <%--            </div>--%>
        </div>
        <ul id="middle_nav1" class="clearfix middle_nav">

            <li class="on"><a href="#">我发布的商品</a></li>

        </ul>

        <div id="my_products">
            <div id="onsale_pro">
                <%--                <div class="enshr_each" id="">--%>
                <%--                    <div class="enshr_info">--%>
                <%--                        <h2><a href="http://hust.2shoujie.com/goods/186267" title="坚果pro">坚果pro最新</a></h2>--%>
                <%--                        <p>最新上市，工匠设计，美得不像实力派。</p>--%>
                <%--                        <div class="enshr_state">--%>
                <%--                            <span id="prostate">状态：正在出售</span>--%>
                <%--                            &nbsp;&nbsp;<span id="prostate1">上架日期：</span>--%>
                <%--                            <span class="enshrine_it" onclick="sellout(5);">确认售出</span>--%>
                <%--                            <span class="enshrine_it make_edition" onclick="offshelf(68);">下架</span>--%>
                <%--                            <span class="enshrine_it make_edition" onclick="refresh(124);">擦亮</span>--%>
                <%--                            <a href="#" target="_top">--%>
                <%--                                <span class="enshrine_it  make_edition">编辑</span>--%>
                <%--                            </a>--%>
                <%--                        </div>--%>
                <%--                    </div>--%>
                <%--                    <a href="#">--%>
                <%--                        <img class="enshr_ph" src="#" alt="">--%>
                <%--                    </a>--%>
                <%--                </div>--%>
            </div>
        </div>
        <ul id="middle_nav1" class="clearfix middle_nav">

            <li class="on"><a href="#">我求购的商品</a></li>

        </ul>

        <div class="wrap-want-list">
            <ul class="want-list my-want-list" id="want-list">
            </ul>
        </div>


    </div>
</div>


<%@ include file="../common/shop_right.jsp" %>
<%@ include file="../common/shop_footer.jsp" %>

<script type="text/javascript">
    var str = "${sessionScope.user.username}";
    if (!str) {
        alert("请您先登录");
        location.href = "/user-login.jsp";
    }

</script>
</body>
</html>