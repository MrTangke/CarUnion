<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<title>火速预约试驾 ${car.carName} 汽车</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="/styles/common/desk/styles_css.jsp"%>
<%@ include file="/styles/common/desk/styles_js.jsp"%>
<style type="text/css">
#good9:HOVER {
	cursor: pointer;
	color: #F7962F;
}
#good9 {
	transition: color 0.5s;
}
</style>
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
		<li class="active"><a href="<%=basePath%>deskCar/toBuy">我要买车</a><span></span></li>
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
				<li class="active"><a href="<%=basePath%>deskCar/toBuy">我要买车</a></li>
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
<div class="crumbp"> <a href="<%=basePath%>desk/toIndex">首页</a> <em>&gt;</em>  <a href="<%=basePath%>deskCar/toBuy">品牌车</a><em>&gt;</em>  <a href="<%=basePath%>deskDriver/toCarInfo?id=${car.carId}">车辆信息[${car.carName}]</a></div>
<div class="mainbox"> 
  <!--车子概况头部-->
  <div class="car-top">
    <div class="row">
      <div class="mainpic"> <img src="<%=basePath%>${car.carImg}" height="390"> <a href="#picture" class="showpic">查看图集</a> </div>
      <div class="carinfor">
        <h3 class="car-allname">${car.carName}</h3>
        <div class="price-box">
          <div class="price-infor">
            <p ><span class="nowprice" style="padding-left: 35px;">${car.carPrice}万元</span></p>
          </div>
          <div class="price_button" id="sendprice" onclick="javascript:alert('此车暂无优惠活动')">获取优惠券</div>
        </div>
        <div class="clear_fix"></div>
        <div class="item-box">
          <div class="itemlist rightline">
            <p class="text-muted">上牌城市</p>
            <p>北京</p>
          </div>
          <div class="itemlist rightline">
            <p class="text-muted">上牌时间</p>
            <p>${car.carDatea}</p>
          </div>
          <div class="itemlist rightline">
            <p class="text-muted">表显里程</p>
            <p>0.20万公里</p>
          </div>
          <div class="itemlist rightline">
            <p class="text-muted">排量</p>
            <p>${car.carCc}L</p>
          </div>
          <div class="itemlist">
            <p class="text-muted">变速箱</p>
            <p>5挡 手动</p>
          </div>
        </div>
        <div class="row">
          <div class="tel-box"> 电话咨询 :<em style="font-size: 19px;">157-1880-5811</em> </div>
          <div class="order_button"> <a class="wanttoprice orderbut" id="sendMESS" href="<%=basePath %>deskDriver/toDrive?id=${car.carId}">预约看车</a> </div>
          		<c:if test="${flag==1}">
          			<div class="order_button"><a href="#" class="yshouchang" id="sendMESStx" id="good12" onclick="yshoucang(${car.carId})">已收藏</a>
          		</c:if>
          		<c:if test="${flag==0}">
          			<div class="order_button"><a href="#" class="shouchang" id="sendMESStx" id="good12" onclick="shoucang(${car.carId})">收藏</a>
          		</c:if>
          <!--<a href="#" class="yshouchang">已收藏</a>-->
            <script type="text/javascript">
            	//取消收藏
            	function yshoucang(carId){
            		$.post(
                			"<%=basePath %>deskExtra/delCollect",
                			{carId:carId},
                			function(msg){
                				layer.msg('取消收藏', {time:500});
                				$("#sendMESStx").attr("onclick","shoucang(${car.carId})");
                				$("#sendMESStx").attr("class","shouchang");
                				$("#sendMESStx").text("收藏");

                			},"json"
                		)
            	}
            	//收藏
            	function shoucang(carId){
            		if("<%=session.getAttribute("user")%>"=='null'){
            			layer.msg('请先登陆', {time:500},
            					function(){
            					$("#b-login").click();
            				});	
            		}else {
            			$.post(
                    			"<%=basePath %>deskExtra/addCollect",
                    			{carId:carId},
                    			function(msg){
                    				layer.msg('已收藏', {time:500});
                    				$("#sendMESStx").attr("onclick","yshoucang(${car.carId})")
                    				$("#sendMESStx").attr("class","yshouchang");
                    				$("#sendMESStx").text("已收藏");
                    			},"json"
                    		)
					}	
            	}
            </script>
            <!-- 已经收藏class yshoucang -->
            <div id="fp">
              <ul style=" position:relative;">
                <li>
                  <div class="fenxiang">分享</div>
                  <div class="co-pan" width="240" style="top: 50%; margin-top: -34.5px; width: 0px;">
                    <div style="width:212px;position:relative; ">
                      <div style="border:1px solid #ddd;padding: 0px 10px;background:#fff;">
                        <div style="border-bottom:1px solid #ddd; line-height:30px; color:#333; font-size:16px; text-align:left;">分享到：</div>
                        <div>
                          <div class="bdsharebuttonbox bdshare-button-style1-24" data-bd-bind="1479453771421"> <a href="#" class="bds_qzone" data-cmd="qzone" title="分享到QQ空间"></a> <a href="#" class="bds_tsina" data-cmd="tsina" title="分享到新浪微博"></a><a href="#" class="bds_renren" data-cmd="renren" title="分享到人人网"></a> <a href="#" class="bds_tqf" data-cmd="tqf" title="腾讯朋友"></a> </div>
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
                      </div>
                      <div class="co-pan-arr" style="right:-11px;"></div>
                    </div>
                  </div>
                </li>
              </ul>
            </div>
          </div>
        </div>
        <!--优势-->
        <div class="advantage">
          <h3>车之盟已对该车辆进行检测，并将提供售后服务及保障。</h3>
          <div class="ind-dz-lc">
            <ul>
              <li>
                <div class="circle radius"> <i class="lc-01"></i> </div>
                <div class="txt">
                  <h4>一年/两万公里质保</h4>
                </div>
              </li>
              <li>
                <div class="circle radius"> <i class="lc-02"></i> </div>
                <div class="txt">
                  <h4>全面检测</h4>
                </div>
              </li>
              <li>
                <div class="circle radius"> <i class="lc-04"></i> </div>
                <div class="txt">
                  <h4>100%优质车源</h4>
                </div>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!--详细导航-->
  <div class="cont-tips-outer" id="J_m_nav">
    <div class="cont-tips"> <a class="apt-btn fr" id="sendMESS" href="<%=basePath %>deskDriver/toDrive?id=${car.carId}">预约看车</a>
      <p class="fr check-tel"> <span class="f18"> <i>看车电话：</i> <b class="teltype">157-1880-5811</b> </span> </p>
      <ul class="cont-tips-qh clearfix">
        <li class="active"><a href="#base" rel="nofollow">基本信息</a></li>
        <li><a href="#picture" rel="nofollow">车辆图片</a></li>
        <li><a href="#luxian" rel="nofollow">看车路线</a></li>
        <li><a href="#config" rel="nofollow">车辆口碑</a></li>
        <li><a href="#love" rel="nofollow">猜你喜欢</a></li>
      </ul>
    </div>
  </div>
  <div id="base"> 
    <!--基本信息-->
    <div class="titles">
      <h2>基本信息</h2>
    </div>
    <div class="ca-table">
      <table>
        <tbody>
          <tr>
            <td class="ca-td1">热度：</td>
            <td>
            	<c:if test="${car.carHeat>80}">热门</c:if>
            	<c:if test="${car.carHeat>50&&car.carHeat<=80}">一般</c:if>
            	<c:if test="${car.carHeat<=50}">冷门</c:if>
            </td>
            <td class="ca-td1">状态：</td>
            <td>
            		<c:if test="${car.carStatus==1}">有库存</c:if>
            		<c:if test="${car.carStatus==2}">无库存</c:if>
            </td>
            <td class="ca-td1">排量：</td>
            <td>
            		${car.carCc}L
            </td>
            <td class="ca-td1">价格：</td>
            <td>
            	${car.carPrice}万(元)
            </td>
          </tr>
          
          <tr>
            <td class="ca-td1">耗油量：</td>
            <td>
            	${car.carOilwear}
            </td>
            <td class="ca-td1">配置：</td>
            <td>
            	<c:if test="${car.configuration==1}">低配</c:if>
            	<c:if test="${car.configuration==2}">中配</c:if>
            	<c:if test="${car.configuration==3}">高配</c:if>
            </td>
            <td class="ca-td1">时速：</td>
            <td>
            	${car.carSpeed}km/h
            </td>
            <td class="ca-td1">安全性：</td>
            <td>
            	<c:if test="${car.carSafety==1}">低</c:if>
            	<c:if test="${car.carSafety==2}">中</c:if>
            	<c:if test="${car.carSafety==3}">高</c:if>
            </td>
          </tr>
          
          <tr>  
            <td class="ca-td1">上牌日期：</td>
            <td>
            	${car.carDatea}
			</td>
			<td class="ca-td1">质保期限：</td>
            <td>
            	${car.carWarranty}年
			</td>
			<td class="ca-td1">收藏量：</td>
            <td>
            	${car.carColNum}
			</td>
			<td class="ca-td1">评论数：</td>
            <td>
            	${plNum}
			</td>
          </tr>
          
          <tr>
            <td colspan="8"><p>爱车外观设计大气，顺畅的线条，银色的车身颜色，爱车现在开出去也不会觉得过时。内饰精致实用，干净整洁，基本功能齐全，空
                间可以满足家庭用车需求，后排乘坐三个成年人也不会觉得很压抑。主要家用，偶尔长途，接送小孩，上下班代步，4S店定期保养，
                现因个人原因出手爱车，有喜欢的朋友可提前打电话预约试车。</p></td>
          </tr>
        </tbody>
      </table>
    </div>
  </div>

  <div id="picture"> 
   <!--车俩图片-->
    <div class="titles">
      <h2>车俩图片</h2>
    </div>
    <ul class="carpiclist">
    	<c:forEach items="${imgs}" var="img">
    		 <li class="fl" style="margin-left: 7px;"><img src="<%=basePath%>${img.imgAddress}" width="590" height="500"/>
        <p class="top-banner"> <span class="title">外观-左前</span> <span class="desc">车身内饰干净整洁</span> </p>
      </li>
    	</c:forEach>
    </ul>
    <div class="clear_fix"></div>
    <!--车俩图片-->
    <div class="titles">
      <h2>查看更多细节</h2>
    </div>
    <div class="picMarquee-left1">
      <div class="hd"> <a class="next"></a> <a class="prev"></a> </div>
      <div class="bd">
        <ul class="picList">
        <c:forEach items="${imgs}" var="img">
    		<li>
            <div class="pic"><img src="<%=basePath%>${img.imgAddress}" /></div>
          </li>
    	</c:forEach>
        </ul>
      </div>
    </div>
    <script type="text/javascript">
		jQuery(".picMarquee-left1").slide({titCell:".hd ul",mainCell:".bd ul",autoPage:true,effect:"left",autoPlay:false,vis:4});
		</script> 
  </div>
  <div id="luxian"> 
    <!--看车路线-->
    <div class="titles">
      <h2>看车路线</h2>
    </div>
    <div class="ban-content" style=" padding:40px; position:relative; ">
      <div id="lumap"> 
        <!--引用百度地图API-->
        <style type="text/css">
    html,body{margin:0;padding:0;}
    .iw_poi_title {color:#CC5522;font-size:14px;font-weight:bold;overflow:hidden;padding-right:13px;white-space:nowrap}
    .iw_poi_content {font:12px arial,sans-serif;overflow:visible;padding-top:4px;white-space:-moz-pre-wrap;word-wrap:break-word}
</style>
        <script type="text/javascript" src="http://api.map.baidu.com/api?key=&v=1.1&services=true"></script> 
        
        <!--百度地图容器-->
        <div style="width:680px;height:300px;" id="dituContent"></div>
        <script type="text/javascript">
    //创建和初始化地图函数：
    function initMap(){
        createMap();//创建地图
        setMapEvent();//设置地图事件
        addMapControl();//向地图添加控件
        addMarker();//向地图中添加marker
    }
    
    //创建地图函数：
    function createMap(){
        var map = new BMap.Map("dituContent");//在百度地图容器中创建一个地图
        var point = new BMap.Point(116.306282,40.049499 );//定义一个中心点坐标116.306282,40.049499 
        map.centerAndZoom(point,18);//设定地图的中心点和坐标并将地图显示在地图容器中
        window.map = map;//将map变量存储在全局
    }
    
    //地图事件设置函数：
    function setMapEvent(){
        map.enableDragging();//启用地图拖拽事件，默认启用(可不写)
        map.enableScrollWheelZoom();//启用地图滚轮放大缩小
        map.enableDoubleClickZoom();//启用鼠标双击放大，默认启用(可不写)
        map.enableKeyboard();//启用键盘上下左右键移动地图
    }
    
    //地图控件添加函数：
    function addMapControl(){
        //向地图中添加缩放控件
	var ctrl_nav = new BMap.NavigationControl({anchor:BMAP_ANCHOR_TOP_LEFT,type:BMAP_NAVIGATION_CONTROL_LARGE});
	map.addControl(ctrl_nav);
        //向地图中添加缩略图控件
	var ctrl_ove = new BMap.OverviewMapControl({anchor:BMAP_ANCHOR_BOTTOM_RIGHT,isOpen:1});
	map.addControl(ctrl_ove);
        //向地图中添加比例尺控件
	var ctrl_sca = new BMap.ScaleControl({anchor:BMAP_ANCHOR_BOTTOM_LEFT});
	map.addControl(ctrl_sca);
    }
    
    //标注点数组
    var markerArr = [{title:"北京市海淀区车之盟科技有限公司",content:"地址：北京市朝阳区樱花东街甲二号<br/>全国服务热线：400-090-1268<br/>联系电话：0551-63772628",point:"116.306282|40.049499",isOpen:1,icon:{w:23,h:25,l:46,t:21,x:9,lb:12}}
		 ];
    //创建marker
    function addMarker(){
        for(var i=0;i<markerArr.length;i++){
            var json = markerArr[i];
            var p0 = json.point.split("|")[0];
            var p1 = json.point.split("|")[1];
            var point = new BMap.Point(p0,p1);
			var iconImg = createIcon(json.icon);
            var marker = new BMap.Marker(point,{icon:iconImg});
			var iw = createInfoWindow(i);
			var label = new BMap.Label(json.title,{"offset":new BMap.Size(json.icon.lb-json.icon.x+10,-20)});
			marker.setLabel(label);
            map.addOverlay(marker);
            label.setStyle({
                        borderColor:"#808080",
                        color:"#333",
                        cursor:"pointer"
            });
			
			(function(){
				var index = i;
				var _iw = createInfoWindow(i);
				var _marker = marker;
				_marker.addEventListener("click",function(){
				    this.openInfoWindow(_iw);
			    });
			    _iw.addEventListener("open",function(){
				    _marker.getLabel().hide();
			    })
			    _iw.addEventListener("close",function(){
				    _marker.getLabel().show();
			    })
				label.addEventListener("click",function(){
				    _marker.openInfoWindow(_iw);
			    })
				if(!!json.isOpen){
					label.hide();
					_marker.openInfoWindow(_iw);
				}
			})()
        }
    }
    //创建InfoWindow
    function createInfoWindow(i){
        var json = markerArr[i];
        var iw = new BMap.InfoWindow("<b class='iw_poi_title' title='" + json.title + "'>" + json.title + "</b><div class='iw_poi_content'>"+json.content+"</div>");
        return iw;
    }
    //创建一个Icon
    function createIcon(json){
        var icon = new BMap.Icon("http://app.baidu.com/map/<%=basePath%>img/desk/index_img/us_mk_icon.png", new BMap.Size(json.w,json.h),{imageOffset: new BMap.Size(-json.l,-json.t),infoWindowOffset:new BMap.Size(json.lb+5,1),offset:new BMap.Size(json.x,json.h)})
        return icon;
    }
    
    initMap();//创建和初始化地图
</script> 
      </div>
      <div class="lumap-right">
        <div style="color:#000; font-size:24px;"><a target="_blank" href="#">北京朝阳区樱花东街甲二号</a></div>
        <div>门店电话：<span style="color:#ee7800; font-size:18px;">157-1880-5811&nbsp;&nbsp;转&nbsp;&nbsp;186409</span></div>
        <div>门店地址：<span style="color:#202020; font-size:16px;">北京市朝阳区区樱花东街甲二号#商102
          （爱琴海往西400米）</span></div>
        <div style="margin-top:20px;"> <img src="<%=basePath%>img/desk/index_img/store-map-22.jpg"> </div>
      </div>
    </div>
  </div>
       <!--车辆口碑-->
  <div id="config">
  
  
    <div class="titles">
      <h2>车辆口碑 : <font color="green">共${plNum}条评价</font></h2>
    </div>
     <div class="ca-table">
      <table>
        <tbody>
        	<c:forEach items="${comments}" var="c">
        	<tr>
	            <td width="200">
	            	<div style="float: left;"><img  src="<%=basePath%>${c.userImg}" style="width: 40px;height: 40px;position: relative;left: 15px;"></div>
	            	<div style="float: left;width: 150px;">&nbsp;&nbsp;<font color="#F7962F"><b>${c.userName}</b></font>&nbsp;&nbsp;
	            	<c:if test="${c.levelName eq '普通用户'}">
	            		<span style="width: 50px;height: 12px;line-height: 12px;text-align: center;font-size: 10px;border: 1px solid #CA995E;color: #CA995E">${c.levelName}</span>
	            	</c:if>
	            	<c:if test="${c.levelName eq '白银用户'}">
	            		<span style="width: 50px;height: 12px;line-height: 12px;text-align: center;font-size: 10px;border: 1px solid #FCB004;color: #FCB004">${c.levelName}</span>
	            	</c:if>
	            	<c:if test="${c.levelName eq '黄金用户'}">
	            		<span style="width: 50px;height: 12px;line-height: 12px;text-align: center;font-size: 10px;border: 1px solid #F76E06;color: #F76E06">${c.levelName}</span>
	            	</c:if>
	            	<c:if test="${c.levelName eq '铂金用户'}">
	            		<span style="width: 50px;height: 12px;line-height: 12px;text-align: center;font-size: 10px;border: 1px solid #C8190A;color: #C8190A">${c.levelName}</span>
	            	</c:if>
	            	<c:if test="${c.levelName eq '钻石用户'}">
	            		<span style="width: 50px;height: 12px;line-height: 12px;text-align: center;font-size: 10px;border: 1px solid #B218E9;color: #B218E9">${c.levelName}</span>
	            	</c:if>
	            	</div>
	            	<div style="width: 90px;overflow: hidden;float: left;height: 19.2px;position: relative;top: 5px;left: 30px;">
	            	<img  src="<%=basePath%>${c.levelImg}" style="position: relative;right: 30px;"></div>
	            </td>
	            <td><div style="height: 60px;overflow: auto;"><span style="font-size: 12px;float: left;"><font color="#F7962F"><b>${c.commentTime}</b></font>&nbsp;&nbsp;发表口碑:</span><br/>
	            	<div style="text-align: left;">&emsp;&emsp;${c.commentContent}</div></div>
	            </td>
           </tr>
        	</c:forEach>
          </tbody>
        </table>
     </div>
  </div>
  <!--猜你喜欢-->
  <div id="love">
  <div class="titles">
    <h2>猜你喜欢</h2>
  </div>
  <ul class="carList">
    <c:forEach items="${carGoods}" var="goods" begin="0" end="3" >
	    <li><!-- target="_blank" class="info-title" -->
	      <div class="list-infoBox"> <a href="<%=basePath%>/deskDriver/toCarInfo?id=${goods.carId}&carName=${goods.carName}" > <img width="290" height="194" src="<%=basePath%>${goods.carImg}" > </a>
	        <p class="infoBox"> <a href="<%=basePath%>/deskDriver/toCarInfo?id=${goods.carId}&carName=${goods.carName}" >${goods.carName} 2018款 手动 梦想版</a> </p>
	        <p class="fc-gray"> <span class="tag-gray">北京市&nbsp;&nbsp;海淀区</span> <span class="">2018年11月上牌</span> <em class="shuxian">|</em> 行驶2.4万公里 </p>
	        <p class="priType-s"> <span> <i class="fc-org priType"> ${goods.carPrice-goods.carPrice/10}万 </i> </span> <s>${goods.carPrice}万</s> </p>
	      </div>
	    </li>
    </c:forEach>
  </ul>
  <div class="clear_fix"></div>
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
							随时随地，秒杀好车<br />
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
								    		    location = "<%=basePath%>deskDriver/toCarInfo?id=${car.carId}";
								    		    
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
								    			location = "<%=basePath%>deskDriver/toCarInfo?id=${car.carId}";
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
$(".appearance-det").each(function() {
				$(this).mouseenter(function() {
					$(this).addClass("active")
				}).mouseleave(function() {
					$(this).removeClass("active")
				})
			});
</script>
<script type="text/livescript">
$("#sendMESStx").live("click",function(){
		$('#popBoxYzmtx').fadeIn();

});
</script>
<script type="text/livescript">
$("#sendMESS").live("click",function(){
		$('#popBoxYzm').fadeIn();

});
</script> 
<script type="text/livescript">
$("#sendprice").live("click",function(){
		$('#popBoxprice').fadeIn();

});
</script>
<script type='text/javascript' >
			var nt = !1;
			$(window).bind("scroll",
				function() {
				var st = $(document).scrollTop();//往下滚的高度
				nt = nt ? nt: $("#J_m_nav").offset().top;
				var sel=$("#J_m_nav");
				if (nt < st) {
					sel.addClass("nav_fixeds");
				} else {
					sel.removeClass("nav_fixeds");
				}
			});
		</script> 
<script type="text/javascript">
		$(function(){
    $(".cont-tips-qh li").click(function() {
        $(this).siblings('li').removeClass('active');  // 删除其他兄弟元素的样式
        $(this).addClass('active');                            // 添加当前元素的样式
    });
}); 
		</script>
<div id="leftsead">
		<ul>
			<li><a id="top_btn"> <img
					src="<%=basePath%>img/desk/index_img/foot03/ll06.png" width="47"
					height="49" class="hides" /> <img
					src="<%=basePath%>img/desk/index_img/foot03/l06.png" width="47"
					height="49" class="shows" />
			</a></li>

			<li><a href="http://wpa.qq.com/msgrd?v=3&uin=982165738&site=qq&menu=yes" target="_blank"> <img
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
<script>
	$(function(){
		$("#fp ul li").hover(function(){
			 $pan=$(this).find(".co-pan");
			 var cwidth=$pan.attr('width');
			 var cheight=$pan.height();
			 $(this).find(".co-pan").not(".cf-item").css({"top":"35px","right":"80px",});
			 $pan.stop(true,false).animate({"width":cwidth + "px"},300);
		},function(){
			 $pan=$(this).find(".co-pan");
			 $pan.stop(true,false).animate({"width":"0px"},300);
		});
		});
</script>
</body>
</html>