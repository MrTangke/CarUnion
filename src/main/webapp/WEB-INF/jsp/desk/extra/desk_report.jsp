<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<title>媒体报道 车之盟抢先知道</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="/styles/common/desk/styles_css.jsp"%>
<%@ include file="/styles/common/desk/styles_js.jsp"%>
<script type="text/javascript">
$(function(){
	$('.navmenu li').hover(function(){
		$('span',this).stop().css('height','2px');
		$('span',this).animate({
			left:'0',
			width:'100%',
			right:'0'
		},200);
	},function(){
		$('span',this).stop().animate({
			left:'50%',
			width:'0'
		},200);
	});
});
</script>
<!--导航登陆网页版下拉-->
<script type="text/javascript">
$(function () {
	var setTime;
	$(".egc-top .nav-cent .operate").hover(function () {
		var _this = $(this);
		setTime = setTimeout(function () {
			_this.find(".sec-version").slideDown(200);
			_this.find("i").removeClass("icon-angle-down").addClass("icon-angle-up");
		}, 200);
	}, function () {
		if (setTime) {
			clearTimeout(setTime);
		}
		$(".egc-top .nav-cent .sec-version").slideUp(200);
		$(".egc-top .nav-cent .operate i").removeClass("icon-angle-up").addClass("icon-angle-down");
	});
});
</script>
<!--底部信息下拉-->
<script type="text/javascript">
$(function () {
	var wind_wd = $(window).width();
	if(wind_wd<=735){
		/* $submenu.first().delay(400).slideDown(700);*/
			$('.relate .tit').on('click', function() {
			$(this).next('.con').slideToggle()
			$(this).parent().siblings('.items').find('.con').slideUp();
			});
		}else{
			 $('.relate .tit').unbind("click");
			 $('.relate .con').show();
			}
	$(window).resize(function(){
 		var wind_wd = $(window).width();
		if(wind_wd<=735){
		/* $submenu.first().delay(400).slideDown(700);*/
			$('.relate .tit').on('click', function() {
			$(this).next('.con').slideToggle()
			$(this).parent().siblings('.items').find('.con').slideUp();
			});
		}else{
			 $('.relate .tit').unbind("click");
			 $('.relate .con').show();
			}
	});
});
</script>

<!--搜搜框获取焦点-->
<script type="text/javascript">
$(function () {
$('.sea-ipt-txt').focus(function() { 
$(this).addClass("on");
$('.search-btn').addClass("on"); 
}); 
$('.sea-ipt-txt').blur(function() { 
$(this).removeClass("on");
$('.search-btn').removeClass("on");
}); 
});
</script>
<!--下拉导航关闭-->
<script type="text/javascript">
$(function () {
 $('.menu-mb i').click(function() { 
   $(".navigation-mb-list").slideDown(300);
 }); 
 $('.navigation-mb-list .list-close-btn').click(function() { 
   $(".navigation-mb-list").slideUp(300);
 });
});
</script>
<!--stress搜索关闭-->
<script type="text/javascript">
$(function () {
	var setTime;
	$(".sercat .weixin").hover(function () {
		setTime = setTimeout(function () {
			$(".sercat .wxewm").show();
		}, 300);
	}, function () {
		if (setTime) {
			clearTimeout(setTime);
		}
		$(".sercat .wxewm").hide();
	});
});
</script>
<script type="text/javascript">
$(function () {
	var scroll_heitht = $('body').offset().top;
	var isShow = true;
	$(window).scroll(function () {
       if ($(window).scrollTop() > scroll_heitht && isShow) {
			 $('.stress-search-box').slideDown(200);
       }else{
		   $('.stress-search-box').slideUp(200);
		   }
       });
   $('.stress-close a').click(function(){
	   isShow=false;
	   $('.stress-search-box').slideUp(200).unbind(window,aa);
	   });
});
</script>
</head>
<body>
<div class="egc-top">
		<div class="nav-cent">
			<div class="top-r">
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
			<div class="top-l">全国统一客服热线：157-1880-5811</div>
			<div class="clear_fix"></div>
		</div>
	</div>
