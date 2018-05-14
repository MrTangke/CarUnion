<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width,initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <title>车之盟 车景实况</title>
    <%@ include file="/styles/common/desk/styles_css.jsp"%>
	<%@ include file="/styles/common/desk/styles_js.jsp"%>
    <link href="//atenza.faw-mazda.com/static/pc/js/video/video-js.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="//atenza.faw-mazda.com/static/pc/css/base.css" />
    <link rel="stylesheet" href="//atenza.faw-mazda.com/static/pc/css/content.css" />
    <script src="//atenza.faw-mazda.com/static/pc/js/jquery-1.11.1.min.js"></script>
    <script src="//atenza.faw-mazda.com/static/pc/js/content.js"></script>
    <script src="//atenza.faw-mazda.com/static/pc/js/respond.min.js"></script>
    <script type="text/javascript" src="//atenza.faw-mazda.com/static/pc/js/nav.js"></script>
    <script type="text/javascript" src="//atenza.faw-mazda.com/static/pc/js/jquery.cookie.js"></script>
<script type="text/javascript" src="//atenza.faw-mazda.com/static/pc/js/jquery.query.js"></script>
<style type="text/css">
	#carSel a{cursor: pointer;}
</style>
<!-- Google Tag Manager -->
<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
})(window,document,'script','dataLayer','GTM-KG6WVL');</script>
<!-- End Google Tag Manager -->
<!--监测代码 cig dc code -->
<script type="text/javascript" >
(function() {
var dc = document.createElement('script'); dc.type = 'text/javascript'; dc.async = true;
dc.src = ('https:' == document.location.protocol ? 'https://' : 'http://') + 'dcjs.cig.com.cn/dc.js?93';
var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(dc, s);
})();
</script>
  </head>

  <body> 
 <div class="egc-top">
		<div class="nav-cent">
			<div class="top-r" style="float: right;font-size: 12px;">
				<c:if test="${user==null}">
					<a href="#" id="b-regist">注册&nbsp;&nbsp;</a><font color="gray">|</font>
					<a href="#" id="b-login" class="b-login" >登陆</a>
				</c:if>
				<c:if test="${user!=null}">
					<a id="name9"><b>${sessionScope.user.userName}</b></a><font color="gray">|</font>
					<a href="<%=basePath%>deskUser/toUser?userId=${sessionScope.user.userId}" id="person">个人主页</a><font color="gray">|</font>
					<a href="<%=basePath%>desk/quit" id="person">退出</a>
				</c:if>
			</div>
			<div class="top-l" style="float: left;font-size: 12px;">全国统一客服热线：157-1880-5811</div>
			<div class="clear_fix"></div>
		</div>
	</div>
	<div class="navigation">
		<div class="nav-cent">
			<div class="logo">
				<a href="<%=basePath%>desk/toIndex"><img
					src="<%=basePath%>img/desk/index_img/logo.png" width="240" /></a>
			</div>
			
			<div class="sea">
				<div class="egc-sea-box">
					<form action="<%=basePath%>deskCar/toBuy" method="post">
					<input type="text" class="sea-ipt-txt" placeholder="搜索您想要的车" value="${carName}" name="carName"/> <input
						type="submit" class="search-btn" value="搜索" style="border: none;"></form>
				</div>
			</div>
			<div class="hot-phone">
				<i></i> <span class="js-change-phone">157-1880-5811</span>
			</div>
		</div>
	</div>
	<ul class="navmenu">
		<li><a href="<%=basePath%>desk/toIndex" style="color: white;">首页</a><span></span></li>
		<li><a href="<%=basePath%>deskCar/toBuy" style="color: white;">我要买车</a><span></span></li>
		<li><a href="<%=basePath%>deskCar/toCarList" style="color: white;">预约试驾</a><span></span></li>
		<li><a href="<%=basePath%>desk/toEvent" style="color: white;">优惠活动</a><span></span></li>
		<li><a href="<%=basePath%>desk/toReport" style="color: white;">网站精选</a><span></span></li>
	</ul>
	<div class="clear_fix"></div>
	<div class="stress-search-box row">
		<div class="stress-close">
			<a href="javascript:;"></a>
		</div>
		<div class="nav-cents">
			<ul>
				<li class="logo"><a href="<%=basePath%>desk/toIndex"><img
						src="<%=basePath%>img/desk/index_img/logo.png" width="180" /></a></li>
				<li><a href="<%=basePath%>desk/toIndex">首页</a></li>
				<li><a href="<%=basePath%>deskCar/toBuy">我要买车</a></li>
				<li><a href="<%=basePath%>deskCar/toCarList">预约试驾</a><span></span></li>
				<li><a href="<%=basePath%>desk/toEvent">优惠活动</a></li>
				<li><a href="<%=basePath%>desk/toReport">网站精选</a></li>
			</ul>
			<div class="seas">
				<div class="egc-sea-box">
					<input type="text" class="sea-ipt-txt" placeholder="搜索您想要的车">
					<a href="#" class="search-btn">搜索</a>
				</div>
			</div>
		</div>
	</div>

 <link rel="stylesheet" href="//atenza.faw-mazda.com/static/pc/css/360.css" />
		
		<!-- page 1 -->
		<div class="cti-page-wrap swiper-slide">
			<!-- p1 backdrop -->
			<div class="p1-background cti-background"><img src='//atenza.faw-mazda.com/static/pc/images/360/bg.jpg' class="cti-bg"/></div> 
			
			<!-- main content -->
			<h2 class="tit">全景展示</h2>
			<div style="height: 752px;">
			<div class="cti-stage">
				<div class="cti-360-car">
					<div class="carframes">
						<div id="carframes"></div>
					</div>
				</div> 
				<div class="cti-color-btn">
					<div class="color active" ><div class="cti-color-tit" style="color: white" >魂动红</div><div class="img"><img src="//atenza.faw-mazda.com/static/pc/images/360/btn1.png"/></div></div>
					<div class="color" ><div class="cti-color-tit" style="color: white" >星际蓝</div><div class="img"><img src="//atenza.faw-mazda.com/static/pc/images/360/btn2.png"/></div></div>
					<div class="color" ><div class="cti-color-tit" style="color: white" >紫晶檀</div><div class="img"><img src="//atenza.faw-mazda.com/static/pc/images/360/btn3.png"/></div></div>
					<div class="color" ><div class="cti-color-tit" style="color: white" >极夜黑</div><div class="img"><img src="//atenza.faw-mazda.com/static/pc/images/360/btn4.png"/></div></div>
					<div class="color" ><div class="cti-color-tit" style="color: white" >幻影银</div><div class="img"><img src="//atenza.faw-mazda.com/static/pc/images/360/btn5.png"/></div></div>
					<div class="color" ><div class="cti-color-tit" style="color: white" >珠光白</div><div class="img"><img src="//atenza.faw-mazda.com/static/pc/images/360/btn6.png"/></div></div>
				</div>
			</div>
			<div class="cti-inner-wrap">
				<div class="cti-360-btn">
					
				</div>  
			</div>
			</div>
		</div> 
		
		<div class="cti-bottom">
            <img class="cti-zoom" src="//atenza.faw-mazda.com/static/pc/images/logo03.png"/>
            <!-- share area -->
            <div class="cti-share-wrap">                          <div class="bdsharebuttonbox bdshare-button-style1-24" data-bd-bind="1479453771421"> <a href="#" class="bds_qzone" data-cmd="qzone" title="分享到QQ空间"></a> <a href="#" class="bds_tsina" data-cmd="tsina" title="分享到新浪微博"></a><a href="#" class="bds_renren" data-cmd="renren" title="分享到人人网"></a> <a href="#" class="bds_tqf" data-cmd="tqf" title="腾讯朋友"></a> </div>
