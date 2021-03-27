function getUrlParam(name) {
            var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)"); //构造一个含有目标参数的正则表达式对象
            var r = window.location.search.substr(1).match(reg);  //匹配目标参数
            if (r != null) return decodeURI(r[2]); 
            return null; //返回参数值
        }
var urlValCat = getUrlParam('category');

var urlValRank = getUrlParam('rank')

var keyword=getUrlParam('keyword')




//alert('当前页面url参数:'+window.location)

//var url ="productListServlet?cat="+urlValCat+"&searchKey=a";
//var url ="productListServlet?cat="+urlValCat;

$(function(){
	if(keyword != null && keyword !== "" && keyword !== "null"){
		showSearchRes(keyword);
	}else{
		initProducts();
	}
});


function showSearchRes(keyword){
	$.ajax({
		type:"POST",
		url:"productSearchServlet",
		dataType:"json",
		data:{"keyword":keyword},
		success:function(res){
			if(res.length == 0){
				alert("没有查到您要的商品，建议到【全部商品】浏览。")
			} else {
					for(var i = 0; i < res.length; i++){
						$('.items').append(
						'<li class="item"><a href="product_detail.jsp?pid='+res[i].gid+'" class="img" target="_top"><img id="pro_img" src="'+res[i].picture+'" alt="'+res[i].title+'"></a>'
		                    +' <div class="info">'
		                        +' <div class="price">'+res[i].sell_price+'</div>'
		                        +' <div class="name"> '
		                        +' <a href="goods_detail.jsp?gid='+res[i].gid+'" target="_top">'+res[i].title+'</a>'
		                        +' </div>'
		                        +' <div class="department"><span>原价：'+res[i].buy_price+'</span></div>'
		                        +' <div class="place"><span>上架时间：'+res[i].publish_time+'</span></div>'
		                        +' </div>'
		                 +'</li>&nbsp');
				 }
			}
		}
	});
	
}


function initProducts(){
	$.ajax({
		type:"POST",
		url:"productListServlet",
		dataType:"json",
		data:{"cat":urlValCat,'rank':urlValRank},
		success:function(res){
			var list;
			for(var i=0;i<res.length;i++){
				$('.items').append(
				'<li class="item"><a href="product_detail.jsp?pid='+res[i].pid+'" class="img" target="_top"><img id="pro_img" src="'+res[i].pimage+'" alt="'+res[i].pdesc+'"></a>'
                    +' <div class="info">'
                        +' <div class="price">'+res[i].salePrice+'</div>'
                        +' <div class="name"> '
                        +' <a href="product_detail.jsp?pid='+res[i].pid+'" target="_top">'+res[i].pname+'</a>'
                        +' </div>'
                        +' <div class="department"><span>原价：'+res[i].buyPrice+'</span></div>'
                        +' <div class="place"><span>上架时间：'+res[i].creatTime+'</span></div>'
                        +' </div>'
                 +' </li>&nbsp' )
		 }
		}
	});
}




