<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta content="text/html; charset=UTF-8" http-equiv="Content-Type">
    <title>求购专区 - 南大校园二手街</title>

    <link rel="icon" href="${pageContext.request.contextPath}/favicon.ico">
    <link rel="icon" href="${pageContext.request.contextPath}/favicon.ico" type="image/x-icon">

    <script src="${pageContext.request.contextPath}/js/hm.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/js/detail.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/js/add.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/js/jquery.mousewheel-3.0.2.pack.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/js/jquery.fancybox-1.3.1.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/js/common.js" type="text/javascript"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/wanted_list.js"></script>

    <link media="all" href="${pageContext.request.contextPath}/css/wanted_list.css" type="text/css" rel="stylesheet">
</head>
<link media="all" href="${pageContext.request.contextPath}/css/index.css" type="text/css" rel="stylesheet">
</head>


<body>
<%@ include file="/common/shop_header.jsp" %>
<%@ include file="/common/shop_left.jsp" %>

<div class="container">
    <div class="main center clearfix">
        <div class="want-title"></div>
        <div class="wrap-want-list">
            <ul class="want-list" id="want-list">
                <li class="want-item">
                </li>
            </ul>
        </div>
    </div>
</div>

<%@ include file="/common/shop_right.jsp" %>
<%@ include file="/common/shop_footer.jsp" %>

</body>

</html>