<div>
                          <script>
                        window._bd_share_config = {
                            common : {
                                "bdSnsKey":{},
                                "bdText":"",
                                "bdMini":"2",
                                "bdMiniList":false,
                                "bdPic":"",
                                "bdStyle":"1",
                                "bdSize":"16"
                            },
                            share : [{
                                "bdSize" : 24,
                            }],
                            
                            selectShare : [{
                                "bdselectMiniList" : ['qzone','tsina','tqq','renren','weixin','tqf']
                            }]
                        }
                        with(document)0[(getElementsByTagName('head')[0]||body).appendChild(createElement('script')).src='http://bdimg.share.baidu.com/static/api/js/share.js?cdnversion='+~(-new Date()/36e5)];
                        </script> 
                </div>
                <img src="//atenza.faw-mazda.com/static/pc/images/erweima.png" class="cti-qrcode"/>
            </div> 
        </div>
<!--底部-->
	<div class="ftWrap">
		<div class="foot">
			<div class="cent">
				<div class="relate">
					<div class="items">
						<div class="tit">
							<i class="icon-angle-right"></i>交易帮助
						</div>
						<div class="con">
							<a href="<%=basePath %>desk/toAbout">买车帮助</a> <a href="<%=basePath %>desk/toAbout">卖车帮助</a> <a href="<%=basePath %>desk/toAbout">过户帮助</a>
						</div>
					</div>
					<div class="items">
						<div class="tit">
							<i class="icon-angle-right"></i>客服中心
						</div>
						<div class="con">
							<a href="<%=basePath %>desk/toAbout">网站合作</a> <a href="<%=basePath %>desk/toAbout">关于我们</a> <a
								href="<%=basePath %>desk/toAbout">联系我们</a>
						</div>
					</div>
					<div class="items">
						<div class="tit">
							<i class="icon-angle-right"></i>购车指南
						</div>
						<div class="con">
							<a href="<%=basePath %>desk/toAbout">购车帮助</a>
						</div>
					</div>
					<div class="app-section">
						<img class="js-delayed-img"
							src="<%=basePath%>img/desk/index_img/f_wx.jpg">
						<div class="title">扫码关注微信</div>
						<p>
							随时随地，秒杀好车<br /> 优质个人二手车
						</p>
					</div>
					<div class="items last">
						<div class="tel">
							<h1>157-1880-5811</h1>
							<p>周一至周日 8:00-18:00</p>
							<p>免费咨询(咨询、建议、投诉)</p>
							<a href="http://wpa.qq.com/msgrd?v=3&uin=982165738&site=qq&menu=yes" target="_blank" class="kf"><i class="kf-icon"></i>在线客服</a>
						</div>
						<div class="tel-mb">
							<p>
								<span>157-1880-5811</span>周一至周日 8:00-18:00(仅收市话费)
							</p>
							<a href="#" class="kf"><i class="kf-icon"></i>在线客服</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="copyright">
			<div class="cent" style="font-size: 12px;">Copyright © 1998-2018, CarUnion.com,All Rights
				Reserved 京ICP备10000000号-1</div>
		</div>
	</div>
