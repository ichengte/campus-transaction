<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%--
  ~ Project: campus-transaction
  ~ File: shop_right.jsp
  ~ Date: 2021/3/23 下午6:29
  ~ Author: TonyJam
  --%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>

    <!-- <link rel="stylesheet"  href="../css/bootstrap.min.css">
    <link rel="stylesheet"  href="../css/bootstrap-switch.css">
    <script  src="../js/jquery-3.1.1.min.js"></script>
    <script  src="../js/bootstrap.min.js"></script>
    <script  src="../js/bootstrap-switch.js"></script>
    <link href="../css/main.css" rel="stylesheet"></head>
    <link href="../css/highlight.css" rel="stylesheet">
    <script src="../js/highlight.js"></script>
    <script src="../js/main.js"></script> -->

</head>
<body>
<aside>

    <div id="release-button1">
        <a href="${pageContext.request.contextPath}/common/wanted_creat.jsp?username=${sessionScope.user.username}" style="color: white" id="want-buy"
           onclick=""> 我想要</a>
        <!-- <a  href="#" style="color: white" id="want-buy"> 我要买</a> -->
    </div>
    <br><br>
    <div id="release-button2">
        <a href="${pageContext.request.contextPath}/common/goods_publish.jsp?edit=0" style="color: white"
           id="want-sale"> 我要卖</a>
    </div>
    <br><br>
    <div id="release-button3">
        <a href="${pageContext.request.contextPath}/common/wanted_list.jsp" style="color: white"> 求购专区</a>
    </div>

    <div class="helped ">
        <span class="helpers" id="ordercount"></span>
    </div>

    <div class="fl-wrapper clearfix">
        <div class="wx-follow">
            <a href="javascript:void(0);" class="fl-icon">
                <img src="${pageContext.request.contextPath}/images/weixin-fl.png">
            </a>
            <div class="wx-fl-qrcode">
                <p>微信关注</p>
                <img height="100px" height="100px" src="${pageContext.request.contextPath}/images/wx-fl-qrcode.png">
                <p>南大校园二手街</p>
                <div class="dc-dot"></div>
            </div>
        </div>

    </div>
</aside>
</body>
<script type="text/javascript">
    $(document).ready(function () {
        $.post("order", function (res) {
            $("#ordercount").html('' + res + '');
        })
    })

</script>

</html>
