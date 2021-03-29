function getUrlParam(name) {
    var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)"); //构造一个含有目标参数的正则表达式对象
    var r = window.location.search.substr(1).match(reg);  //匹配目标参数
    if (r != null) return unescape(r[2]);
    return null; //返回参数值
}
var wid = getUrlParam('wid');
$(function () {
    // alert(wid);
    if (wid){
        initWantedToEdit();
    }
    deleteWanted();
});

function initWantedToEdit() {
    $.ajax({
        type: "POST",
        url: "/wanted/findById.do",
        DataType:'json',
        data:{"wid":wid},
        success:function (res) {
            $('#title').val(res.title);
            $("#desc").val(res.content);
            $("#trade_place").val(res.area);
            $("#price").val(res.price);
        }
    });
}
