<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%--
  ~ Project: campus-transaction
  ~ File: shop_left.jsp
  ~ Date: 2021/3/23 下午6:29
  ~ Author: TonyJam
  --%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>


    <script src="${pageContext.request.contextPath}/js/hm.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/js/common.js" type="text/javascript"></script>


    <link media="all" href="${pageContext.request.contextPath}/css/index.css" type="text/css" rel="stylesheet">
</head>
<body>
<nav class="ease2">
    <ul>
        <li class="blank-head">
            <a href="javascript:;"></a>
        </li>

        <li class="category-12 catg">
            <a href="${pageContext.request.contextPath}/common/goods_list.jsp?category=0" target="_top">
                <i class="nav-icons">
                    <img src="${pageContext.request.contextPath}/images/12.png" alt="全部商品"></i>
                <h3>全部商品</h3>
            </a>
        </li>

        <li class="category-2 catg">
            <a href="${pageContext.request.contextPath}/common/goods_list.jsp?category=1" target="_top">
                <i class="nav-icons">
                    <img src="${pageContext.request.contextPath}/images/2.png" alt="手机"></i>
                <h3>手机</h3>
            </a>
            <div class="sub-nav">
                <span>
                    <a href="${pageContext.request.contextPath}/common/goods_list.jsp?category=101" target="_top">手机</a>
                    <a href="${pageContext.request.contextPath}/common/goods_list.jsp?category=102"
                       target="_top">手机配件</a>
                </span>
            </div>
        </li>
        <li class="category-3 catg">
            <a href="${pageContext.request.contextPath}/common/goods_list.jsp?category=2" target="_top">
                <i class="nav-icons">
                    <img src="../images/3.png" alt="电脑"></i>
                <h3>电脑</h3></a>
            <div class="sub-nav">
                <span>
                    <a href="${pageContext.request.contextPath}/common/goods_list.jsp?category=201"
                       target="_top">笔记本</a>
                    <a href="${pageContext.request.contextPath}/common/goods_list.jsp?category=202"
                       target="_top">台式机</a>
                    <a href="${pageContext.request.contextPath}/common/goods_list.jsp?category=203" target="_top">平板</a>
                </span>
            </div>
        </li>
        <li class="category-4 catg">
            <a href="${pageContext.request.contextPath}/common/goods_list.jsp?category=3" target="_top">
                <i class="nav-icons">
                    <img src="${pageContext.request.contextPath}/images/4.png" alt="数码配件"></i>
                <h3>影音娱乐</h3>
            </a>
            <div class="sub-nav">
                <span>
                    <a href="${pageContext.request.contextPath}/common/goods_list.jsp?category=301" target="_top">耳机</a>
                    <a href="${pageContext.request.contextPath}/common/goods_list.jsp?category=302" target="_top">mp3/mp4</a>
                    <a href="${pageContext.request.contextPath}/common/goods_list.jsp?category=303"
                       target="_top">游戏机</a>
                    <a href="${pageContext.request.contextPath}/common/goods_list.jsp?category=304" target="_top">键盘</a>
                    <a href="${pageContext.request.contextPath}/common/goods_list.jsp?category=305" target="_top">鼠标</a>
                </span>
            </div>
        </li>
        <li class="category-5 catg">
            <a href="${pageContext.request.contextPath}/common/goods_list.jsp?category=4" target="_top">
                <i class="nav-icons">
                    <img src="${pageContext.request.contextPath}/images/5.png" alt="数码"></i>
                <h3>数码配件</h3></a>
            <div class="sub-nav">
                <span>
                    <a href="../common/goods_list.jsp?category=401" target="_top">移动硬盘</a>
                    <a href="../common/goods_list.jsp?category=402" target="_top">相机</a>
                    <a href="../common/goods_list.jsp?category=403" target="_top">显示器</a>
                </span>
            </div>
        </li>

        <li class="category-7 catg">
            <a href="${pageContext.request.contextPath}/common/goods_list.jsp?category=5" target="_top">
                <i class="nav-icons">
                    <img src="${pageContext.request.contextPath}/images/7.png" alt="运动健身"></i>
                <h3>运动健身</h3></a>
            <div class="sub-nav">
                <span>
                    <a href="${pageContext.request.contextPath}/common/goods_list.jsp?category=501" target="_top">篮球</a>
                    <a href="${pageContext.request.contextPath}/common/goods_list.jsp?category=502" target="_top">足球</a>
                    <a href="${pageContext.request.contextPath}/common/goods_list.jsp?category=503" target="_top">球拍</a>
                </span>
            </div>
        </li>
        <li class="category-8 catg">
            <a href="../common/goods_list.jsp?category=6" target="_top">
                <i class="nav-icons">
                    <img src="../images/8.png" alt="衣物伞帽"></i>
                <h3>衣物鞋帽</h3></a>
            <div class="sub-nav">
                <span>
                    <a href="${pageContext.request.contextPath}/common/goods_list.jsp?category=601" target="_top">上衣</a>
                    <a href="${pageContext.request.contextPath}/common/goods_list.jsp?category=602" target="_top">裤子</a>
                    <a href="${pageContext.request.contextPath}/common/goods_list.jsp?category=603" target="_top">背包</a>
                    <a href="${pageContext.request.contextPath}/common/goods_list.jsp?category=604" target="_top">雨伞</a>
                    <a href="${pageContext.request.contextPath}/common/goods_list.jsp?category=605" target="_top">鞋</a>
                    <a href="${pageContext.request.contextPath}/common/goods_list.jsp?category=606" target="_top">配饰</a>
                </span>
            </div>
        </li>
        <li class="category-11 catg">
            <a href="${pageContext.request.contextPath}/common/goods_list.jsp?category=7" target="_top">
                <i class="nav-icons">
                    <img src="../images/11.png" alt="生活娱乐"></i>
                <h3>生活娱乐</h3></a>
            <div class="sub-nav">
                <span>
                    <a href="${pageContext.request.contextPath}/common/goods_list.jsp?category=701" target="_top">乐器</a>
                    <a href="${pageContext.request.contextPath}/common/goods_list.jsp?category=702"
                       target="_top">虚拟账号</a>
                    <a href="${pageContext.request.contextPath}/common/goods_list.jsp?category=703"
                       target="_top">会员卡</a>
                    <a href="${pageContext.request.contextPath}/common/goods_list.jsp?category=704"
                       target="_top">化妆品</a>
                </span>
            </div>
        </li>
        <li class="category-9 catg">
            <a href="${pageContext.request.contextPath}/common/goods_list.jsp?category=8" target="_top">
                <i class="nav-icons">
                    <img src="${pageContext.request.contextPath}/images/9.png" alt="图书教材"></i>
                <h3>图书教材</h3></a>
            <div class="sub-nav">
                <span>
                    <a href="${pageContext.request.contextPath}/common/goods_list.jsp?category=801" target="_top">教材</a>
                    <a href="${pageContext.request.contextPath}/common/goods_list.jsp?category=802" target="_top">考研</a>
                    <a href="${pageContext.request.contextPath}/common/goods_list.jsp?category=803"
                       target="_top">课外书</a>
                </span>
            </div>
        </li>
        <li class="category-1 catg">
            <a href="${pageContext.request.contextPath}/common/goods_list.jsp?category=9" target="_top">
                <i class="nav-icons">
                    <img src="${pageContext.request.contextPath}/images/b1.png" alt="校园代步"></i>
                <h3>交通出行</h3>
            </a>
            <div class="sub-nav">
                <span>
                    <a href="${pageContext.request.contextPath}/common/goods_list.jsp?category=901"
                       target="_top">自行车</a>
                    <a href="${pageContext.request.contextPath}/common/goods_list.jsp?category=902"
                       target="_top">电动车</a>
                    <a href="${pageContext.request.contextPath}/common/goods_list.jsp?category=903"
                       target="_top">公交卡</a>
                </span>
            </div>
        </li>


        <li class="category-6 catg">
            <a href="${pageContext.request.contextPath}/common/goods_list.jsp?category=10" target="_top">
                <i class="nav-icons">
                    <img src="../images/6.png" alt="电器"></i>
                <h3>个人技能</h3></a>
            <div class="sub-nav">
                <span>
                    <a href="${pageContext.request.contextPath}/common/goods_list.jsp?cat=1001" target="_top">摄影</a>
                    <a href="${pageContext.request.contextPath}/common/goods_list.jsp?cat=1002" target="_top">绘画</a>
                </span>
            </div>
        </li>
        <li class="category-12 catg">
            <a href="${pageContext.request.contextPath}/common/goods_list.jsp?category=11" target="_top">
                <i class="nav-icons">
                    <img src="${pageContext.request.contextPath}/images/12.png" alt="其他"></i>
                <h3>其他</h3>
            </a>
        </li>
    </ul>
</nav>
</body>
</html>