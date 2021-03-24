<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%--
  ~ Project: campus-transaction
  ~ File: user-index.jsp
  ~ Date: 2021/3/23 下午6:29
  ~ Author: TonyJam
  --%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta content="text/html; charset=UTF-8" http-equiv="Content-Type">
    <title>南昌大学二手物品交易平台</title>
    <link media="all" href="css/index.css" type="text/css" rel="stylesheet">
    <script  src="js/jquery-3.1.1.min.js" type="text/javascript"></script>
    <script src="js/user-index.js" type="text/javascript"></script>
    <script src="js/add.js" type="text/javascript"></script>
    <script src="js/hm.js" type="text/javascript"></script>
    <script src="js/common.js" type="text/javascript"></script>
    <script src="js/common_001.js" type="text/javascript"></script>
    <link rel="icon" href="images/favicon.ico" type="image/x-icon">
</head>
<body>
  <%@ include file="common/shop_header.jsp" %>
<%--	<%@ include file="common/shop_left.jsp" %> --%>
    <div class="container">
   		<div class="main center">
                <div class="wrap-site mt20">
            <div class="recom-title"></div>
            <ul class="recom-list group">
                <li><a href="#" target="_top">商品发布规则</a></li>
                <li><a href="#" target="_top">购买二手iPhone注意事项</a></li>
            </ul>
        </div>
        <div class="label-wr center clearfix">
            <div id="nav-labels">
                <button id="new_pro" class="labels" onclick="" ></button>
            </div>
        </div>
            <img src="images/1.png" alt="">
<%--        <div class="item-list">--%>
<%--            <ul class="items clearfix">--%>
<%--              <c:forEach items="${list}" var="pros"> --%>
<%--            	<li class="item">--%>
<%--                    <a href="#" class="img" target="_top"><img src="${pros.pimage }" alt="${pros.pname }"></a>--%>
<%--                    <div class="info">--%>
<%--                        <div class="price">"${pros.salePrice }"</div>--%>
<%--                        <div class="name">--%>
<%--                            <a href="http://hust.2shoujie.com/goods/169685.html" >"${pros.pname }"</a>--%>
<%--                        </div>--%>
<%--                        <div class="department"><span>"${pros.cid2 }"</span></div>--%>
<%--                        <div class="school"><span>推荐</span></div>--%>
<%--                     </div>--%>
<%--                </li>--%>
<%--            </c:forEach>--%>
<%--            --%>
<%--            --%>
<%--             <li class="item">--%>
<%--                    <a href="http://hust.2shoujie.com/goods/169685.html" class="img" target="_top"><img src="ios_default_1455711227_71_0" alt="MacbookPro 13寸 12年版"></a>--%>
<%--                    <div class="info">--%>
<%--                        <div class="price">3500</div>--%>
<%--                        <div class="name">--%>
<%--                            <a href="http://hust.2shoujie.com/goods/169685.html" target="_top">MacbookPro 13寸 12年版</a>--%>
<%--                        </div>--%>
<%--                        <div class="department"><span>计算机12级(学号认证)</span></div>--%>
<%--                        <div class="place"><span>华科</span></div>--%>
<%--                        <div class="school"><span>推荐</span></div>--%>
<%--                     </div>--%>
<%--                </li>--%>
<%--            </ul>--%>
<%--        </div>--%>
        <!-- 分页 开始 -->
        <div class="pages">
                        <a class="page-num cur" href="http://hust.2shoujie.com/recent">1</a>
                        <a class="page-num " href="http://hust.2shoujie.com/recent/pn2">2</a>
                        <a class="page-num " href="http://hust.2shoujie.com/recent/pn3">3</a>
                        <a class="page-num " href="http://hust.2shoujie.com/recent/pn4">4</a>
                        <a class="page-num " href="http://hust.2shoujie.com/recent/pn5">5</a>
                        <a class="page-num " href="http://hust.2shoujie.com/recent/pn6">6</a>
                        <a class="page-num " href="http://hust.2shoujie.com/recent/pn7">7</a>
                        <a class="page-num " href="http://hust.2shoujie.com/recent/pn8">8</a>
                        <a class="page-arrow arrow-right" href="http://hust.2shoujie.com/recent/pn2">下一页</a>
        </div>
        <!-- 分页 结束 -->
    </div>
</div>

<%--<div class="return-to-top"><a href="#"></a></div><!--返回顶部-->--%>
<%--    --%>
<%--	--%>
<%-- 	<%@ include file="common/shop_right.jsp" %>--%>
<%--	<%@ include file="common/shop_footer.jsp" %> --%>
<%--	--%>
<%--</html>--%>
