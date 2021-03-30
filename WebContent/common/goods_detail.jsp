<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ include file="../common/shop_header.jsp" %>
<%@ include file="../common/shop_left.jsp" %>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>商品详情——NCU专属二手交易平台</title>
    <link media="all" href="${pageContext.request.contextPath}/css/goods_detail.css" type="text/css" rel="stylesheet">
    <link media="all" href="${pageContext.request.contextPath}/css/index.css" type="text/css" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/js/common.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/js/goods_detail.js" type="text/javascript"></script>
</head>

<body>
<div class="jiathis_style"
     style="position: absolute; z-index: 1000000000; display: none; top: 50%; left: 50%; overflow: auto;"></div>
<div class="jiathis_style" style="position: absolute; z-index: 1000000000; display: none; overflow: auto;"></div>

<div class="container">
    <div class="main center clearfix">
        <div class="ershou-details">

            <div class="ershou-photos-wr">
                <!-- 收藏功能
               <a class="ershou-favorite" href="javascript:void(0);" style="background-image: url('heart.png');" onclick="favorites();">0</a> -->
                <!-- 轮播大图-->
                <div class="bigger-photo-box"></div>
            </div>


            <div class="ershou-info">
                <div class="ershou-hd">
                    <p class="ershou-title"></p>


                </div>
                <ul class="ershou-detail">
                    <li class="ershou-place" id="pid">
                    </li>
                </ul>
                <div id="buy-button">
                    <a href="javascipt::" style="color: white"> 联系卖家</a>
                </div>
                <div class="complain">
                    <a href="javascript:void(0);" onclick="report();">•&nbsp;&nbsp;&nbsp;&nbsp;举报&nbsp;&nbsp;&nbsp;&nbsp;•</a>
                </div>
            </div>
        </div>
        <div class="ershou-desc">
        </div>
    </div>
</div>

<%@ include file="../common/shop_right.jsp" %>
<%@ include file="../common/shop_footer.jsp" %>

</body>
</html>
