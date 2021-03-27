<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" import="java.util.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%--
  ~ Project: campus-transaction
  ~ File: goods_list.jsp
  ~ Date: 2021/3/23 下午6:29
  ~ Author: TonyJam
  --%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta content="text/html; charset=UTF-8" http-equiv="Content-Type">


    <title>NCU专属二手物品交易平台</title>

    <link media="all" href="${pageContext.request.contextPath}/css/index.css" type="text/css" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js" type="text/javascript"></script>

    <script src="${pageContext.request.contextPath}/js/goods_list.js" type="text/javascript"></script>

    <script src="${pageContext.request.contextPath}/js/add.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/js/hm.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/js/common.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/js/common_001.js" type="text/javascript"></script>
    <link rel="icon" href="#" type="image/x-icon">


</head>

<body>
<%@ include file="../common/shop_header.jsp" %>
<%@ include file="../common/shop_left.jsp" %>


<div class="container">
    <div class="main center">
        <div class="rank-by clearfix cur1" data-cur="1">
            <div class="rank-title-wr">
                <a href="${pageContext.request.contextPath}/common/goods_list.jsp?rank=publish_time" class="rank-title default" data-rank="1">时间</a>
                <a href="${pageContext.request.contextPath}/common/goods_list.jsp?rank=credit" class="rank-title default">信用</a>
                <a href="${pageContext.request.contextPath}/common/goods_list.jsp?rank=sell_price" class="rank-title default">价格</a>
                <a href="${pageContext.request.contextPath}/common/goods_list.jsp?rank=recommendation" class="rank-title default">热度</a>
            </div>
            <div class="wave ease2"></div>
        </div>
        <div class="item-list">
            <ul class="items clearfix">

                <%--                      <li class="item">--%>
                <%--                        <a href="http://hust.2shoujie.com/goods/185614.html" class="img" target="_top"><img src="ios_default_1494065510_107750_0" alt="美利达勇士600山地自行车低价转让"></a>--%>
                <%--                        <div class="info">--%>
                <%--                            <div class="price">400</div>--%>
                <%--                            <div class="name"><a href="http://hust.2shoujie.com/goods/185614.html" target="_top">美利达勇士600山地自行车低价转让</a></div>--%>
                <%--                            <div class="department"><span>研究生14级(未认证)</span></div>--%>
                <%--                            <div class="place"><span>全校</span></div>--%>
                <%--                        </div>--%>
                <%--                    </li>--%>


            </ul>
        </div>
        <!-- 分页 开始 -->
        <div class="pages">
            <a class="page-num" href="${pageContext.request.contextPath}/goods/findByPage.do?index=1">1</a>
            <a class="page-num " href="${pageContext.request.contextPath}/goods/findByPage.do?index=2">2</a>
            <a class="page-num " href="${pageContext.request.contextPath}/goods/findByPage.do?index=3">3</a>
            <a class="page-arrow arrow-right"
               href="${pageContext.request.contextPath}/goods/findByPage.do?index=${index + 1}">下一页</a>
        </div>
        <!-- 分页 结束 -->
    </div>
</div>
<div class="return-to-top"><a href="#"></a></div><!--返回顶部-->


<%@ include file="../common/shop_right.jsp" %>
<%@ include file="../common/shop_footer.jsp" %>

</html>
