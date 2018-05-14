<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<title>车之盟 预约服务</title>
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
		<li class="active"><a href="<%=basePath%>deskDriver/toCarManager">预约试驾</a><span></span></li>
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
				<li class="active"><a href="<%=basePath%>deskDriver/toCarManager">预约试驾</a><span></span></li>
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
<div class="crumbp"> <a href="<%=basePath%>desk/toIndex">首页</a> <em>&gt;</em> <span>预约服务</span> </div>
<div class="clear_fix"></div>
<div class="mainbox"> 
  <!--门店简介-->
  <div class="shopcar_desc">
    <div class="shop_head_left" style="padding-top:35px;">
      <div class="shop-logo1"></div>
      <div class="shop_head_info">
        <p><span class="shop_name">交易顾问  葛庭玮</span></p>
        <p class="text-muted" style="padding:0px;">电话： <em>400-877-9288</em></p>
        <p class="text-muted" style="padding:0px;">所属门店：<a href="shop.html">北京服务中心>></a></p>
      </div>
    </div>
    <div class="shop_head_right">
    <ul class="indem-ul">
      <li> <span class="indem01"></span>
        <p class="f-type01">专业人员检测</p>
      </li>
      <li> <span class="indem03"></span>
        <p class="f-type01">车辆检测</p>
      </li>
      <li> <span class="indem03"></span>
        <p class="f-type01">1年质保</p>
      </li>
    </ul>
    <div class="shoper_year">从业年限：小于1年 待售车源：101辆</div>
    </div>
  </div>
  <div class="clear_fix"></div>
  <!--筛选条件-->
  <div class="shop_moreitem">
    <div class="moreitem clearfix">
        <dl class="selecter">
		<dt>车型</dt>
		<dd>
			<ul>
				<li><a href="javascript:void(0);">不限</a></li>
				<li><a href="javascript:void(0);"> 两厢轿车 </a></li>
				<li><a href="javascript:void(0);"> 三厢轿车 </a></li>
				<li><a href="javascript:void(0);"> 跑车 </a></li>
				<li><a href="javascript:void(0);"> SUV </a></li>
				<li><a href="javascript:void(0);" > MPV </a></li>
			</ul>
		</dd>
	    </dl>
    
      <dl class="selecter">
		<dt>请选择品牌</dt>
		<dd>
			<ul>
				<li><a href="javascript:void(0);">不限</a></li>
				<li><a href="javascript:void(0);"> 大众 </a></li>
				<li><a href="javascript:void(0);"> 福特 </a></li>
				<li><a href="javascript:void(0);"> 起亚 </a></li>
				<li><a href="javascript:void(0);"> 江淮 </a></li>
				<li><a href="javascript:void(0);" > 一汽 </a></li>
			</ul>
		</dd>
	    </dl>
      <dl class="selecter">
		<dt>请选择车系</dt>
		<dd>
			<ul>
				<li><a href="javascript:void(0);">不限</a></li>
				<li><a href="javascript:void(0);"> polo </a></li>
			</ul>
		</dd>
	    </dl>
      <dl class="selecter">
		<dt>请选择价格</dt>
		<dd>
			<ul>
				<li><a href="javascript:void(0);">不限</a></li>
			</ul>
		</dd>
	    </dl>
      <dl class="selecter">
		<dt>请选择车龄</dt>
		<dd>
			<ul>
				<li><a href="javascript:void(0);">不限</a></li>
			</ul>
		</dd>
	    </dl>
      <dl class="selecter" style="float:right; margin-right:0px;">
		<dt>请选择变速箱</dt>
		<dd>
			<ul>
				<li><a href="javascript:void(0);">不限</a>  </li>
				<li><a href="javascript:void(0);"> 手动 </a></li>
				<li><a href="javascript:void(0);"> 自动 </a></li>
			</ul>
		</dd>
	</dl>
    </div>
  </div>
  <div class="sub_title"><!-- 排序 -->
    <div class="left" id="sort"> <a href="#" data="default" class="on" id="default-sort" value="default">默认排序</a> <a href="#" data="desc" id="post-time-sort" title="点击按发布时间从近到远排序" value="desc"><span class="inline-block">发布时间</span><i class="i-up"></i></a> <a href="#" data="desc" id="brand-time-sort" title="点击按上牌时间从近到远排序" value="desc"><span class="inline-block">上牌时间</span><i class="i-time"></i></a> <a href="#" data="asc" id="kilometer-sort" title="点击按表显里程从低到高排序" value="asc"><span class="inline-block" value="asc">表显里程</span><i class="i-down"></i></a> <a href="#" data="asc" id="price-sort" title="点击按价格从低到高排序" value="asc"><span class="inline-block">价格</span><i class="i-mid"></i></a> </div>
    <div class="right"> <span class="car_sum">共<strong>97</strong>条车源</span> </div>
  </div>
  <div class="clear_fix"></div>
  <div class="cs-list">
    <ul>
      <li class="clearfix" style="position: relative;"> <span class="carImg fl"> <a href="#" target="_blank">
        <div class="car_bg"> </div>
        <img src="<%=basePath%>img/desk/index_img/carinfor1.jpg" width="270" /></a> </span>
        <div class="carTxt fl">
          <h2><a href="infor.html" target="_blank">奔驰C级 2013 款 1.8T 自动 C260 CGI时尚型</a></h2>
          <p> <span>上牌时间：<em>2013-08</em></span> | <span>行驶里程：<em>4.5万公里</em></span> | <span>排量：<em>1.8T</em></span> | <span>排放标准：国四</span> </p>
          <div class="car_desc clearfix"> 2012年12月上牌的 2.0 自动 带天窗 换挡拨片 导航倒车影像等等，车主带代步用的
            ，车子漂亮 看中联系，有合肥客户最好...... </div>
          <div class="cs_bt" style="padding-top:7px;"> <span>2016-11-04 15:24  更新</span> </div>
        </div>
        <div class="fr priceNum"> ￥<span class="num">22.8 </span><font> 万</font>
          <p class="priType-s"> <em class="tag-red">急售</em> <em class="tag-green">准新车</em> <em class="tag-yellow">超值</em> </p>
        </div>
      </li>
      <li class="clearfix" style="position: relative;"> <span class="carImg fl"> <a href="infor.html" target="_blank">
        <div class="car_bg"> </div>
        <img src="<%=basePath%>img/desk/index_img/carinfor1.jpg" width="270" /></a> </span>
        <div class="carTxt fl">
          <h2><a href="infor.html" target="_blank">奔驰C级 2013 款 1.8T 自动 C260 CGI时尚型</a></h2>
          <p> <span>上牌时间：<em>2013-08</em></span> | <span>行驶里程：<em>4.5万公里</em></span> | <span>排量：<em>1.8T</em></span> | <span>排放标准：国四</span> </p>
          <div class="car_desc clearfix"> 2012年12月上牌的 2.0 自动 带天窗 换挡拨片 导航倒车影像等等，车主带代步用的
            ，车子漂亮 看中联系，有合肥客户最好...... </div>
          <div class="cs_bt" style="padding-top:7px;"> <span>2016-11-04 15:24  更新</span> </div>
        </div>
        <div class="fr priceNum"> ￥<span class="num">22.8 </span><font> 万</font>
          <p class="priType-s"> <em class="tag-red">急售</em> <em class="tag-green">准新车</em> <em class="tag-yellow">超值</em> </p>
        </div>
      </li>
      <li class="clearfix" style="position: relative;"> <span class="carImg fl"> <a href="infor.html" target="_blank">
        <div class="car_bg"> </div>
        <img src="<%=basePath%>img/desk/index_img/carinfor1.jpg" width="270" /></a> </span>
        <div class="carTxt fl">
          <h2><a href="infor.html" target="_blank">奔驰C级 2013 款 1.8T 自动 C260 CGI时尚型</a></h2>
          <p> <span>上牌时间：<em>2013-08</em></span> | <span>行驶里程：<em>4.5万公里</em></span> | <span>排量：<em>1.8T</em></span> | <span>排放标准：国四</span> </p>
          <div class="car_desc clearfix"> 2012年12月上牌的 2.0 自动 带天窗 换挡拨片 导航倒车影像等等，车主带代步用的
            ，车子漂亮 看中联系，有合肥客户最好...... </div>
          <div class="cs_bt" style="padding-top:7px;"> <span>2016-11-04 15:24  更新</span> </div>
        </div>
        <div class="fr priceNum"> ￥<span class="num">22.8 </span><font> 万</font>
          <p class="priType-s"> <em class="tag-red">急售</em> <em class="tag-green">准新车</em> <em class="tag-yellow">超值</em> </p>
        </div>
      </li>
      <li class="clearfix" style="position: relative;"> <span class="carImg fl"> <a href="#" target="_blank">
        <div class="car_bg"> </div>
        <img src="<%=basePath%>img/desk/index_img/carinfor1.jpg" width="270" /></a> </span>
        <div class="carTxt fl">
          <h2><a href="infor.html" target="_blank">奔驰C级 2013 款 1.8T 自动 C260 CGI时尚型</a></h2>
          <p> <span>上牌时间：<em>2013-08</em></span> | <span>行驶里程：<em>4.5万公里</em></span> | <span>排量：<em>1.8T</em></span> | <span>排放标准：国四</span> </p>
          <div class="car_desc clearfix"> 2012年12月上牌的 2.0 自动 带天窗 换挡拨片 导航倒车影像等等，车主带代步用的
            ，车子漂亮 看中联系，有合肥客户最好...... </div>
          <div class="cs_bt" style="padding-top:7px;"> <span>2016-11-04 15:24  更新</span> </div>
        </div>
        <div class="fr priceNum"> ￥<span class="num">22.8 </span><font> 万</font>
          <p class="priType-s"> <em class="tag-red">急售</em> <em class="tag-green">准新车</em> <em class="tag-yellow">超值</em> </p>
        </div>
      </li>
      <li class="clearfix" style="position: relative;"> <span class="carImg fl"> <a href="#" target="_blank">
        <div class="car_bg"> </div>
        <img src="<%=basePath%>img/desk/index_img/carinfor1.jpg" width="270" /></a> </span>
        <div class="carTxt fl">
          <h2><a href="infor.html" target="_blank">奔驰C级 2013 款 1.8T 自动 C260 CGI时尚型</a></h2>
          <p> <span>上牌时间：<em>2013-08</em></span> | <span>行驶里程：<em>4.5万公里</em></span> | <span>排量：<em>1.8T</em></span> | <span>排放标准：国四</span> </p>
          <div class="car_desc clearfix"> 2012年12月上牌的 2.0 自动 带天窗 换挡拨片 导航倒车影像等等，车主带代步用的
            ，车子漂亮 看中联系，有合肥客户最好...... </div>
          <div class="cs_bt" style="padding-top:7px;"> <span>2016-11-04 15:24  更新</span> </div>
        </div>
        <div class="fr priceNum"> ￥<span class="num">22.8 </span><font> 万</font>
          <p class="priType-s"> <em class="tag-red">急售</em> <em class="tag-green">准新车</em> <em class="tag-yellow">超值</em> </p>
        </div>
      </li>
      <li class="clearfix" style="position: relative;"> <span class="carImg fl"> <a href="infor.html" target="_blank">
        <div class="car_bg"> </div>
        <img src="<%=basePath%>img/desk/index_img/carinfor1.jpg" width="270" /></a> </span>
        <div class="carTxt fl">
          <h2><a href="infor.html" target="_blank">奔驰C级 2013 款 1.8T 自动 C260 CGI时尚型</a></h2>
          <p> <span>上牌时间：<em>2013-08</em></span> | <span>行驶里程：<em>4.5万公里</em></span> | <span>排量：<em>1.8T</em></span> | <span>排放标准：国四</span> </p>
          <div class="car_desc clearfix"> 2012年12月上牌的 2.0 自动 带天窗 换挡拨片 导航倒车影像等等，车主带代步用的
            ，车子漂亮 看中联系，有合肥客户最好...... </div>
          <div class="cs_bt" style="padding-top:7px;"> <span>2016-11-04 15:24  更新</span> </div>
        </div>
        <div class="fr priceNum"> ￥<span class="num">22.8 </span><font> 万</font>
          <p class="priType-s"> <em class="tag-red">急售</em> <em class="tag-green">准新车</em> <em class="tag-yellow">超值</em> </p>
        </div>
      </li>
    </ul>
  </div>
</div>
<div class="pages"> <a class="on" href="30/p/1.html">1</a><a class="" href="30/p/2.html">2</a><a class="" href="30/p/3.html">3</a><a class="" href="30/p/4.html">4</a><a class="" href="30/p/5.html">5</a> <a href="30/p/2.html">&gt;&gt;</a> <a href="30/p/6.html">6</a> </div>
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
								    		    location = "<%=basePath%>desk/toIndex";
								    		    
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
								    			location = "<%=basePath%>desk/toIndex";
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