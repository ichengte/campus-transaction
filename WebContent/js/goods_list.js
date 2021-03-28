function getUrlParam(name) {
    var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)"); //构造一个含有目标参数的正则表达式对象
    var r = window.location.search.substr(1).match(reg);  //匹配目标参数
    if (r != null) return decodeURI(r[2]);
    return null; //返回参数值
}

var category = getUrlParam('category');

var rank = getUrlParam('rank');

var keyword = getUrlParam('keyword');



//alert('当前页面url参数:'+window.location)

//var url ="productListServlet?cat="+urlValCat+"&searchKey=a";
//var url ="productListServlet?cat="+urlValCat;

$(function () {
    // alert(keyword);
    if (keyword != null && keyword !== "" && keyword !== null) {
        showSearchRes(keyword);
    } else {
		initGoods();
    }
});




function showSearchRes(keyword) {
    $.ajax({
        type: "POST",
        url: "/goods/searchByKeyword.do",
        dataType: "json",
        data: {"keyword": keyword, "rank": rank},
        success: function (res) {
            if (res.length == 0) {
                alert("没有查到您要的商品，建议到【全部商品】浏览。")
            } else {
                // alert(res[0].category.name)
                $('.rank-title').eq(0).attr("href", "/common/goods_list.jsp?rank=publish_time&keyword=" + keyword);
                $('.rank-title').eq(1).attr("href", "/common/goods_list.jsp?rank=credit&keyword=" + keyword);
                $('.rank-title').eq(2).attr("href", "/common/goods_list.jsp?rank=sell_price&keyword=" + keyword);
                $('.rank-title').eq(3).attr("href", "/common/goods_list.jsp?rank=recommendation&keyword=" + keyword);
                var len = Math.min(res.length, 8);
                for (var i = 0; i < len; i++) {

                    var str = '<li class="item"><a href="/common/goods_detail.jsp?gid=' + res[i].gid + '" class="img" target="_top"><img id="pro_img" src="' + '/goods/' + res[i].picture + '" alt="' + res[i].title + '"></a>'
                        + ' <div class="info">'
                        + ' <div class="price">' + res[i].sell_price + '</div>'
                        + ' <div class="name">'
                        + ' <a style="padding-left: 47px;" href="product_detail.jsp?gid=' + res[i].gid + '" target="_top">' + res[i].title + '</a>'
                        + ' </div>'
                        + ' <div class="department" style="text-align: left"><span>原价：￥' + res[i].buy_price + '</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>现价：￥' + res[i].sell_price + '</span></div>'
                        + ' <div class="place"><span>上架时间：' + res[i].publish_time + '</span></div>';

                    if (res[i].recommendation === "推荐") {
                        str += '<div class="school0"><span>' + res[i].recommendation + '</span></div></div> </li>&nbsp';
                    }
                    if (res[i].recommendation === "新品") {
                        str += '<div class="school"><span>' + res[i].recommendation + '</span></div></div> </li>&nbsp';
                    }

                    $('.items').append(str);
                }
            }
        }
    });

}


function initGoods(){
    var url = "/goods/searchByCategory.do";
    if (category == 0 || category == undefined || category == 'undefined'){
        url = "/goods/findAll.do";
    }
	$.ajax({
		type:"POST",
		url:url,
		dataType:"json",
		data:{"rank": rank, "category": category, "keyword": keyword},
		success: function (res) {
			if (res.length == 0) {
				alert("没有查到您要的商品，建议到【全部商品】浏览。")
			} else {
                $('.rank-title').eq(0).attr("href", "/common/goods_list.jsp?rank=publish_time&category=" + category);
                $('.rank-title').eq(1).attr("href", "/common/goods_list.jsp?rank=credit&category=" + category);
                $('.rank-title').eq(2).attr("href", "/common/goods_list.jsp?rank=sell_price&category=" + category);
                $('.rank-title').eq(3).attr("href", "/common/goods_list.jsp?rank=recommendation&category=" + category);
				var len = Math.min(res.length, 8);
				for (var i = 0; i < len; i++) {
                    // alert(res[i].sell_price)
					var str = '<li class="item"><a href="common/goods_detail.jsp?gid=' + res[i].gid + '" class="img" target="_top"><img id="pro_img" src="' + '/goods/' + res[i].picture + '" alt="' + res[i].title + '"></a>'
						+ ' <div class="info">'
						+ ' <div class="price">' + res[i].sell_price + '</div>'
						+ ' <div class="name">'
						+ ' <a style="padding-left: 47px;" href="product_detail.jsp?gid=' + res[i].gid + '" target="_top">' + res[i].title + '</a>'
						+ ' </div>'
						+ ' <div class="department" style="text-align: left"><span>原价：￥' + res[i].buy_price + '</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>现价：￥' + res[i].sell_price + '</span></div>'
						+ ' <div class="place"><span>上架时间：' + res[i].publish_time + '</span></div>';

					if (res[i].recommendation === "推荐") {
						str += '<div class="school0"><span>' + res[i].recommendation + '</span></div></div> </li>&nbsp';
					}
					if (res[i].recommendation === "新品") {
						str += '<div class="school"><span>' + res[i].recommendation + '</span></div></div> </li>&nbsp';
					}
					$('.items').append(str);
				}
			}
		}

	})
}




