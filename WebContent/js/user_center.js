function getUrlParam(name) {
            var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)"); //构造一个含有目标参数的正则表达式对象
            var r = window.location.search.substr(1).match(reg);  //匹配目标参数
            if (r != null) return unescape(r[2]);
            return null; //返回参数值
        }
var username = getUrlParam('username');

$(function(){
	initUserInfo(username);
	initUserGoods(username);
	initWantList(username);
});

function initUserInfo(username){
	$.ajax({
		type:"GET",
		url:"/user/findByUsername.do",
		dataType:"json",
		data:{"username":username},
		success:function(res){
			// alert("edit")
			var realname = res.realname;
			var username = res.username;
			var phone = res.phone;
			var qq = res.qq;
			var academy = res.academy;
			var grade = res.grade;
			var sex = res.sex;
			var balance = res.balance;
			var credit = res.credit;
			var profile = res.profile
			// alert(balance);
			var str1 = '<div id="account_info"><h2>账户信息</h2><form enctype="multipart/form-data" id="myprofile"><input name="user.uuid" value="'+ res.uuid +'" type="text" hidden>' +
				'<ul class="infos" id="uuid"><li><span id="user_photo" onmouseleave="ml()" onmouseenter="me()"><input onchange="change_profile()" name="file" type="file" style="position:absolute;z-index:999;opacity:0;width:180px;height:180px;margin-top:0px;cursor: pointer;background-color: border: 0"></span></li></ul>' +
					'<ul class="infos" id="uuid"><li>真实姓名</li><li class="right_info">'+realname+'</li></ul>' +
					'<ul class="infos" id="balance"><li>余额</li><li class="right_info">'+balance+'</li></ul></div>' +
					'<ul class="infos" id="credit"><li>信用分</li><li class="right_info">'+credit+'</li></ul></form></div>';
			var str2 = '<div id="base_info">' +
			'<h2>基本信息<span id="edit_info" onclick="edit()">编辑</span><span id="save_info" onclick="save()">保存</span></h2>' +
			'<ul class="infos"><li>用户名</li><li class="right_info"><span id="username_span">'+username+'</span><input value="'+username+'" id="username" type="text" name="username" disabled></li></ul> '+
			'<ul class="infos"><li>手机</li><li class="right_info"><span id="phone_span">'+phone+'</span><input value="'+phone+'" id="phone" type="text" name="phone"></li></ul>' +
			'<ul class="infos"><li>QQ</li><li class="right_info"><span id="qq_span">'+qq+'</span><input value="'+qq+'" id="qq" type="text" name="qq"></li></ul>' +
			'<ul class="infos"><li>学院</li><li class="right_info"><span id="academy_span">'+academy+'</span><input value="'+academy+'" id="academy" type="text" name="academy"></li></ul>'+
			'<ul class="infos"><li>年级</li><li class="right_info"><span id="grade_span">'+grade+'</span><input value="'+grade+'"id="grade" type="text" name="grade"></li></ul>'+
			'<ul class="infos"><li>性别</li><li class="right_info"><span id="sex_span">'+sex+'</span><input value="'+sex+'"id="sex" type="text" name="sex"></li></ul>'+
			'</div>';
			var str = str1+str2;
			var myinfo = $(str);


			$("#my_info").append(myinfo);
			$("#user_photo").append('<img id="origin_ph" src="/user/'+profile+'" alt="大头像">'+
				' <img id="change_photo" src="/images/person_hover.png" alt="更换头像" style="display:none;">');
			$("#user_big_name").html('<p>'+realname+'</p>');
		}
	});
}

function change_profile() {
	$("#myprofile").ajaxSubmit({
		url:"/user/changeProfile.do",
		dataType:'json',
		type:'POST',
		success: function (res) {
			if (res.success){
				alert("修改成功");
				location.reload();
			} else {
				alert("修改失败，请重新操作");
			}
		}
	})
}

function me(){
	// alert("111")
	$("#origin_ph").css({
		"display": "block",
		"opacity":"0.2"
	});
	$("#change_photo").css({
		"display": "block",
		"opacity":"0.8"
	})
}
function ml() {
	// alert("111")
	$("#change_photo").css({
		"display": "none"
	})
	$("#origin_ph").css({
		"opacity":"1"
	});
}

