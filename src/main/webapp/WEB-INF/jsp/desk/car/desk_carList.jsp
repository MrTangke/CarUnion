<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"  %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<title>北京车库车辆信息</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">
#good9:HOVER {
	cursor: pointer;
	color: #F7962F;
}

#good9 {
	transition: color 0.5s;
}
</style>
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
			<div class="logo">
				<a href="<%=basePath%>desk/toIndex"><img
					src="<%=basePath%>img/desk/index_img/logo.png" width="240" /></a>
			</div>
			<div class="city">
				<span id="DY_site_name" class="red city-name Left">北京</span>
				<div id="JS_hide_city_menu_11" class="city-select cut_handdler Left">
					<a href="javascript:void(0);" class="common-bg selector">切换城市</a>
					<div id="JS_header_city_bar_box" class="hide_city_group">
						<div class="hideMap">
							<div class="showPanel clearfix">
								<div class="Left mycity">
									<div id="JS_current_city_box">
										当前城市：<strong id="JS_city_current_city">北京站</strong>
									</div>
									<div id="JS_default_city_delete" style="display: none;"></div>
								</div>
							</div>
							<div class="showPanel showPanel2 clearfix">
								<div class="hot_city" id="JS_header_city_hot"></div>
								<div class="city_words mt10" id="JS_header_city_char"></div>
							</div>
							<div class="scrollBody">
								<div class="cityMap clearfix">
									<table id="JS_header_city_list" class="city_list"
										style="margin-top: 0px;">
										<tbody>
										</tbody>
									</table>
								</div>
								<div class="scrollBar">
									<span id="JS_header_city_bar" style="margin-top: 0px;"></span>
								</div>
							</div>
						</div>
					</div>
				</div>
				<span class="common-bg city-logo"></span>
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
		<li><a href="<%=basePath%>desk/toIndex">首页</a><span></span></li>
		<li><a href="<%=basePath%>deskCar/toBuy">我要买车</a><span></span></li>
		<li class="active"><a href="<%=basePath%>deskCar/toCarList">预约试驾</a><span></span></li>
		<li><a href="<%=basePath%>desk/toEvent">优惠活动</a><span></span></li>
		<li><a href="<%=basePath%>desk/toReport">网站精选</a><span></span></li>
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
<!--所在位置-->
<div class="crumbp"> <a href="<%=basePath%>desk/toIndex">首页</a> <em>&gt;</em> <span>北京海淀区车库车辆信息</span> </div>
<div class="clear_fix"></div>
<div class="mainbox"> 
  <!--门店简介-->
  <div class="shopcar_desc">
    <div class="shop_head_left">
      <div class="shop-logo"></div>
      <div class="shop_head_info" style="padding-top:10px;">
        <p><span class="shop_name">北京海淀服务中心</span></p>
        <p class="text-muted">待售车源： <em>${fn:length(carGoods)}</em> 辆 <!-- （今日新增<em>2</em>辆） --></p>
      </div>
    </div>
    <ul class="indem-ul">
      <li> <span class="indem01"></span>
        <p class="f-type01">专业人员检测</p>
      </li>
      <li> <span class="indem02"></span>
        <p class="f-type01">车辆检测</p>
      </li>
      <li> <span class="indem03"></span>
        <p class="f-type01">1年质保</p>
      </li>
    </ul>
  </div>
  <div class="clear_fix"></div>
