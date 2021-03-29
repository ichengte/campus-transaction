
//设置cookie
function setCookie(name, value) {
    document.cookie = name + "=" + escape(value) + "; path=/";
}

//获取cookie
function getCookie(name) {
    var arr, reg = new RegExp("(^| )" + name + "=([^;]*)(;|$)");

    if (arr == document.cookie.match(reg))
        return unescape(arr[2]);
    else
        return null;
}