function edit(){
	$(this).css({
		display: "none"
	});
	$("#save_info").css({
		display: "block"
	});
	$(".right_info span").css({
		display: "none"
	});
	$(".right_info input").css({
		display: "inline"
	});
}

function save(){
	var username = $("#username").val(),
		phone = $("#phone").val(),
		qq = $("#qq").val(),
		academy=$("#academy").val(),
		grade=$("#grade").val(),
		sex=$("#sex").val()
	$.post(
		'/user/saveInfo.do',
		{
			username : username,
			phone : phone,
			qq : qq,
			academy:academy,
			grade:grade,
			sex:sex
		},
		function(res) {
			$("#qq_span").text(qq);
			$("#phone_span").text(phone);
			$("#username_span").text(username);
			$("#academy_span").text(academy);
			$("#grade_span").text(grade);
			$("#sex_span").text(sex);
			// alert(resp);
			$("#save_info").css({
				display: "none"
			});
			$("#edit_info").css({
				display: "block"
			});
			$(".right_info input").css({
				display: "none"
			});
			$(".right_info span").css({
				display: "inline"
			});
		}
	);
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
				str2 += '<span class="enshrine_it" style="background:grey;color:whitesmoke;">已售出</span>';
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
					str+'<span id="rec" class="enshrine_it make_edition" onclick=' + 'deleteGoods(' + res[i].gid + ')>删除</span>'+
	                '<a href="goods_publish.jsp?edit=1&gid='+res[i].gid+'" target="_top"><span class="enshrine_it  make_edition">编辑</span></a> '+
	                '</div></div><a href="goods_detail.jsp?gid='+res[i].gid+'">'+
	                '<img class="enshr_ph" src="/goods/'+res[i].picture+'" alt="'+res[i].title+'"></a></div>');
			$("#onsale_pro").append(mypro1);
		}
		$("#procount").html('<p>'+count+'</p>')

		}
	});
}

function deleteGoods(gid) {
	if (!confirm('确定要删除吗？')) {
		return;
	}
	$.post('/goods/delete.do',
		{"gid" : gid},
		function(res){
			if (res.success) {
				alert("删除成功");
				location.reload();
			} else {
				alert("删除失败，请重新操作");
				location.reload();
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

function initWantList() {
	$.ajax({
		type: "POST",
		url: "/wanted/findByUsername.do",
		DataType:'json',
		data:{"username":username},
		success: function (res) {
			for (var i = 0; i < res.length; i++) {
				var str1 = '<li class="want-item"><div class="want-li clearfix"> ' +
					'<div class="right"><h4 class="want-name">[求购]<span>' + res[i].title + '</span></h4><p class="want-detail">' + res[i].content + '</p> ' +
					'<p class="want-attr"><span>期望价格</span><span class="want-price">¥' + res[i].price + '</span><span>期望交易地点：</span> ' +
					'<span class="want-add">' + res[i].area + '</span><span>' + res[i].createtime + '</span></p><p class="want-contact"> ' +
					'<p class="want-person">' + res[i].user.realname + '</p> ' +
					'<span class="mr10">TEL：' + res[i].user.phone + '</span><span>QQ：' + res[i].user.qq + '</span></p> ' +
					'<a href="/common/wanted_creat.jsp?wid='+res[i].wid+'" target="_top"><span class="enshrine_it  make_edition">编辑</span></a> '+
					'<span class="enshrine_it  make_edition" onclick=' + 'deleteWanted(' + res[i].wid + ')>删除</span> '+
					'</div></div></li>';

				$(".my-want-list").append(str1);
			}
		}
	});
}

function deleteWanted(wid) {
	if (!confirm("真的要删除吗？")){
		return;
	}
	$.ajax({
		url:"/wanted/delete.do",
		dataType:"json",
		type:"POST",
		data:{"wid": wid},
		success:function (res) {
			if (!res.success){
				alert("删除失败，请重新操作");
			} else {
				alert("删除成功");
				location.reload();
			}
		}
	})
}
