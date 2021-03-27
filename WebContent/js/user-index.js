/*
 * Project: campus-transaction
 * File: user-index.js
 * Date: 2021/3/23 下午6:29
 * Author: TonyJam
 */


$(document).ready(function () {
    initGoods();
});

function initGoods() {
    $.ajax({
        type: "POST",
        url: "/goods/findAll.do",
        dataType: "json",
        data: {"rank": 0},
        success: function (res) {
            var len = Math.min(res.length, 8);
            for (var i = 0; i < len; i++) {
                if (res[i].recommendation === 1) {
                    res[i].recommendation = "推荐";
                } else {
                    res[i].recommendation = "新品";
                }
            }

			var str = "";
            for (var i = 0; i < len; i++) {
				// alert(i);
                 str += '<li class="item"><a href="common/goods_detail.jsp?gid=' + res[i].gid + '" class="img" target="_top"><img id="pro_img" src="' + 'goods/' + res[i].picture + '" alt="' + res[i].pdesc + '"></a>'
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

            }
			$('.items').html(str);
        }
    });
}



	

		
	
	