<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>发布求购</title>

<%--    <script src="${pageContext.request.contextPath}/js/hm.js" type="text/javascript"></script>--%>
<%--    <script src="${pageContext.request.contextPath}/js/release.js" type="text/javascript"></script>--%>
    <script src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/js/plupload.full.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/js/zh_cn.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/js/qiniu.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/js/common.js" type="text/javascript"></script>
    <link media="all" href="${pageContext.request.contextPath}/css/goods_publish.css" type="text/css" rel="stylesheet">
    <link media="all" href="${pageContext.request.contextPath}/css/index.css" type="text/css" rel="stylesheet">
    <script type="text/javascript">
        var str = "${sessionScope.user.username}"
        if (!str) {
            alert("请您先登录");
            window.location.href = "/user-login.jsp";
        }
        $(document).ready(function () {
            $('#wanted_create_btn').bind("click", function () {
                var data = $("#wanted_create").serialize();
                $.ajax({
                    type: 'POST',
                    url: "/wanted/createWanted.do",
                    dataType: 'json',
                    data: data,
                    success: function (res) {
                        if (res.success) {
                            alert("发布成功");
                            location.href="wanted_list.jsp";
                        } else {
                            alert("发布失败，请重新操作！");
                        }
                    }
                })
            });

        });
    </script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/wanted_creat.js"></script>
</head>
<body>
<%@ include file="/common/shop_header.jsp" %>
<div class="container">
    <div class="main center">
        <img class="release-icon-main" src="${pageContext.request.contextPath}/images/release-icon.png" alt="">
        <div class="wave-fluid"></div>
        <div class="wantInfo-release-title">发布求购</div>
        <form id="wanted_create" action="" method="post">
            <div class="form-wr">
                <div class="form-must-wr">
                    <div class="form-item l want-title">
                        <div class="form-key">
                            <span>商品标题</span>
                        </div>
                        <div class="form-value">
                            <div class="form-input-wr">
                                <input id="title" name="title" placeholder="最多10个字" value="" type="text"></div>
                        </div>
                    </div>
                    <div class="form-item xl want-desc">
                        <div class="form-key">
                            <span>描述</span>
                        </div>
                        <div class="form-value">
                            <div class="form-input-wr">
                                <textarea name="content" id="desc" placeholder="建议填写对所需求物品的要求"></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="form-item l goods-title">
                        <div class="form-key">
                            <span>期望交易地点</span></div>
                        <div class="form-value">
                            <div class="form-input-wr">
                                <input id="trade_place" name="area" placeholder="" value="" type="text">
                            </div>
                        </div>
                    </div>
                    <div class="form-item m want-price">
                        <div class="form-key">
                            <span>期望价格</span>
                        </div>
                        <div class="form-value">
                            <div class="form-input-wr">
                                <input class="price" id="price" name="price" value="" type="text"></div>
                        </div>
                    </div>
                </div>
                <input id="uuid" name="user.uuid" value="${sessionScope.user.uuid}" type="hidden">
                <button type="button" id="wanted_create_btn" class="form-submit">马上发布</button>
            </div>
        </form>
    </div>
</div>
</body>
</html>