<div class="navigation">
  <div class="nav-cent">
    <div class="logo"><a href="<%=basePath%>desk/toIndex"><img src="<%=basePath%>img/desk/index_img/logo.png" width="240" /></a></div>
    <div class="city"> <span id="DY_site_name" class="red city-name Left">北京</span>
      <div id="JS_hide_city_menu_11" class="city-select cut_handdler Left"> <a href="javascript:void(0);" class="common-bg selector">切换城市</a>
        <div id="JS_header_city_bar_box" class="hide_city_group">
          <div class="hideMap">
            <div class="showPanel clearfix">
              <div class="Left mycity">
                <div id="JS_current_city_box"> 当前城市：<strong id="JS_city_current_city">北京</strong> </div>
                <div id="JS_default_city_delete" style="display: none;"></div>
              </div>
            </div>
            <div class="showPanel showPanel2 clearfix">
              <div class="hot_city" id="JS_header_city_hot"> </div>
              <div class="city_words mt10" id="JS_header_city_char"> </div>
            </div>
            <div class="scrollBody">
              <div class="cityMap clearfix">
                <table id="JS_header_city_list" class="city_list" style="margin-top: 0px;">
                  <tbody>
                  </tbody>
                </table>
              </div>
              <div class="scrollBar"> <span id="JS_header_city_bar" style="margin-top: 0px;"></span> </div>
            </div>
          </div>
        </div>
      </div>
      <span class="common-bg city-logo"></span> </div>
    <div class="sea">
				<div class="egc-sea-box">
					<form action="<%=basePath%>deskCar/toBuy" method="post">
					<input type="text" class="sea-ipt-txt" placeholder="搜索您想要的车" value="${carName}" name="carName"/> <input
						type="submit" class="search-btn" value="搜索" style="border: none;"></form>
				</div>
			</div>
    <div class="hot-phone"> <i></i> <span class="js-change-phone">157-1880-5811</span> </div>
  </div>
</div>
<ul class="navmenu">
  <li><a href="<%=basePath%>desk/toIndex">首页</a><span></span></li>
		<li><a href="<%=basePath%>deskCar/toBuy">我要买车</a><span></span></li>
		<li><a href="<%=basePath%>deskCar/toCarList">预约试驾</a><span></span></li>
		<li><a href="<%=basePath%>desk/toEvent">优惠活动</a><span></span></li>
		<li class="active"><a href="<%=basePath%>desk/toReport">网站精选</a><span></span></li>
</ul>
<div class="clear_fix"></div>
<div class="stress-search-box row">
  <div class="stress-close"><a href="javascript:;"></a></div>
  <div class="nav-cents">
    <ul>
      <li class="logo"><a href=<%=basePath%>desk/toIndex"><img src="<%=basePath%>img/desk/index_img/logo.png"  width="180"/></a></li>
      <li><a href="<%=basePath%>desk/toIndex">首页</a><span></span></li>
		<li><a href="<%=basePath%>deskCar/toBuy">我要买车</a><span></span></li>
		<li><a href="<%=basePath%>deskCar/toCarList">预约试驾</a><span></span></li>
		<li><a href="<%=basePath%>desk/toEvent">优惠活动</a><span></span></li>
		<li class="active"><a href="<%=basePath%>desk/toReport">网站精选</a><span></span></li>
    </ul>
    <div class="seas">
      <div class="egc-sea-box">
        <input type="text" class="sea-ipt-txt" placeholder="搜索您想要的车">
        <a href="#" class="search-btn">搜索</a> </div>
    </div>
  </div>