<%--   <!--筛选条件-->
  <div class="shop_moreitem">
    <div class="moreitem clearfix">
        <dl class="selecter">
		<dt>车型</dt>
		<dd>
			<ul>
				<li><a href="javascript:void(0);">不限</a></li>
				
					<c:forEach items="${carModel}" var="md" >
						<li><a href="javascript:void(0);">${md.modelName}</a></li>
					</c:forEach>
				</li>
			</ul>
		</dd>
	    </dl>
    
      <dl class="selecter">
		<dt>请选择品牌</dt>
		<dd>
			<ul>
				<li><a href="javascript:void(0);">不限</a></li>
				<c:forEach items="${carBrand}" var="brand" >
					<li><a href="javascript:void(0);"> ${brand.brandName} </a></li>
				</c:forEach>
			</ul>
		</dd>
	    </dl>
     
     	<dl class="selecter">
		<dt>请选择颜色</dt>
		<dd>
			<ul>
				<li><a href="javascript:void(0);">不限</a></li>
				<c:forEach items="${carColor}" var="color" >
					<li><a href="javascript:void(0);" class="color1" name="${color.colorId}"><div style="width: 12px;height: 12px;float: left;position: relative;top: 8px;margin-right: 3px;background-color: ${color.colorRgb}"></div>${color.colorName} </a> </li>
				</c:forEach>
			</ul>
		</dd>
	    </dl>
      <dl class="selecter">
		<dt>请选择价格</dt>
		<dd>
			<ul>
				<li><a  class="on price1" href="#"  name="null"  id="price1">不限</a></li>
        		<li><a  class="price1" onclick="" name="&lt;5" > 5万以下 </a></li>
        		<li><a  class="price1" onclick="" name="between 5 and 10" > 5-10万 </a></li> 
        		<li><a  class="price1" onclick="" name="between 10 and 20" > 10-20万 </a></li> 
        		<li><a  class="price1" onclick="" name="between 20 and 50" > 20-50万 </a></li> 
        		<li><a  class="price1" onclick="" name="between 50 and 100" > 50-100万 </a></li> 
        		<li><a  class="price1" onclick="" name="between 100 and 200" > 100-200万 </a></li> 
        		<li><a  class="price1" onclick="" name="between 200 and 500" > 200-500万 </a></li> 
        		<li><a  class="price1" onclick="" name=">500" > 500万以上 </a></li>
			</ul>
		</dd>
	    </dl>
	    
	   <dl class="selecter">
		<dt>配置</dt>
		<dd>
			<ul>
				<li><a href="javascript:void(0);"  name="null" class="on config1" id="config1">不限</a> </li>
				<li><a href="javascript:void(0);" name="1" class="config1">低配</a></li>
				<li><a href="javascript:void(0);" name="2" class="config1">中配</a></li>
				<li><a href="javascript:void(0);" name="3" class="config1">高配</a></li>
			</ul>
		</dd>
		</dl>
      
        <!--最后一个地方的区别 加了一段样式-->
      <dl class="selecter" style="float:right; margin-right:0px;">
		<dt class="safe1">安全性</dt>
		<dd>
			<ul>
				<li><a href="javascript:void(0);"  name="null" class="on safe1" id="safe1">不限</a></li>
				<li><a href="javascript:void(0);" name="1" class="safe1"> 普通配置 </a></li>
				<li><a href="javascript:void(0);" name="2" class="safe1"> 高端配置 </a></li>
				<li><a href="javascript:void(0);" name="3" class="safe1"> 顶级配置 </a></li>
			</ul>
		</dd>
	</dl>
    </div>
  </div>
  <div class="sub_title"><!-- 排序 -->
    <div class="left" id="sort"> 
    <a href="#" data="default" class="on" id="default-sort" value="default">默认排序</a> 
    <a href="#" data="desc" id="post-time-sort" title="点击按发布时间从近到远排序" value="desc"><span class="inline-block">发布时间</span><i class="i-up"></i></a> 
    <a href="#" data="desc" id="brand-time-sort" title="点击按上牌时间从近到远排序" value="desc"><span class="inline-block">热度</span><i class="i-time"></i></a> 
    <a href="#" data="asc" id="kilometer-sort" title="点击按表显里程从低到高排序" value="asc"><span class="inline-block" value="asc">价格</span><i class="i-down"></i></a> 
    <a href="#" data="asc" id="price-sort" title="点击按价格从低到高排序" value="asc"><span class="inline-block">安全</span><i class="i-mid"></i></a> </div>
    <div class="right"> <span class="car_sum">共<strong>${fn:length(carGoods)}</strong>条车源</span> </div>
  </div> --%>

  <div class="clear_fix"></div>
       <%--  <c:forEach items="${carGoods}" var="car" >
        	${car.carImg}"
        </c:forEach> --%>
  <div class="cs-list">
    <ul>
      <c:forEach items="${carGoods}" var="goods" begin="0" end="7">
	      <li class="clearfix" style="position: relative;" onclick="javascript:window.location.href='<%=basePath %>deskDriver/toCarInfo?id=${goods.carId}'"> <span class="carImg fl" style="width: 300px;"> <a href="<%=basePath %>deskDriver/toCarInfo?id=${goods.carId}" style="width: 270px;">
	        <div class="car_bg"> </div>
	        <img width="290" height="194" src="<%=basePath%>${goods.carImg}" /></a> </span>
	        <div class="carTxt fl">
	          <h2><a href="<%=basePath %>deskDriver/toCarInfo?id=${goods.carId}">${goods.carName}</a></h2>
	          <p> <span>上牌时间：<em>${goods.carDatea}</em></span> 
	          | <span>最高时速：<em>${goods.carSpeed}km/h</em></span> 
	          | <span>排量：<em> ${goods.carCc}T</em></span>
	           | <span>安全标准：
	           <em>
	           	<c:if test="${goods.carSafety==1}">普通配置</c:if>
	           	<c:if test="${goods.carSafety==2}">高级配置</c:if>
	           	<c:if test="${goods.carSafety==3}">顶级配置</c:if>
	           </em></span> </p>
	          <div class="car_desc clearfix"> ${goods.carDatea}上牌，安全标准为 <c:if test="${goods.carSafety==1}">普通配置</c:if>
	           	<c:if test="${goods.carSafety==2}">高级配置</c:if>
	           	<c:if test="${goods.carSafety==3}">顶级配置</c:if>，最高时速为${goods.carSpeed}km/h，排量为${goods.carCc}T，${goods.carName}。
	           </div>
	          <div class="cs_bt" style="padding-top:7px;"> <span>${nowTime} 更新</span> </div>
	        </div>
	        <div class="fr priceNum"> ￥<span class="num">${goods.carPrice} </span><font> 万</font>
	          <p class="priType-s"> <em class="tag-red">急售</em> <em class="tag-green">准新车</em> <em class="tag-yellow">超值</em> </p>
	        </div>
	      </li>
      </c:forEach>
      <button onclick="good9()" id="good9"
				style="width: 1195px; background-color: #F8F8F8; border: 1px #DDDDDD solid; font-size: 14px; height: 30px;">点击查看更多</button>
				<script type="text/javascript">
  //显示更多车辆
  		function good9(){
  			$("#carList4").attr("style","display: block;")
  			$("#good9").hide(500);
  		}
  </script>
				<div id="carList4" style="display: none;"><c:forEach
					items="${carGoods}" var="goods" begin="8" end="500">
					 <li class="clearfix" style="position: relative;" onclick="javascript:window.location.href='<%=basePath %>deskDriver/toCarInfo?id=${goods.carId}'"> <span class="carImg fl" style="width: 300px;"> <a href="<%=basePath %>deskDriver/toCarInfo?id=${goods.carId}"  style="width: 270px;">
	        <div class="car_bg"> </div>
	        <img width="290" height="194" src="<%=basePath%>${goods.carImg}" /></a> </span>
	        <div class="carTxt fl">
	          <h2><a href="<%=basePath %>deskDriver/toCarInfo?id=${goos.carId}" >${goods.carName}</a></h2>
	          <p> <span>上牌时间：<em>${goods.carDatea}</em></span> 
	          | <span>最高时速：<em>${goods.carSpeed}km/h</em></span> 
	          | <span>排量：<em> ${goods.carCc}T</em></span>
	           | <span>安全标准：
	           <em>
	           	<c:if test="${goods.carSafety==1}">普通配置</c:if>
	           	<c:if test="${goods.carSafety==2}">高级配置</c:if>
	           	<c:if test="${goods.carSafety==3}">顶级配置</c:if>
	           </em></span> </p>
	          <div class="car_desc clearfix"> ${goods.carDatea}上牌，安全标准为 <c:if test="${goods.carSafety==1}">普通配置</c:if>
	           	<c:if test="${goods.carSafety==2}">高级配置</c:if>
	           	<c:if test="${goods.carSafety==3}">顶级配置</c:if>，最高时速为${goods.carSpeed}km/h，排量为${goods.carCc}T，${goods.carName}。
	           </div>
	          <div class="cs_bt" style="padding-top:7px;"> <span>${nowTime} 更新</span> </div>
	        </div>
	        <div class="fr priceNum"> ￥<span class="num">${goods.carPrice} </span><font> 万</font>
	          <p class="priType-s"> <em class="tag-red">急售</em> <em class="tag-green">准新车</em> <em class="tag-yellow">超值</em> </p>
	        </div>
	      </li>
				</c:forEach></div>
    </ul>
  </div>
