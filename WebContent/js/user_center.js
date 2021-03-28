function getUrlParam(name) {
            var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)"); //构造一个含有目标参数的正则表达式对象
            var r = window.location.search.substr(1).match(reg);  //匹配目标参数
            if (r != null) return unescape(r[2]);
            return null; //返回参数值
        }
var username = getUrlParam('username');

$(document).ready(function(){
	initUserInfo(username);
	initUserGoods(username);
});

function initUserInfo(username){
	$.ajax({
		type:"GET",
		url:"/user/findByUsername.do",
		dataType:"json",
		data:{"username":username},
		success:function(res){
			var realname = res.realname;
			var username = res.username;
			var phone = res.phone;
			var qq = res.qq;
			var profile = res.profile;
			var academy = res.academy;
			var grade = res.grade;
			var sex = res.sex;
			var balance = res.balance;
			var credit = res.credit;
			// alert(balance);
			var str1 = '<div id="account_info"><h2>账户信息</h2>' +
					'<ul class="infos" id="uuid"><li>真实姓名</li><li class="right_info">'+realname+'</li></ul>' +
					'<ul class="infos" id="balance"><li>余额</li><li class="right_info">'+balance+'</li></ul></div>' +
					'<ul class="infos" id="credit"><li>信用分</li><li class="right_info">'+credit+'</li></ul></div>';
			var str2 = '<div id="base_info">' +
			'<h2>基本信息<span id="edit_info">编辑</span><span id="save_info">保存</span></h2>' +
			'<ul class="infos"><li>用户名</li><li class="right_info"><span id="username_span">'+username+'</span><input value="'+username+'" id="username" type="text" name="username" disabled></li></ul> '+
			'<ul class="infos"><li>手机</li><li class="right_info"><span id="phone_span">'+phone+'</span><input value="'+phone+'" id="phone" type="text" name="phone"></li></ul>' +
			'<ul class="infos"><li>QQ</li><li class="right_info"><span id="qq_span">'+qq+'</span><input value="'+qq+'" id="qq" type="text" name="qq"></li></ul>' +
			'<ul class="infos"><li>学院</li><li class="right_info"><span id="academy_span">'+academy+'</span><input value="'+academy+'" id="academy" type="text" name="academy"></li></ul>'+
			'<ul class="infos"><li>年级</li><li class="right_info"><span id="grade_span">'+grade+'</span><input value="'+grade+'"id="grade" type="text" name="grade"></li></ul>'+
			'<ul class="infos"><li>性别</li><li class="right_info"><span id="sex_span">'+sex+'</span><input value="'+sex+'"id="sex" type="text" name="sex"></li></ul>'+
			'</div>';
			var str = str1+str2;
			var myinfo = $(str);
			$("#userpoint").html('<p>'+ res.points+'</p>');

			$("#user_photo").html('<img id="origin_ph" src="user/'+profile+'" alt="大头像">'+
			  ' <img id="change_photo" src="imgs/person_hover.png" alt="更换头像" style="display:none;">');

			$("#user_big_name").html('<p>'+realname+'</p>');
			$("#my_info").append(myinfo);
		}
	});
}


function initUserGoods(username){
	$.ajax({
		type:"POST",
		url:"/goods/findUserGoods.do",
		dataType:"json",
		data:{"username":username},
		success:function(res){
		var count = res.length;
		// alert(count);
		for(var i = 0; i < count; i++) {
			// alert(res[i].status)
			var str1 = "", str = "", str2 = "";
			if (res[i].status == 1){
				res[i].status = "正在出售";
				str1 += '<span class="enshrine_it make_edition" onclick="offShelf('+res[i].gid+ ',' + '0' +');">下架</span>'
				str2 += '<span class="enshrine_it" onclick="sellout('+res[i].gid + ','+ '2' +');">确认售出</span>'
			} else if (res[i].status == 2){
				res[i].status = "已售出";
				str1 += '<span class="enshrine_it make_edition" onclick="onShelf('+res[i].gid+ ',' + '1' +');">上架</span>';
				str2 += '<span class="enshrine_it" onclick="sellout('+res[i].gid + ','+ '2' +'); " style="background:grey;color:whitesmoke;">已售出</span>';
			} else {
				res[i].status = "已下架";
				str1 += '<span class="enshrine_it make_edition" onclick="onShelf('+res[i].gid+ ',' + '1' +');">上架</span>';
				str2 += '<span class="enshrine_it" onclick="sellout('+res[i].gid + ','+ '2' +');">确认售出</span>'
			}
			// alert(res[i].recommendation);
			if (res[i].recommendation){
				str += '<span id="rec" class="enshrine_it make_edition" style="background:grey;color:whitesmoke;">已擦亮</span>';
			} else {
				str += '<span id="rec" class="enshrine_it make_edition" onclick=' + 'refresh(' + res[i].gid + ')>擦亮</span>'
			}
			if (res[i].status == "已下架" || res[i].status == "已售出") str = "";


			var mypro1 = $('<div class="enshr_each" id="prolist">' +
					'<div class="enshr_info"><h2><a href="goods_detail.jsp?gid='+res[i].gid+'" '+
					'title="坚果pro">'+res[i].title+'</a></h2><p>'+res[i].content+'</p>'+
					'<div class="enshr_state"><span id="prostate">状态：'+res[i].status+'</span>' +
					'&nbsp;&nbsp;<span id="prostate">发布时间：'+res[i].publish_time+'</span>'+
					str2+
					str1+
					str+
	                '<a href="goods_publish.jsp?gid='+res[i].gid+'" target="_top"><span class="enshrine_it  make_edition">编辑</span></a> '+
	                '</div></div><a href="goods_detail.jsp?pid='+res[i].pid+'">'+
	                '<img class="enshr_ph" src="/goods/'+res[i].picture+'" alt="'+res[i].title+'"></a></div>');
			$("#onsale_pro").append(mypro1);
		}
		$("#procount").html('<p>'+count+'</p>')

		}
	});
}

function onShelf(gid, status){
	if (!confirm('上架后商品别人将会看到商品，请是否确认上架？')) {
		return;
	}
	$.post('/goods/modifyStatus.do',
		{"gid" : gid, "status": status},
		function(res){
			console.log(res);
			if (res.success) {
				alert("上架成功");
				location.reload();
			} else {
				alert("上架失败，请重新操作");
				location.reload();
			}
		});
}

function offShelf(gid, status){
    if (!confirm('下架后商品别人将看不到，请是否确认下架？')) {
        return;
    }
    $.post('/goods/modifyStatus.do',
    		{"gid" : gid, "status": status},
    		function(res){
    			console.log(res);
		        if (res.success) {
		        	alert("下架成功");
		            location.reload();
		        } else {
					alert("下架失败，请重新操作");
					location.reload();
		        }
    });
}

function sellout(gid, status){
    if (!confirm('确认售出？')) {
        return;
    }
    $.post('/goods/modifyStatus.do',
    		{"gid" : gid,"status":status},
    		function(res){
		       if (res.success) {
		        	alert("恭喜！您又售出一个商品！")
		            location.reload();
		        } else {
		        	alert("售出失败，请重试!")
		        }
    });
}

function refresh(gid){
	if (!confirm('擦亮后，您的商品将靠前展示。')) {
		return;
	}
	$.post('/goods/refresh.do',
		{"gid" : gid},
		function(res){
			if (res.success) {
				alert("恭喜！您已擦亮商品！");
				location.reload();
			} else {
				alert("对不起，擦亮失败，请重试")
			}
		});
}