</div>
<div class="clear_fix"></div>
<!--关于我们-->
<div class="aboutcon">
<div class="mainbox">
<div class="aside fl" id="J_m_nav">
    <!--side-nav-->
    <ul class="side-nav">
      <li class="active"><a href="<%=basePath %>desk/toAbout">关于我们</a></li>
      <li><a href="<%=basePath %>desk/toNewList">新闻列表</a></li>
      <li><a href="<%=basePath %>desk/toEvent"">本日活动</a></li>
      <li><a href="<%=basePath %>desk/toReport">媒体报道</a></li>
      <li><a href="<%=basePath %>desk/toPartner">合作伙伴</a></li>
    </ul>    
  </div>
  <div class="section_about bdr fr">
    <div class="main_con">
      <div class="crumbs"><span>联系我们</span></div>
      <div class="reportslist">
        <div class="item clearfix">
          <a href="newsinfor.html" class="img"><img src="<%=basePath%>img/desk/index_img/img10.jpg"></a>
          <div class="txt">
            <div class="hd clearfix">
              <span class="fr"><i class="time">2018-4-2</i></span>
              <a href="http://www.chinaautonews.com.cn/show-13-8355-1.html">7.78万元起售 2018款帝豪GS正式上市</a>
            </div>
            4月20日，吉利2018款帝豪GS正式上市。新车推出1.4T和1.8L两种排量共10款车型，官方指导价为7.78~11.68万元。新车上市后将进一步夯实帝豪GS“跨界SUV市场引领者”的市场地位。
          </div>
        </div>
        <div class="item clearfix">
          <a href="newsinfor.html" class="img"><img src="<%=basePath%>img/desk/index_img/img10.jpg"></a>
          <div class="txt">
            <div class="hd clearfix">
              <span class="fr"><i class="time">2018-4-2</i></span>
              <a href="http://www.chinaautonews.com.cn/show-13-8411-1.html">上汽全新中大型SUV 荣威RX8售16.88万元起</a>
            </div>
            在本届北京车展上，上汽集团官方正式公布了荣威RX8车型的售价，新车共推出8款车型，售价区间为16.88-25.18万元。新车定位为一款具有非承载式车身的全新中大型SUV，其带有中央和后桥两把差速锁。
          </div>
        </div>
        <div class="item clearfix">
          <a href="newsinfor.html" class="img"><img src="<%=basePath%>img/desk/index_img/img10.jpg"></a>
          <div class="txt">
            <div class="hd clearfix">
              <span class="fr"><i class="time">2018-4-4</i></span>
              <a href="http://www.chinaautonews.com.cn/show-13-7699-1.html">2018款瑞虎3x/瑞虎3百万全球版 将3月上市</a>
            </div>
            2018款奇瑞瑞虎3x将在今年3月5日正式上市，而瑞虎3百万全球版车型也会在3月12日正式上市。相比较于现款车型，瑞虎3百万全球版车型将拥有专属的车身拉花，并且在配置上也有一定的升级。
          </div>
        </div>
        <div class="item clearfix">
          <a href="newsinfor.html" class="img"><img src="<%=basePath%>img/desk/index_img/img10.jpg"></a>
          <div class="txt">
            <div class="hd clearfix">
              <span class="fr"><i class="time">2018-4-10</i></span>
              <a href="http://www.chinaautonews.com.cn/show-13-7789-1.html">吉利将推出全新小型SUV 内部代号SX11</a>
            </div>
           根据工信部信息：吉利全新SUV——吉利SX11已经申报。据悉，吉利SX11的车身尺寸为小型SUV范畴，搭载1.0T和1.5T涡轮增压发动机。而其中的“SX11”则是新车的研发代号，未来吉利将会对新车进行命名。
          </div>
        </div>
        <div class="item clearfix">
          <a href="newsinfor.html" class="img"><img src="<%=basePath%>img/desk/index_img/img10.jpg"></a>
          <div class="txt">
            <div class="hd clearfix">
              <span class="fr"><i class="time">2018-4-10</i></span>
              <a href="http://www.chinaautonews.com.cn/show-12-8379-1.html">品汇汽车创始人魏学珍：新媒体应该做好品牌传播和效果传播</a>
            </div>
            4月24日，以“进级之路”为题，2018中国汽车产业发展新趋势论坛在北京召开。论坛发起人、品汇汽车创始人、中国汽车新闻网总编辑魏学珍抛出新消费趋势下的市场升级、新营销形势下的品牌升级、新能源环境下的产业升级三大主题，让40余位汽车行业大咖同聚一堂，以互动对话的形式共同探讨中国汽车产业新发展时代的变革与机遇。
          </div>
        </div>
        <div class="item clearfix">
          <a href="newsinfor.html" class="img"><img src="<%=basePath%>img/desk/index_img/img10.jpg"></a>
          <div class="txt">
            <div class="hd clearfix">
              <span class="fr"><i class="time">2018-4-12</i></span>
              <a href="http://www.chinaautonews.com.cn/show-12-6475-1.html">余波：斯威汽车发布“2025愿景” 明年推新车</a>
            </div>
            4月12日，在广州车展期间，SWM斯威汽车品牌运营官余波接受了品汇汽车、中国汽车新闻网及凤凰汽车的联合采访。
          </div>
        </div>
        <div class="item clearfix">
          <a href="newsinfor.html" class="img"><img src="<%=basePath%>img/desk/index_img/img10.jpg"></a>
          <div class="txt">
            <div class="hd clearfix">
              <span class="fr"><i class="time">2018-4-13</i></span>
              <a href="newsinfor.html">江淮王东生：营销不要跟年轻人作对，不要跟趋势作对</a>
            </div>
            4月24日，由一点资讯与品汇汽车联合主办的《进级之路 2018中国汽车产业发展新趋势论坛》在京举行。此次论坛，超过五十家企业高层参加，就消费趋势升级、新营销下品牌升级，及新能源环境下产业升级三个方向进行了讨论和分享。在新的市场环境下，年轻的用户群体已经发生了很大的变化，汽车市场也呈现出更加激烈的竞争态势。在这种情况下，如何洞察消费者需求，制定更加有效的营销策略成为汽车营销人最大的难题。那么，新时期...
          </div>
        </div>
        <div class="item clearfix">
          <a href="newsinfor.html" class="img"><img src="<%=basePath%>img/desk/index_img/img10.jpg"></a>
          <div class="txt">
            <div class="hd clearfix">
              <span class="fr"><i class="time">2018-4-13</i></span>
              <a href="http://www.chinaautonews.com.cn/show-12-8251-1.html">宝沃杨嵩：谈谈“菩萨问因，凡人问果”</a>
            </div>
           “他山之石，可以攻玉”。昨天，一封来自宝沃老总写于高铁旅途中的给自己一线人员的信传到经销商中，也令经销商感受到鼓舞、鞭策与压力
          </div>
        </div>
      </div>
      <div class="Pagination">
        <a href="#" class="prev"><em></em>上一页</a><span>1</span><a href="#">2</a><a href="#">3</a><a href="#">4</a>...<a href="#">23</a><a href="#" class="next">下一页<em></em></a>
      </div>
    </div>
  </div>
</div>
</div>
<div class="clear_fix"></div>
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
			<div class="cent">Copyright © 1998-2018, CarUnion.com,All Rights
				Reserved 京ICP备1000000号-1</div>
		</div>
	</div>
<script type="text/javascript" src="script/3c-menu.js"></script> 
<script type="text/javascript" src="script/lg_reg.js"></script> 
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
								    		    location = "<%=basePath%>desk/toReport";
								    		    
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
								    			location = "<%=basePath%>desk/toReport";
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
<script type='text/javascript' >
			var nt = !1;
			$(window).bind("scroll",
				function() {
				var st = $(document).scrollTop();//往下滚的高度
				nt = nt ? nt: $("#J_m_nav").offset().top;
				// document.title=st;
				var sel=$("#J_m_nav");
				if (nt < st) {
					sel.addClass("nav_fixed");
				} else {
					sel.removeClass("nav_fixed");
				}
			});
		</script>

</body>
</html>