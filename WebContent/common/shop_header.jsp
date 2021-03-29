<%@ page import="com.user.entity.User" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%--
  ~ Project: campus-transaction
  ~ File: shop_header.jsp
  ~ Date: 2021/3/23 下午6:29
  ~ Author: TonyJam
  --%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
    <link media="all" href="${pageContext.request.contextPath}/css/index.css" type="text/css" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js" type="text/javascript"></script>

    <script src="${pageContext.request.contextPath}/js/add.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/js/hm.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/js/common.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/js/common_001.js" type="text/javascript"></script>
<%--    <script type="text/javascript" src="${pageContext.request.contextPath}/js/cookie.js"></script>--%>
    <style type="text/css">
        .loginandrigist {
            margin-left: 1000px;
            margin-top: -66px;
        }

        #person_info {
            height: 100%;
            cursor: pointer;
            position: relative;
        }

        main.css /*?v=201506100001:20*/
        .clearfix {
            zoom: 1;
        }
    </style>
</head>
<body>
<header class="ease2">
    <a href="http://localhost:8080/">
        <img class="logo ease2" src="../images/1.png" alt="校园二手街">
    </a>
    <div class="header-main center ease2">
        <a href="http://localhost:8080/" class="slogan">
            <h1 class="s-main"></h1>
            <div class="s-submain"></div>
            <img src="../images/header.png" alt="校园二手物品交易平台">
        </a>
        <div class="search-box-wr ease2">
            <div class="search-box center">
                <button class="search-submit" id="search-button">搜索</button>
                <div class="input-wr">
                    <img class="search-icon" src="../images/search-icon.png" alt="">
                    <div class="search-input">
                        <label for="keyword"></label><input name="keyword" id="keyword" x-webkit-speech=""
                                                            placeholder="搜索你想要的商品" value="" type="text">
                    </div>
                </div>
            </div>

            <div class="search-hots center ease2">
                <span>热门：</span>
                <a class="hots" href="${pageContext.request.contextPath}/common/goods_list.jsp?category=101" target="_top">手机</a>
                <a class="hots" href="${pageContext.request.contextPath}/common/goods_list.jsp?category=201" target="_top">笔记本</a>
                <a class="hots" href="${pageContext.request.contextPath}/common/goods_list.jsp?category=701" target="_top">乐器</a>
                <a class="hots" href="${pageContext.request.contextPath}/common/goods_list.jsp?category=8" target="_top">图书</a>
            </div>
        </div>
        <%-- <input   type="text" value="${sessionScope.user.id}"> --%>
        <div class="ease2 log-reg" id="have-not-login">
            <!-- loginandrigist -->
            <div class="button"><a href="${pageContext.request.contextPath}/user-login.jsp">登录</a></div>
        </div>
    </div>
</header>
</body>

<script type="text/javascript">
    $(document).ready(function () {
        var username = "${sessionScope.user.username}";
        var realname = "${sessionScope.user.realname}";
        var profile = "${sessionScope.user.profile}";
        var id = "${sessionScope.user.uuid}";

        if (id !== "" && id != null) {
            $("#have-not-login").html("");
            var str = $('<div id="have_login" class="clearfix"><div id="person_info" class="clearfix">' +
                '<a href="/common/user_center.jsp?username=' + username + '"><img  class="avatar"  style="height:48px;width:48px; border-radius: 50%;" src="/user/' + profile + '" alt="profile"></a>' +
                '<div  style="display:inline;"  class="person_name"><a style="font-size: 20px" href="${pageContext.request.contextPath}/common/user_center.jsp?username=' + username + '" id="id-btn">Hi,' + realname + '</a></div>' +
                '<div class="btn-primary btn" style="display:inline;" id="login-out-btn"><a href="/user/loginOut.do">&nbsp;&nbsp;退出</a></div>' +
                '</div> </div>')
            $("#have-not-login").append(str)
        }
        // 关键词搜索
        $("#search-button").click(function () {
            var keyword = $("#keyword").val();
            location.href = "/common/goods_list.jsp?keyword=" + keyword;
        });
    });

</script>


</html>