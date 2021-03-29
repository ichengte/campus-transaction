<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <title>商品详情——NCU专属二手交易平台</title>

    <link media="all" href="${pageContext.request.contextPath}/css/goods_detail.css" type="text/css" rel="stylesheet">
    <link media="all" href="${pageContext.request.contextPath}/css/index.css" type="text/css" rel="stylesheet">

    <script src="${pageContext.request.contextPath}/js/jquery-1.7.2.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/js/jquery.mousewheel-3.0.2.pack.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/js/common.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/js/hm.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/js/detail.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/js/add.js" type="text/javascript"></script>

    <script src="${pageContext.request.contextPath}/js/goods_detail.js" type="text/javascript"></script>

<%--    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jia.js" charset="utf-8"></script>--%>
    <%--    <script type="text/javascript" src="${pageContext.request.contextPath}/js/plugin.client.js" charset="utf-8"></script>--%>


    <script type="text/javascript">

        $(document).ready(function () {
            $("#buy-button").click(function () {
                var str = "${sessionScope.user.username}";
                if (!str) {
                    alert("请您先登录");
                    location.href = "/user-login.jsp";
                } else {
                    alert("请您联系卖家购买商品。" + "\n" + "电话:" + proInfo.user.phone + "\n" + "QQ:" + proInfo.user.qq);
                    /* $("#contact-saler").html("");
                    $("#contact-saler").append('<div class="name"><span>联系方式</span></div> '+
                            ' <div class="value">手机：<span class="user-num"id="user_tel" ">'+resp.tel+'</span>'+
                            ' &nbsp;&nbsp;QQ:&nbsp;<span class="user-num"id="user_qq">'+resp.qq+'</span></div>') */
                }
            })

        })
    </script>


</head>

<body>
<iframe style="position: fixed; display: none; opacity: 0;" src="index_1.html" frameborder="0"></iframe>
<div class="jiathis_style"
     style="position: absolute; z-index: 1000000000; display: none; top: 50%; left: 50%; overflow: auto;"></div>
<div class="jiathis_style" style="position: absolute; z-index: 1000000000; display: none; overflow: auto;"></div>
<iframe style="display: none;" src="index_1.html" frameborder="0"></iframe>

<%@ include file="../common/shop_header.jsp" %>
<%@ include file="../common/shop_left.jsp" %>

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
