<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="UTF-8">
	<title>车之盟后台登录</title>
	<meta name="renderer" content="webkit">	
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">	
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<meta name="apple-mobile-web-app-status-bar-style" content="black">	
	<meta name="apple-mobile-web-app-capable" content="yes">	
	<meta name="format-detection" content="telephone=no">	
<%@ include file="/styles/common/back/admin_styles_css.jsp"%>
<%@ include file="/styles/common/back/admin_styles_js.jsp"%>
	<!-- load css -->
	<link rel="stylesheet" type="text/css" href="<%=basePath %>styles/admin/layui/layui.css" media="all">
	<link rel="stylesheet" type="text/css" href="<%=basePath %>styles/admin/layui/login.css" media="all">
</head>
<body style="overflow:scroll;overflow-y:hidden;overflow-x:hidden;">
<div class="layui-canvs"></div>
<div class="layui-layout layui-layout-login">
	<h1>
		 <strong>车之盟后台账户注册</strong>
		 <em>Car Union Management System</em>
	</h1>
	<form action="<%=basePath %>/admin/register" method="post">
		
	<div class="layui-user-icon larry-login">
		 <input type="text" placeholder="账号" class="login_txtbx" name="loginName"/>
	</div>
	<div class="layui-pwd-icon larry-login">
		 <input type="password" placeholder="密码" class="login_txtbx" name="loginPwd"/>
	</div>
    <div class="layui-val-icon larry-login">
    	<div class="layui-code-box">
    		<input type="text" id="yzm" name="yzm" placeholder="验证码" maxlength="4" class="login_txtbx">
             <img id="kk" onclick="changeImage();" src="<%=basePath%>styles/images/image.jsp" />
		   <a href="javascript:changeImage();">换一张</a>
    	</div>
    </div>
  
    <div class="layui-submit larry-login">
    	<input type="submit" value="立即注册" class="submit_btn"/>
    </div>
   	</form>
    <div class="layui-login-text">
    	<p>© 1998-2018 CarUnion 版权所有</p>
        <p>北京车之盟科技有限公司</p>
    </div>
</div>

<script type="text/javascript" src="<%=basePath %>styles/admin/layui/layui.all.js"></script>
<script type="text/javascript" src="<%=basePath %>styles/admin/layui/login.js"></script>
<script type="text/javascript" src="<%=basePath %>styles/admin/layui/jparticle.jquery.js"></script>
<script type="text/javascript">
$(function(){
	$(".layui-canvs").jParticle({
		background: "#141414",
		color: "#E6E6E6"
	});
	//登录链接测试，使用时可删除
<%-- 	$(".submit_btn").click(function(){
	  location.href="<%=basePath %>admin/toIndex";
	}); --%>

});

//验证码
function changeImage() {
	document.getElementById("kk").src="<%=basePath%>styles/images/image.jsp?t="+new Date();
}

//得到Cookie
// name = username    name=password
// cookie:username=zilong; password=123
function getCookie(name) {
    var strCookie=document.cookie;
    var arrCookie=strCookie.split("; ");
    for(var i=0;i<arrCookie.length;i++) {
    	// username=zilong
    	// password=123
        var arr=arrCookie[i].split("=");
    	// arr[0]=username     arr[1]=zilong
    	// arr[0]=password     arr[1]=123
        if(arr[0]==name)
            return arr[1];
    }
    return "";
}

// 设置Cookie
// name=username   value=zilong
function setCookie(name,value) {
    var Days = 30;
    var exp = new Date();
    // 设置有效时间
    // exp.getTime()   毫秒数：  1970-1-1   --->  至今   毫秒数
    exp.setTime(exp.getTime() + Days*24*60*60*1000);
    document.cookie = name + "="+ escape (value) + ";expires=" + exp.toGMTString();
}

// 加载页面  
$(function() {
	var usernameStr = "username";
    var passwordStr = "password";
	var reqUsername='${username}';
	// 空的时候，再去找cookie
	if(reqUsername == null || reqUsername == ""){
		// 判断cookie是否存在用户名密码
	    if((getCookie(usernameStr)!=null&&getCookie(usernameStr)!="")&&getCookie(passwordStr)!=null&&getCookie(passwordStr)!=""){
	    	$("#remember").attr("checked","checked");
	        $("#username").val(getCookie(usernameStr));
	        $("#password").val(getCookie(passwordStr));
	    }
	}
	 // 加载页面，给复选框一个点击事件
    $("#remember").click(function(){
        var ischeck=$(this).is(":checked"); 
        var loginVal = "";
        var passwordVal = "";
        // 判断是否选中
        if(ischeck){
            loginVal = $("#username").val();
            passwordVal = $("#password").val();
        }
        // 设置cookie
        setCookie(usernameStr,loginVal);
        setCookie(passwordStr,passwordVal);
    });
});
</script>
</body>
</html>