</div><div class="clear_fix"></div>
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
							随时随地，秒购好车<br /> 优质新车
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
								    		    location = "<%=basePath%>deskCar/toCarList";
								    		    
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
								    			location = "<%=basePath%>deskCar/toCarList";
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
<div id="leftsead">
		<ul>
			<li><a id="top_btn"> <img
					src="<%=basePath%>img/desk/index_img/foot03/ll06.png" width="47"
					height="49" class="hides" /> <img
					src="<%=basePath%>img/desk/index_img/foot03/l06.png" width="47"
					height="49" class="shows" />
			</a></li>

			<li><a
				href="http://wpa.qq.com/msgrd?v=3&uin=982165738&site=qq&menu=yes"
				target="_blank"> <img
					src="<%=basePath%>img/desk/index_img/foot03/ll03.png" width="47"
					height="49" class="hides" /> <img
					src="<%=basePath%>img/desk/index_img/foot03/l03.png" width="47"
					height="49" class="shows" />
			</a></li>

			<li><a href="<%=basePath%>desk/toAbout"> <img
					src="<%=basePath%>img/desk/index_img/foot03/ll02.png" width="166"
					height="49" class="hides" /> <img
					src="<%=basePath%>img/desk/index_img/foot03/l04.png" width="47"
					height="49" class="shows" />
			</a></li>

			<li><a class="youhui"> <img
					src="<%=basePath%>img/desk/index_img/foot03/l02.png" width="47"
					height="49" class="shows" /> <img
					src="<%=basePath%>img/desk/index_img/foot03/zfew.jpg" width="196"
					height="205" class="hides" usemap="#taklhtml" />
			</a></li>
		</ul>
	</div>
	<!--leftsead end-->
	<script type="text/javascript">
