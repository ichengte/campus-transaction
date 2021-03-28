/*
 * Project: campus-transaction
 * File: user-login.js
 * Date: 2021/3/23 下午6:29
 * Author: TonyJam
 */

$(function () {
    $('#switch_qlogin').click(function () {
        $('#switch_login').removeClass("switch_btn_focus").addClass('switch_btn');
        $('#switch_qlogin').removeClass("switch_btn").addClass('switch_btn_focus');
        $('#switch_bottom').animate({left: '0px', width: '70px'});
        $('#qlogin').css('display', 'none');
        $('#web_qr_login').css('display', 'block');
    });

    $('#switch_login').click(function () {
        $('#switch_login').removeClass("switch_btn").addClass('switch_btn_focus');
        $('#switch_qlogin').removeClass("switch_btn_focus").addClass('switch_btn');
        $('#switch_bottom').animate({left: '154px', width: '70px'});
        $('#qlogin').css('display', 'block');
        $('#web_qr_login').css('display', 'none');

    });

    if (getParam("a") == '0') {
        $('#switch_login').trigger('click');
    }

});


function logintab() {
    scrollTo(0);
    $('#switch_qlogin').removeClass("switch_btn_focus").addClass('switch_btn');
    $('#switch_login').removeClass("switch_btn").addClass('switch_btn_focus');
    $('#switch_bottom').animate({left: '154px', width: '96px'});
    $('#qlogin').css('display', 'none');
    $('#web_qr_login').css('display', 'block');

}


//根据参数名获得该参数 pname等于想要的参数名
function getParam(pname) {
    var params = location.search.substr(1); // 获取参数 平且去掉？
    var ArrParam = params.split('&');
    if (ArrParam.length === 1) {
        //只有一个参数的情况
        return params.split('=')[1];
    } else {
        //多个参数参数的情况
        for (var i = 0; i < ArrParam.length; i++) {
            if (ArrParam[i].split('=')[0] == pname) {
                return ArrParam[i].split('=')[1];
            }
        }
    }
}


var reMethod = "GET",
    pwdmin = 6;

