function getUrlParam(name) {
    var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)"); //构造一个含有目标参数的正则表达式对象
    var r = window.location.search.substr(1).match(reg);  //匹配目标参数
    if (r != null) return unescape(r[2]);
    return null; //返回参数值
}
// var wid = getUrlParam('wid');

$(function () {
    initWantList();
    // initWantedToEdit();
});

function initWantList() {
    $.ajax({
        type: "POST",
        url: "/wanted/findAll.do",
        DataType:'json',
        success: function (res) {
            for (var i = 0; i < res.length; i++) {
                var str1 = '<li class="want-item"><div class="want-li clearfix"><div class="left"> ' +
                    '<a href=""><img src="/user/' + res[i].user.profile + '" alt="头像"></a></div> ' +
                    '<div class="right"><h4 class="want-name">[求购]<span>' + res[i].title + '</span></h4><p class="want-detail">' + res[i].content + '</p> ' +
                    '<p class="want-attr"><span>期望价格</span><span class="want-price">¥' + res[i].price + '</span><span>期望交易地点：</span> ' +
                    '<span class="want-add">' + res[i].area + '</span><span>' + res[i].createtime + '</span></p><p class="want-contact"> ' +
                    '<p class="want-person">' + res[i].user.realname + '</p> ' +
                    '<span class="mr10">TEL：' + res[i].user.phone + '</span><span>QQ：' + res[i].user.qq + '</span></p> ' +
                    '</div></div></li>';
                $("#want-list").append(str1)
            }
        }
    });
}