$(document).ready(function(){
	//页面就绪函数回显首页搜索条件
	var priceName = '<%=(String) request.getParameter("priceName")%>';
	var brandName = '<%=(String) request.getParameter("brandName")%>';
	var modelName = '<%=(String) request.getParameter("modelName")%>';
	var carName = '<%=(String) request.getParameter("carName")%>';
	if(priceName!='null'){
		$("#tiaojian").append("<a href=\"#\"  class=\"sel-a\">"+priceName+"</a>");
		$("a[class='on price1']").attr("class","price1");
		$("a[class='price1']:contains("+priceName+")").attr("class","on price1");
	}
	if(modelName!='null'){
		$("#tiaojian").append("<a href=\"#\"  class=\"sel-a\">"+modelName+"</a>");
		$("a[class='on model1']").attr("class","model1");
		$("a[class='model1']:contains("+modelName+")").attr("class","on model1");
	}
	if(brandName!='null'){
		$("#tiaojian").append("<a href=\"#\"  class=\"sel-a\">"+brandName+"</a>");
		$("a[class='on brand1']").attr("class","brand1");
		$("a[class='brand1']:contains("+brandName+")").attr("class","on brand1");
	}
	if(carName!='null'){
		if(carName!=''){
		$("#tiaojian").append("<a href=\"#\"  class=\"sel-a\">"+"与'"+carName+"'相关"+"</a>");
		}
	}
	if($("#tiaojian a").length!=0){
		$("#tiaojian").append(" <a href=\"#\"  class=\"sel-reset\" onclick='reset11()'>重置</a>");
	}
	
	$("#leftsead a").hover(function(){
		if($(this).prop("className")=="youhui"){
			$(this).children("img.hides").show();
		}else{
			$(this).children("img.hides").show();
			$(this).children("img.shows").hide();
			$(this).children("img.hides").animate({marginRight:'0px'},'slow'); 
		}
	},function(){ 
		if($(this).prop("className")=="youhui"){
			$(this).children("img.hides").hide('slow');
		}else{
			$(this).children("img.hides").animate({marginRight:'-143px'},'slow',function(){$(this).hide();$(this).next("img.shows").show();});
		}
	});

	$("#top_btn").click(function(){if(scroll=="off") return;$("html,body").animate({scrollTop: 0}, 600);});

});
</script>
<script type="text/javascript">
$(".hoverWidget").each(function() {
				$(this).mouseenter(function() {
					$(this).addClass("active")
				}).mouseleave(function() {
					$(this).removeClass("active")
				})
			});
</script>
<script type="text/javascript">
$(function(){
	$(".selecter").each(function(){
		var s=$(this);
		var z=parseInt(s.css("z-index"));
		var dt=$(this).children("dt");
		var dd=$(this).children("dd");
		var _show=function(){dd.slideDown(200);dt.addClass("cur");s.css("z-index",z+1);};   //展开效果
		var _hide=function(){dd.slideUp(200);dt.removeClass("cur");s.css("z-index",z);};    //关闭效果
		dt.click(function(){dd.is(":hidden")?_show():_hide();});
		dd.find("a").click(function(){dt.html($(this).html());_hide();});     //选择效果（如需要传值，可自定义参数，在此处返回对应的“value”值 ）
		$("body").click(function(i){ !$(i.target).parents(".selecter").first().is(s) ? _hide():"";});
	})
})
</script>
</body>
</html>