
function getUrlParam(name) {
            var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)"); //构造一个含有目标参数的正则表达式对象
            var r = window.location.search.substr(1).match(reg);  //匹配目标参数
            if (r != null) return unescape(r[2]); 
            return null; //返回参数值
        }
gid = getUrlParam('gid');

function initProductWithUserInfo(){
	
	$.ajax({
		type:"POST",
		url:"/goods/findById.do",
		dataType:"json",
		data:{"gid":gid},
		success:function(res){
			proInfo = res;
			var phone = res.user.phone.substr(0, 3)
			var qq = res.user.qq.substr(0, 4);
			// alert(phone + qq);
			$(".bigger-photo-box").html(' <a class="bigger-photo hide show" rel="img_group" href="#">' +
					' <img class="bigger" src="/goods/'+res.picture+'"  alt=" '+res.title+' "></a>'
			);
			$("p[class='ershou-title']").html(res.title).after('<div class=" discount"> '+
               	' <span class="buy-price">原价：'+res.buy_price+'<br/></span><span class="ershou-price">卖出价：￥'+res.sell_price+'</span> '+
                ' </div>').after('<p class="bro-counts"><span>'+res.views+'</span>人看了</p>');
			$("#pid").append('<div class="name"><span>商品编号</span></div><div class="value"><span id="pid">'+res.gid+'</span></div>'
			).after(
					'<li class="ershou-time"><div class="name"><span>发布时间</span></div>'+
					'<div class="value"><span class="real-time" id="creat_time">'+res.publish_time+'</span></div></li>'
					
			).after(
					' <li class="ershou-tel" id="contact-saler"><div class="name"><span>联系方式</span></div> '+
					' <div class="value">手机：<span class="user-num" id="user_tel" ">'+phone+'********</span>'+
					' &nbsp;&nbsp;QQ:&nbsp;<span class="user-num" id="user_qq">'+qq+'*****</span></div></li>'
			).after(

					'<li class="ershou-place"><div class="name"><span>交易地点</span></div> '+
                    '<div class="value">'+res.area+'</div></li> '
			).after(
					'<li class="ershou-cert"><div class="name"><span>学院</span></div> '+
                    ' <div class="value"><span id="user_college">'+res.user.academy+'</span>'+
                    ' <span id="user_grade"></span></div></li>'
			).after(
					'<li class="ershou-seller"> <div class="name"><span>卖家</span></div> '+
                    ' <div class="value"><span class="value-name" id="userid">'+res.user.realname+'</span></div>' +
                    '</li>'		
			)
			
			$("div[class='ershou-desc']").append(
					'<div class="desc clearfix"><a href="http://hust.2shoujie.com/profile/107281" target="_top"> '+
					'<img id="user_ph"src="/goods/'+res.picture+'"></a><p id="user_cmt">'+res.content+'</p></div>'
			
			)
			
			
		}
	});
}
$(function () {
	initProductWithUserInfo();
});