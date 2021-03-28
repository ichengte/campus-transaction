
var pid;

function getUrlParam(name) {
            var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)"); //构造一个含有目标参数的正则表达式对象
            var r = window.location.search.substr(1).match(reg);  //匹配目标参数
            if (r != null) return unescape(r[2]); 
            return null; //返回参数值
        }
gid = getUrlParam('gid');

$(function(){
	if(!gid){
		alert(gid);
		initProducToEdit();
	}
});

function initProducToEdit(){
	$.ajax({
		type:"POST",
		url:"productServlet",
		dataType:"json",
		data:{"gid":gid},
		success:function(res){

		}
	})
}