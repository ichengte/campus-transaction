<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" import="java.util.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
    <script src="js/jquery-3.1.1.min.js" type="text/javascript"></script>
    <script src="js/user-index.js" type="text/javascript"></script>
    <script src="js/add.js" type="text/javascript"></script>
    <script src="js/hm.js" type="text/javascript"></script>
    <script src="js/common.js" type="text/javascript"></script>
    <script src="js/common_001.js" type="text/javascript"></script>
    <link rel="icon" href="images/favicon.ico" type="image/x-icon">
    <link href="css/bootstrap.min.css">
    <script type="text/javascript">
        $(document).ready(function () {
            var index = ${index};
            alert(index);
            alert($('.page-num').text);
        });
    </script>
</head>
<body>
<%@ include file="common/shop_header.jsp" %>
<%@ include file="common/shop_left.jsp" %>
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
                <button id="new_pro" class="labels" onclick=""></button>
            </div>
        </div>
        <div class="item-list">
            <ul class="items clearfix">
                <c:forEach items="${goodsList}" var="g">
                    <li class="item">
                        <a style="padding-left: 47px;" href="common/goods_detail.jsp?gid=' + ${g.gid} + '" target="_top"><img id="pro_img" src="/goods/${g.picture }" alt="${g.title }"></a>
                        <div class="info">
                            <div class="price">"${g.sell_price }"</div>
                            <div class="name">
                                <a style="padding-left: 47px;" href="goods_detail.jsp?gid=' + ${g.gid} + '" target="_top">${g.title }</a>
                            </div>

                            <div class="department" style="text-align: left"><span>原价：￥${g.buy_price}</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>现价：￥${sell_price}</span></div>
                            <div class="place"><span>上架时间：${g.publish_time} </span></div>;
                            <c:choose>
                                <c:when test="${g.recommendation==1}">
                                    <div class="school0"><span>推荐</span></div>
                                </c:when>

                                <c:otherwise>
                                    <div class="school"><span>新品</span></div>
                                </c:otherwise>
                            </c:choose>
                        </div>
                    </li>
                </c:forEach>
            </ul>
        </div>
        <!-- 分页 开始 -->
        <div class="pages">
            <a class="page-num" href="/goods/findByPage.do?index=1">1</a>
            <a class="page-num " href="/goods/findByPage.do?index=2">2</a>
            <a class="page-num " href="/goods/findByPage.do?index=3">3</a>
            <a class="page-arrow arrow-right" href="/goods/findByPage.do?index=${index + 1}">下一页</a>
        </div>
        <!-- 分页 结束 -->
    </div>
</div>

<div class="return-to-top"><a href="#"></a></div><!--返回顶部-->


<%@ include file="common/shop_right.jsp" %>
<%@ include file="common/shop_footer.jsp" %>

</html>