<!--会员登录和注册弹出框开始-->
	<div id="popBox">
		<div class="popCont">
			<a class="p_closed">关闭</a>
			<div class="p-tab">
				<a>会员登录<i></i></a><a>会员注册<i></i></a>
			</div>
			<div class="p-detail" style="background:url(<%=basePath%>upload/20180420/67d701c6-2f7a-4634-bad2-47838e806ffc.jpg ); height:395; width:600;">
				<div class="p-dl" >
						<ul class="login-items ">
							<li><label>用户名</label> <input class="input" type="text"
								value="" maxlength="32" name="userName"  id="userName" placeholder="请输入您的用户名" style="width: 240px;" value="${userName}">
							</li>
							<li><label >密码</label> <input class="input" type="password"
								value="" maxlength="16" name="userPwd" id="userPwd" placeholder="请输入您的密码" style="width: 240px;" value="${userPwd}"></li>
							<li>
							<label >验证码</label>
						    <input type="text" id="yzm" name="yzm" placeholder="验证码" maxlength="4" class="input" style="width: 120px;">
                            <img id="kk" onclick="changeImage();" src="<%=basePath%>styles/images/image.jsp" style="height: 40px"/>
		           
							</li>
						</ul>
						<div class="login-check" style="padding-top: 0px;">	 
                            <input type="checkbox" name="online" id="remember" value="">
                         	<span>记住用户名密码</span>
                        	<a href="javascript:void(0)" onclick="forget()" style="color:#1abd32;position:absolute ;top: 0px;">忘记密码？</a>	
						</div>
						<div class="login-button">
							<!-- <input type="hidden" value="" name="carid" class="ordercarid" /> -->
							<input type="hidden" value="" name="carstatus"
								class="orderstatus" /> <input type="submit" id="submit"
								value="登&nbsp;&nbsp;&nbsp;&nbsp;陆" class="fM"/>	
						</div>
					
						<script type="text/javascript">
						//验证码
						function changeImage() {
							document.getElementById("kk").src="<%=basePath%>styles/images/image.jsp?t="+new Date();
						}
						//验证码
						function changeImage2() {
							document.getElementById("kk2").src="<%=basePath%>styles/images/image.jsp?t="+new Date();
						}
						//忘记密码
						function forget(){
								layer.alert("忘记密码,请重新注册")
						}
						//得到Cookie
						function getCookie(name) {
						    var strCookie=document.cookie;
						    var arrCookie=strCookie.split("; ");
						    for(var i=0;i<arrCookie.length;i++) {
						        var arr=arrCookie[i].split("=");
						        if(arr[0]==name)
						            return arr[1];
						    }
						    return "";
						}

						// 设置Cookie
						function setCookie(name,value) {
						    var Days = 30;
						    var exp = new Date();
						    exp.setTime(exp.getTime() + Days*24*60*60*1000);
						    document.cookie = name + "="+ escape (value) + ";expires=" + exp.toGMTString();
						}

						// 加载页面  
						$(function() {
							var usernameStr = "userName";
						    var passwordStr = "userPwd";
							var reqUsername='${userName}';
							// 空的时候，再去找cookie
							if(reqUsername == null || reqUsername == ""){
								// 判断cookie是否存在用户名密码
							    if((getCookie(usernameStr)!=null&&getCookie(usernameStr)!="")&&getCookie(passwordStr)!=null&&getCookie(passwordStr)!=""){
							    	$("#remember").attr("checked","checked");
							        $("#userName").val(getCookie(usernameStr));
							        $("#userPwd").val(getCookie(passwordStr));
							    }
							}
							 // 加载页面，给复选框一个点击事件
						    $("#remember").click(function(){
						        var ischeck=$(this).is(":checked"); 
						        var loginVal = "";
						        var passwordVal = "";
						        // 判断是否选中
						        if(ischeck){
						            loginVal = $("#userName").val();
						            passwordVal = $("#userPwd").val();
						        }
						        // 设置cookie
						        setCookie(usernameStr,loginVal);
						        setCookie(passwordStr,passwordVal);
						    });
						});
						
						
						
							$(function(){
								//ajax登陆
								$("#submit").click(function(){
									var userName = $(":input[name='userName']").val();
									var userPwd = $(":input[name='userPwd']").val();
									var yzm = $(":input[name='yzm']").val();
								    $.post(
								    	"<%=basePath%>deskUser/toLoginYz",
								    	{
								    		userName:userName,
								    		userPwd:userPwd,
								    		yzm:yzm
								    	},
								    	function(msg){
								    		if(msg==1){
								    			layer.msg('请输入验证码', {time:500});
								    		}
								    		if(msg==2){
								    			layer.msg('密码正确，登录成功', {time:500});
								    		    location = "<%=basePath%>deskCar/toModel";
								    		    
								    		}if(msg==3){
								    			layer.msg('密码错误，登录失败', {time:500});	
											}if(msg==4){
								    			layer.msg('用户名错误，登录失败', {time:500});	
											}if(msg==5){
								    			layer.msg('验证码错误', {time:500});	
											}
								    	},"json"
								    )	
								})
								//ajax注册
								$("#reg").click(function(){
									var userName = $("#regName").val();
									var userPwd = $("#regPwd").val();
									var userTel = $("#regPhone").val();
									var yzm2 = $("#yzm2").val();
								    $.post(
								    	"<%=basePath %>deskUser/register",
								    	{
								    		userName:userName,
								    		userPwd:userPwd,
								    		userTel:userTel,
								    		yzm2:yzm2
								    	},
								    	function(msg){
								    		if(msg==1){
								    			layer.msg('请输入验证码', {time:500});
								    		}
								    		if(msg==2){
								    			layer.msg('欢迎'+userName+'登录', {time:500});	
								    			location = "<%=basePath%>deskCar/toModel";
								    		}if(msg==3){
								    			layer.msg('注册失败', {time:500});	
											}if(msg==4){
								    			layer.msg('验证码错误', {time:500});	
											}if(msg==5){
								    			layer.msg('此用户名已存在', {time:500});	
											}
								    	},"json"
								    )	
								})
							})
						</script>
					</form>
				</div>
				<div class="p-dl">
				
						<ul class="login-items ">
							<li><label >注册用户</label> <input class="input" type="text"
								value="" maxlength="32" name="userName" placeholder="请输入您的用户名" style="width: 240px;" id="regName">
							</li>
							<li><label >注册密码</label> <input class="input" type="password"
								value="" maxlength="16" name="userPwd" placeholder="请输入您的密码" style="width: 240px;" id="regPwd"></li>
							<li><label >手机号</label> <input class="input" type="password"
								value="" maxlength="16" name="userTel" placeholder="请输入您的密码" style="width: 240px;" id="regPhone"></li>
							<li>
							<label >验证码</label>
						    <input type="text" id="yzm2" name="yzm2" placeholder="验证码" maxlength="4" class="input" style="width: 120px;"">
                            <img id="kk2" onclick="changeImage2();" src="<%=basePath%>styles/images/image.jsp" style="height: 40px"/>
		           
								</li>
						</ul>
						<div class="login-button">
							<!-- <input type="hidden" value="" name="carid" class="ordercarid" /> -->
							<input type="hidden" value="" name="carstatus"
								class="orderstatus" /> 
								<input type="submit" id="reg"
								value="立即注册" class="fM"/>	
						</div>
				</div>
			</div>
		</div>
	</div>
	<!--会员登录和注册弹出框结束-->