$(document).ready(function () {

    $('#username').focus(function () {
        $('#loginCue').html("<font ><b>请输入用户名</b></font>");
    }).blur(function () {
        if ($('#username').val().length === 0) {
            $('#loginCue').html("<font color='red'><b>用户名不能为空</b></font>");
            return false;
        }
        return true;
    });

    $('#login_button').click(function () {
        if ($('#username').val().length === 0) {
            $('#username').focus().css({
                border: "1px solid red",
                boxShadow: "0 0 2px red"
            });
            $('#loginCue').html("<font color='red'><b>用户名不能为空</b></font>");
            return false;
        } else {
            $('#username').css({
                border: "1px solid #D7D7D7",
                boxShadow: "none"
            });
        }

        if ($('#userpwd').val().length === 0) {
            $('#userpwd').focus().css({
                border: "1px solid red",
                boxShadow: "0 0 2px red"
            });
            $('#loginCue').html("<span style='color:red;'><b>密码不能为空</b></span>");
            return false;
        } else {
            $('#userpwd').css({
                border: "1px solid #D7D7D7",
                boxShadow: "none"
            });
        }
        // 登录
        // $("#login_button").submit();
        $.ajax({
            type: "GET",
            url: "user/login.do",
            dataType: 'json',
            data: {"username": $('#username').val(), "userpwd": $('#userpwd').val()},
            success: function (res) {
                location.href = "user-index.jsp"
            }
        });

        //注册
        // $("#username1").blur(function () {
        //     $.ajax({
        //         type: "GET",
        //         url: "",
        //         data: "uid=" + $("#username1").val() + '&flag=' + 1,
        //         success: function (res) {
        //             //alert("res:"+res+"\n"+"resLength:"+res.length)
        //             if (res.length > 2) {
        //                 $('#username1').css({
        //                     border: "1px solid red",
        //                     boxShadow: "0 0 2px red"
        //                 });
        //                 $("#userCue").html("<font color='red'><b>学号已存在</b></font>");
        //                 return false;
        //             } else {
        //                 $('#username1').css({
        //                     border: "1px solid #D7D7D7",
        //                     boxShadow: "none"
        //                 });
        //                 $("#userCue").html("<font ><b>请继续输入</b></font>");
        //             }
        //         }
        //     });
        // })


        // $('#reg_button').click(function () {
		//
        //     var sqq = /^[1-9]{1}[0-9]{4,9}$/;
		// 	alert(sqq);
        //     regUserid = /^\d{12}$/;
        //     if ($('#username1').val().length !== 12) {
        //         $('#username1').focus().css({
        //             border: "1px solid red",
        //             boxShadow: "0 0 2px red"
        //         });
        //         $('#userCue').html("<font color='red'><b>请输入12位数字学号</b></font>");
        //         return false;
        //     } else {
        //         $('#username1').css({
        //             border: "1px solid #D7D7D7",
        //             boxShadow: "none"
        //         });
        //     }
		//
		//
        //     if ($('#password1').val().length < pwdmin) {
        //         $('#password1').focus().css({
        //             border: "1px solid red",
        //             boxShadow: "0 0 2px red"
        //         });
        //         $('#userCue').html("<font color='red'><b>×密码不能小于" + pwdmin + "位</b></font>");
        //         return false;
        //     } else {
        //         $('#password1').css({
        //             border: "1px solid #D7D7D7",
        //             boxShadow: "none"
        //         });
        //     }
		//
        //     if ($('#password2').val() !== $('#password1').val()) {
        //         $('#password2').focus();
        //         $('#userCue').html("<font color='red'><b>×两次密码不一致！</b></font>");
        //         return false;
        //     }
		//
		//
        //     if (!sqq.test($('#qq').val()) || $('#qq').val().length < 5 || $('#qq').val().length > 12) {
        //         $('#qq').focus().css({
        //             border: "1px solid red",
        //             boxShadow: "0 0 2px red"
        //         });
        //         $('#userCue').html("<span style='color:red;'><b>×QQ号码格式不正确</b></span>");
        //         return false;
        //     } else {
        //         $('#qq').css({
        //             border: "1px solid #D7D7D7",
        //             boxShadow: "none"
        //         });
        //     }
		//
        //     // $('#regForm').submit();
        // });

		// $.ajax({
		// 	type: "GET",
		// 	url: "user/register.do",
		// 	dataType: 'json',
		// 	data: {
		// 		"username": $('#username1').val(),
		// 		"userpwd": $('#userpwd1').val(),
		// 		"name": $('#name').val(),
		// 		"sex": $('#sex').val(),
		// 		"academy": $('#academy').val(),
		// 		"grade": $('#grade').val(),
		// 		"qq": $('#qq').val(),
		// 		"phone": $('#phone').val(),
		// 		"profile": $('#profile').val()
		// 	},
		// 	success: function (res) {
		// 		alert(res.username);
		// 	}
		// });
        //
    });
    $('#reg_button').click(function () {
        // alert($('#username1').val());
        // $('#regForm').submit();
        $("#regForm").ajaxSubmit({
            type : "POST",
            url : "/user/register.do",
            dataType : "json",
            success : function(res) {
                if (res.success){
                    confirm("注册成功，快去登录吧");
                    location.href="user-login.jsp"
                }
            }
        })



        // $.ajax({
        // 	type: "GET",
        // 	url: "user/register.do",
        // 	dataType: 'json',
        //     contentType: false,
        //     cache: false,
        //     processData: false,
        // 	data: {
        // 		"username": $('#username1').val(),
        // 		"userpwd": $('#userpwd1').val(),
        // 		"name": $('#name').val(),
        // 		"sex": $('#sex').val(),
        // 		"academy": $('#academy').val(),
        // 		"grade": $('#grade').val(),
        // 		"qq": $('#qq').val(),
        // 		"phone": $('#phone').val(),
        // 		"profile": $('#profile').val()
        // 	},
        // 	success: function (res) {
        // 		alert(res.username);
        // 	}
        // });


    });
});