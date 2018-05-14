<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>


<title>车之盟 修改个人信息</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="/styles/common/desk/styles_css.jsp"%>
<%@ include file="/styles/common/desk/styles_js.jsp"%>
<script type="text/javascript">
	$(function() {
		$('.navmenu li').hover(function() {
			$('span', this).stop().css('height', '2px');
			$('span', this).animate({
				left : '0',
				width : '100%',
				right : '0'
			}, 200);
		}, function() {
			$('span', this).stop().animate({
				left : '50%',
				width : '0'
			}, 200);
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
<!--底部信息下拉-->
<script type="text/javascript">
	$(function() {
		var wind_wd = $(window).width();
		if (wind_wd <= 735) {
			/* $submenu.first().delay(400).slideDown(700);*/
			$('.relate .tit').on('click', function() {
				$(this).next('.con').slideToggle()
				$(this).parent().siblings('.items').find('.con').slideUp();
			});
		} else {
			$('.relate .tit').unbind("click");
			$('.relate .con').show();
		}
		$(window).resize(function() {
			var wind_wd = $(window).width();
			if (wind_wd <= 735) {
				/* $submenu.first().delay(400).slideDown(700);*/
				$('.relate .tit').on('click', function() {
					$(this).next('.con').slideToggle()
					$(this).parent().siblings('.items').find('.con').slideUp();
				});
			} else {
				$('.relate .tit').unbind("click");
				$('.relate .con').show();
			}
		});
	});
</script>

<!--搜搜框获取焦点-->
<script type="text/javascript">
	$(function() {
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
	$(function() {
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
	$(function() {
		var setTime;
		$(".sercat .weixin").hover(function() {
			setTime = setTimeout(function() {
				$(".sercat .wxewm").show();
			}, 300);
		}, function() {
			if (setTime) {
				clearTimeout(setTime);
			}
			$(".sercat .wxewm").hide();
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
					<input type="text" class="sea-ipt-txt" placeholder="搜索您想要的车" /> <a
						href="#" class="search-btn">搜索</a>
				</div>
			</div>
			<div class="hot-phone">
				<i></i> <span class="js-change-phone">157-1880-5811</span>
			</div>
		</div>
	</div>
	<ul class="navmenu">
		<li class="active"><a href="<%=basePath%>desk/toIndex">首页</a><span></span></li>
		<li><a href="<%=basePath%>deskCar/toBuy">我要买车</a><span></span></li>
		<li><a href="<%=basePath%>deskCar/toCarList">预约试驾</a><span></span></li>
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
	<!--会员中心-->
	<div class="mebBox">
		<div class="meb-cont clearfix mainbox">
			<div class="meb-nav fl dInline">
				<ul class="clearfix">
					<li><a
						href="<%=basePath%>deskUser/toUser?userId=${sessionScope.user.userId}"
						id="b-regist">我的主页</a></li>
					<li><a
						href="<%=basePath %>/deskUser/toUpdate?userId=${sessionScope.user.userId}">编辑个人信息</a></li>
					<li><a
						href="<%=basePath %>/deskUser/toUserLy?userId=${sessionScope.user.userId}">系统通知/推送</a></li>
					<li><a
						href="<%=basePath %>/deskUser/comment?userId=${sessionScope.user.userId}">我的评论</a></li>
					<li class="on"><a
						href="<%=basePath %>/deskUser/toCollect?userId=${sessionScope.user.userId}">我的收藏</a></li>
					<li><a
						href="<%=basePath %>/deskUser/toOrderform?userId=${sessionScope.user.userId}">我的订单</a></li>
					<li><a
						href="<%=basePath %>/deskUser/toCoupon?userId=${sessionScope.user.userId}">我的活动</a></li>
					<li><a
						href="<%=basePath %>/deskUser/browsinghistory?userId=${sessionScope.user.userId}">历史浏览</a></li>
				</ul>
			</div>
			<div class="meb-right fr dInline">
				<div class="mr-top">
					<!--会员中心-->

					<div class="meb-right fr dInline">
						<div class="mr-top">
							<div class="mr-top-div clearfix">
								<span class="fl"> <img width="80"
									height="80" src="<%=basePath%>/${list.userImg }">
								</span>
								<div class="mr-infor fl dInline">
									<h2>
										中午好，尊敬的会员 <b>${list.realName }</b>
									</h2>
									<p>手机：${list.userTel } 邮箱：${list.userEmails }</p>
								</div>
							</div>
						</div>

						<div class="mr-detail">
							<div class="mr-tab clearfix">
								<a class="on">我收藏的车型</a>
							</div>
							<div class="me-box">
									<div class="me-dl" style="display: block;">
										<div class="me-one" id="me-four">

											<ul class="cs-list">
							<c:forEach items="${list2 }" var="list2">
								
												<li class="clearfix" style="position: relative;"><span
													class="carImg fl dInline"><a href="<%=basePath %>deskDriver/toCarInfo?id=${list2.carId}"
														><div class="car_bg"></div> <img
															src="<%=basePath %>${list2.carImg}" width="300"></a> </span>
													<div class="carTxt fr dInline">
														<h2>
															<a href="<%=basePath %>deskDriver/toCarInfo?id=${list2.carId}">${list2.carName } </a>
														</h2>
														<p>
															上牌时间：<span style="color: #F7962F">${list2.carDatea }</span> &nbsp;&nbsp;<span>行驶里程：<span style="color: #F7962F">0.8</span>万公里</span> &nbsp;&nbsp;
															<span>排量：<span style="color: #F7962F">${list2.carCc }L</span></span>
														</p>
														<div class="price clearfix" style="margin: 5px 0;">
															<div class="fl dInline pNum">
																<font>一口价</font><br> <span class="num nBlue">${list2.carPrice }
																</span><font> 万元</font>
															</div>
															<span class="num1 fl"
																style="height: 43px; padding-top: 10px;"><em>新车价：<span style="color: #F7962F">${list2.carPrice }</span>万元(含40140元购置税)</em><br>
																为您节省：11.94万元 <input type="hidden" class="CarValue_287"
																value="{img:'/',id:'224',price:'28.2',status:'',title:'${list2.carName }',url:'#'}">
															</span>
														</div>
														<div class="cs_bt clearfix">
															<a href="<%=basePath %>deskDriver/toDrive?id=${list2.carId}" class="cs-q">立即抢订</a> <a
																 onclick="del('${list2.carId}','${list2.carName }')" style="cursor: pointer;">取消收藏</a>
														</div>
													</div></li>
											
							</c:forEach>
							</ul>
		<script type="text/javascript">
    		function del(id,carName){
    			layer.confirm("确定要取消对  <span style='color:red'>" + carName + "</span> 汽车的收藏吗?",function(index){
    				$.post(
		    				"<%=basePath %>deskExtra/delCollect",
		    				{carId:id},
		    				function(msg){
		    					layer.msg('您已取消了对此车的收藏', {time:300},
		    							function(){
		    							location = "<%=basePath %>/deskUser/toCollect?userId=${sessionScope.user.userId}";
		    						});	
		    				},"json"
		    			)
    			});
    		}
    	</script>
											<div class="hPages"></div>
										</div>
									</div>
								</div>
						</div>

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
							<a href="<%=basePath%>desk/toAbout">买车帮助</a> <a
								href="<%=basePath%>desk/toAbout">卖车帮助</a> <a
								href="<%=basePath%>desk/toAbout">过户帮助</a>
						</div>
					</div>
					<div class="items">
						<div class="tit">
							<i class="icon-angle-right"></i>客服中心
						</div>
						<div class="con">
							<a href="<%=basePath%>desk/toAbout">网站合作</a> <a
								href="<%=basePath%>desk/toAbout">关于我们</a> <a
								href="<%=basePath%>desk/toAbout">联系我们</a>
						</div>
					</div>
					<div class="items">
						<div class="tit">
							<i class="icon-angle-right"></i>购车指南
						</div>
						<div class="con">
							<a href="<%=basePath%>desk/toAbout">购车帮助</a>
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
							<a
								href="http://wpa.qq.com/msgrd?v=3&uin=982165738&site=qq&menu=yes"
								target="_blank" class="kf"><i class="kf-icon"></i>在线客服</a>
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
			<div class="cent">Copyright © 1998-2018, CarUnion.com,All
				Rights Reserved 京ICP备10000000号-1</div>
		</div>
	</div>

	<script type="text/javascript">
		$(function() {
			$('.mr-tab a').each(function(index) {
				$(this).click(function() {
					$(this).addClass('on').siblings().removeClass('on');
					$('.me-dl').eq(index).show().siblings().hide();
				})
			});
		})
	</script>
</body>
</html>