</body>
</html>			
		
	<script>
    	var base_url = "//atenza.faw-mazda.com/static/pc/";
	</script>
		<script src="//atenza.faw-mazda.com/static/pc/js/jquery.spritespin.min.js"></script>
		<script src="//atenza.faw-mazda.com/static/pc/js/swfobject.js"></script> 
		<script src="//atenza.faw-mazda.com/static/pc/js/360.js"></script>
		<script type="text/javascript">
			var _homeIn = 0;
			$("#indexIn").on('click',function(event){
				event.stopPropagation();
				if (_homeIn == 0 ) {
					$(".footer-hide-area").fadeIn();
					_homeIn = 1;
					return;
				}else{
					$(".footer-hide-area").fadeOut();
					_homeIn = 0;
					return;
				}
			})
			$(document).click(function(){
				$(".footer-hide-area").fadeOut();
				_homeIn = 0;
				return;
			});  
			
		function getie(){
			if(navigator.appName == "Microsoft Internet Explorer" && navigator.appVersion .split(";")[1].replace(/[ ]/g,"")=="MSIE6.0") {
				return 'ie'
			}
			else if(navigator.appName == "Microsoft Internet Explorer" && navigator.appVersion .split(";")[1].replace(/[ ]/g,"")=="MSIE7.0") {
				return 'ie'
			}
			else if(navigator.appName == "Microsoft Internet Explorer" && navigator.appVersion .split(";")[1].replace(/[ ]/g,"")=="MSIE8.0") {
				return 'ie'
			}
			else if(navigator.appName == "Microsoft Internet Explorer" && navigator.appVersion .split(";")[1].replace(/[ ]/g,"")=="MSIE9.0") {
				return 'ie'
			}else{
			  return 'other'
			}
		}  
		if (getie()=='other')
		{
		 document.write("<script src=\"//atenza.faw-mazda.com/static/pc/js/three.min.js\">"+"</scr"+"ipt><script src=\"//atenza.faw-mazda.com/static/pc/js/theta-viewer.min.js\">"+"</scr"+"ipt>");  
		}else{ 
		} 

		</script>  
		<script type="text/javascript">
			if($(window).width()<1366){
				$(".cti-inner-wrap").css("top","32%");
			}
		</script>
		<!-- 原页面Js -->
		<script type="text/javascript">
					$('.all-sort-list > .item')
							.hover(
									function() {
										var eq = $('.all-sort-list >.item')
												.index(this), //获取当前滑过是第几个元素
										h = $('.all-sort-list').offset().top, //获取当前下拉菜单距离窗口多少像素
										s = $(window).scrollTop(), //获取游览器滚动了多少高度
										i = $(this).offset().top, //当前元素滑过距离窗口多少像素
										item = $(this).children('.item-list')
												.height(), //下拉菜单子类内容容器的高度
										sort = $('.all-sort-list').height(); //父类分类列表容器的高度

										if (item < sort) { //如果子类的高度小于父类的高度
											if (eq == 0) {
												$(this).children('.item-list')
														.css('top', (i - h));
											} else {
												$(this).children('.item-list')
														.css('top', (i - h));
											}
										} else {
											if (s > h) { //判断子类的显示位置，如果滚动的高度大于所有分类列表容器的高度
												if (i - s > 0) { //则 继续判断当前滑过容器的位置 是否有一半超出窗口一半在窗口内显示的Bug,
													$(this).children(
															'.item-list').css(
															'top', (s - h) + 2);
												} else {
													$(this)
															.children(
																	'.item-list')
															.css(
																	'top',
																	(s - h)
																			- (-(i - s))
																			+ 2);
												}
											} else {
												$(this).children('.item-list')
														.css('top', 0);
											}
										}

										$(this).addClass('hover');
										$(this).children('.item-list').css(
												'display', 'block');
									},
									function() {
										$(this).removeClass('hover');
										$(this).children('.item-list').css(
												'display', 'none');
									});

					$('.item > .item-list > .close').click(function() {
						$(this).parent().parent().removeClass('hover');
						$(this).parent().hide();
					});
				</script>
				<script type="text/javascript">
		$(document).ready(function() {
			$('.flexslider').flexslider({
				directionNav : true,
				pauseOnAction : false
			});
			$('.flexslider').hover(function() {
				$('.flex-direction-nav').fadeIn();
			}, function() {
				$('.flex-direction-nav').fadeOut();
			})
		});
	</script>
	<script type="text/javascript">
		$(document).ready(function() {

			$("#leftsead a").hover(function() {
				if ($(this).prop("className") == "youhui") {
					$(this).children("img.hides").show();
				} else {
					$(this).children("img.hides").show();
					$(this).children("img.shows").hide();
					$(this).children("img.hides").animate({
						marginRight : '0px'
					}, 'slow');
				}
			}, function() {
				if ($(this).prop("className") == "youhui") {
					$(this).children("img.hides").hide('slow');
				} else {
					$(this).children("img.hides").animate({
						marginRight : '-143px'
					}, 'slow', function() {
						$(this).hide();
						$(this).next("img.shows").show();
					});
				}
			});

			$("#top_btn").click(function() {
				if (scroll == "off")
					return;
				$("html,body").animate({
					scrollTop : 0
				}, 600);
			});

		});
	</script>
	<!--导航登陆网页版下拉-->
<script type="text/javascript">
	$(function() {
		var setTime;
		$(".egc-top .nav-cent .operate").hover(
				function() {
					var _this = $(this);
					setTime = setTimeout(function() {
						_this.find(".sec-version").slideDown(200);
						_this.find("i").removeClass("icon-angle-down")
								.addClass("icon-angle-up");
					}, 200);
				},
				function() {
					if (setTime) {
						clearTimeout(setTime);
					}
					$(".egc-top .nav-cent .sec-version").slideUp(200);
					$(".egc-top .nav-cent .operate i").removeClass(
							"icon-angle-up").addClass("icon-angle-down");
				});
	});
</script>

<!--下拉导航关闭-->
<script type="text/javascript">
	$(function() {
		$('.menu-mb i').click(function() {
			$(".navigation-mb-list").slideDown(300);
		});
		$('.navigation-mb-list .list-close-btn').click(function() {
			$(".navigation-mb-list").slideUp(300);
		});
	});
</script>

<script type="text/javascript">
	$(function() {
		var scroll_heitht = $('body').offset().top;
		var isShow = true;
		$(window).scroll(function() {
			if ($(window).scrollTop() > scroll_heitht && isShow) {
				$('.stress-search-box').slideDown(200);
			} else {
				$('.stress-search-box').slideUp(200);
			}
		});
		$('.stress-close a').click(function() {
			isShow = false;
			$('.stress-search-box').slideUp(200).unbind(window, aa);
		});
	});
</script>