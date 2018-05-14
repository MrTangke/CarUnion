<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>车之盟 买好车,尽在车之盟</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="/styles/common/desk/styles_css.jsp"%>
<%@ include file="/styles/common/desk/styles_js.jsp"%>
<style type="text/css">
#carSel a {
	cursor: pointer;
}

#good9:HOVER {
	cursor: pointer;
	color: #F7962F;
}

#good9 {
	transition: color 0.5s;
}
</style>
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
						<input type="text" class="sea-ipt-txt" placeholder="搜索您想要的车"
							value="${carName}" name="carName" /> <input type="submit"
							class="search-btn" value="搜索" style="border: none;">
					</form>
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
				<li class="logo"><a href="<%=basePath%>desk/toIndex">
				<img src="<%=basePath%>img/desk/index_img/logo.png" width="180" /></a></li>
				<li><a href="<%=basePath%>desk/toIndex">首页</a></li>
				<li><a href="<%=basePath%>deskCar/toBuy">我要买车</a></li>
				<li><a href="<%=basePath%>deskCar/toCarList">预约试驾</a><span></span></li>
				<li><a href="<%=basePath%>desk/toEvent">优惠活动</a></li>
				<li><a href="<%=basePath%>desk/toReport">网站精选</a></li>
			</ul>
			<div class="seas">
				<div class="egc-sea-box">
					<form action="<%=basePath%>deskCar/toBuy" method="post">
						<input type="text" class="sea-ipt-txt" placeholder="搜索您想要的车"
							value="${carName}" name="carName" /> <input type="submit"
							class="search-btn" value="搜索" style="border: none;">
					</form>
				</div>
			</div>
		</div>
	</div>
	<!--所在位置-->
	<div class="crumbp">
		<a href="<%=basePath%>desk/toIndex">首页</a> <em>&gt;</em> <a
			href="<%=basePath%>deskCar/toBuy">品牌车</a>
	</div>
	<div class="mainbox">
		<!--搜索条件-->
		<div class="comfilter-bd">
			<div class="filterBox" id="carSel">
				<dl class="fliter-bd clearfix">
					<dt>品牌：</dt>
					<dd class="clickBrandWidget">
					<dd class="clickTagWidget">
						<a class="on brand1" name="null" id="brand1">不限</a>
						<c:forEach items="${brand}" var="brand" begin="0" end="15">
							<a onclick="good(${brand.brandId})" class="brand1"
								name="${brand.brandId}"><font size="2">${brand.brandName}</font></a>&nbsp;
          				</c:forEach>
						<!--品牌全部-->
						<span class="brand-all z30"> <em data-role="show">全部<i></i></em>
							<div data-role="otherBrand" class="otherbrand" style="display: none;">
								<div class="o-b-box">
									<span class="arrow"><s></s></span>
									<ul data-role="letterNav" class="o-b-list">
										<li class="clearfix"><c:forEach items="${brand}"
												var="brand" begin="17" end="500">
												<div style="float: left;">
													<a class="brand1" name="${brand.brandId}"> <font
														size="2">${brand.brandName}</font></a>
												</div>
											</c:forEach></li>
									</ul>
								</div>
							</div>
						</span>
					</dd>
				</dl>

				<dl class="fliter-bd clearfix">
					<dt>车型：</dt>
					<dd class="clickTagWidget">
						<a class="on model1" href="#" name="null" id="model1">不限</a>
						<c:forEach items="${carModel}" var="model">
							<a class="model1" name="${model.modelId }">
								${model.modelName} </a>
						</c:forEach>
					</dd>
				</dl>
				<dl class="fliter-bd clearfix">
					<dt>价格：</dt>
					<dd>
						<a class="on price1" href="#" name="null" id="price1">不限</a> <a
							class="price1" onclick="" name="&lt;5"> 5万以下 </a> <a
							class="price1" onclick="" name="between 5 and 10"> 5-10万 </a> <a
							class="price1" onclick="" name="between 10 and 20"> 10-20万 </a> <a
							class="price1" onclick="" name="between 20 and 50"> 20-50万 </a> <a
							class="price1" onclick="" name="between 50 and 100"> 50-100万
						</a> <a class="price1" onclick="" name="between 100 and 200">
							100-200万 </a> <a class="price1" onclick="" name="between 200 and 500">
							200-500万 </a> <a class="price1" onclick="" name=">500"> 500万以上 </a>
						<!-- 筛选 -->
						<span class="input-box clearfix rangeFilter"> <label>
								<input type="text" value="" data-default-value="0" size="4"
								class="js-begin" maxlength="3" id="my_price_b" name="b"
								style="position: relative; top: 3px;">
						</label> <label><i class="input-line">-</i></label> <label> <input
								type="text" value="" data-default-value="999" size="4"
								class="js-end" maxlength="3" id="my_price_e" name="e"
								style="position: relative; top: 3px;">
						</label> <label class="input-unit">万</label> <label><a gjalog=""
								href="#" class="input-btn js-btn">筛选</a></label>
						</span>
					</dd>
				</dl>
				<div class="moreitem clearfix">
					<span>更多：</span>
					<dl class="selecter">
						<dt>促销</dt>
						<dd>
							<ul>
								<li><a href="javascript:void(0);" name="null"
									class="on status1" name='null' id="status1">不限</a></li>
								<li><a href="javascript:void(0);" class="status1" name="3">
										有折扣 </a></li>
								<li><a href="javascript:void(0);" class="status1" name="4">
										无折扣 </a></li>
							</ul>
						</dd>
					</dl>
					<dl class="selecter" >
						<dt>颜色</dt>
						<dd>
							<ul>
								<li><a href="javascript:void(0);" name="null" class="on color1" id="color1">不限</a></li>
								<c:forEach items="${carColor}" var="color">
									<li><a href="javascript:void(0);" class="color1" name="${color.colorId}">
									<div style="width: 12px;height: 12px;float: left;position: relative;top: 8px;margin-right: 3px;background-color: ${color.colorRgb}"></div>${color.colorName}
									</a></li>
								</c:forEach>
							</ul>
						</dd>
					</dl>
					<dl class="selecter">
						<dt>配置</dt>
						<dd>
							<ul>
								<li><a href="javascript:void(0);" name="null"
									class="on config1" id="config1">不限</a></li>
								<li><a href="javascript:void(0);" name="1" class="config1">低配</a></li>
								<li><a href="javascript:void(0);" name="2" class="config1">中配</a></li>
								<li><a href="javascript:void(0);" name="3" class="config1">高配</a></li>
							</ul>
						</dd>
					</dl>
					<dl class="selecter">
						<dt>排量</dt>
						<dd>
							<ul>
								<li><a href="javascript:void(0);" name="null"
									class="on cc1" id="cc1">不限</a></li>
								<li><a href="javascript:void(0);" name="bewteen 1 and 1.7"
									class="cc1">1L - 1.7L</a></li>
								<li><a href="javascript:void(0);" name="bewteen 1.7 and 2"
									class="cc1">1.7L - 2L</a></li>
								<li><a href="javascript:void(0);" name="bewteen 2 and 2.5"
									class="cc1">2L - 2.5L</a></li>
								<li><a href="javascript:void(0);" name="bewteen 2.5 and 3"
									class="cc1">2.5L - 3L</a></li>
								<li><a href="javascript:void(0);" name=">3" class="cc1">3L以上
								</a></li>
							</ul>
						</dd>
					</dl>
					<dl class="selecter">
						<dt>最高时速</dt>
						<dd>
							<ul>
								<li><a href="javascript:void(0);" name="null"
									class="on speed1" id="speed1">不限</a></li>
								<li><a href="javascript:void(0);" class="speed1"
									name="between 120 and 150">120-150 </a></li>
								<li><a href="javascript:void(0);" class="speed1"
									name="between 150 and 200">150-200 </a></li>
								<li><a href="javascript:void(0);" class="speed1"
									name="between 200 and 240"> 200-240</a></li>
							</ul>
						</dd>
					</dl>
					<dl class="selecter">
						<dt class="safe1">安全性</dt>
						<dd>
							<ul>
								<li><a href="javascript:void(0);" name="null"
									class="on safe1" id="safe1">不限</a></li>
								<li><a href="javascript:void(0);" name="1" class="safe1">
										普通配置 </a></li>
								<li><a href="javascript:void(0);" name="2" class="safe1">
										高端配置 </a></li>
								<li><a href="javascript:void(0);" name="3" class="safe1">
										顶级配置 </a></li>
							</ul>
						</dd>
					</dl>
				</div>
			</div>
			<script type="text/javascript">
	
	//重置按钮
	function reset11(){
		location = "<%=basePath%>deskCar/fleshToBuy";
	}
$(function(){
	//最新发布
	$("#two").click(function(){
		$(".sequen li").attr("class","");
		$(this).attr("class","first");
	})
	$(".px").click(function(){
		$(".sequen li").attr("class","");
		$(this).attr("class","first");
		if($(this).children("a").children("i").attr("class")=="up"){
			$(this).children("a").children("i").attr("class","");
			$(this).children("a").children("i").attr("style","background-position: 0 -55px");
		}else {
			$(this).children("a").children("i").attr("style","");
			$(this).children("a").children("i").attr("class","up");
		}	
	})
	//默认排序
	$("#first").click(function(){
		$(".sequen li").children("a").children("i").map(function(){
			$(this).attr("class","up");
			$(this).attr("style","");			
		})
		$(".sequen li").attr("class","");
			$(this).attr("class","first");	
	})
	 //促销
	$(".selecter a[class='status1'],#status1").click(function(){
		$("a[class='on status1']").attr("class","brand1");
	    $(this).attr("class","on status1");
	})
	//颜色
	$(".selecter a[class='color1'],#color1").click(function(){
		$("a[class='on color1']").attr("class","color1");
	    $(this).attr("class","on color1");
	})
	//配置
	$(".selecter a[class='config1'],#config1").click(function(){
		$("a[class='on config1']").attr("class","config1");
	    $(this).attr("class","on config1");
	})
	//排量
	$(".selecter a[class='cc1'],#cc1").click(function(){
		$("a[class='on cc1']").attr("class","cc1");
	    $(this).attr("class","on cc1");
	})
	//最高时速
	$(".selecter a[class='speed1'],#speed1").click(function(){
		$("a[class='on speed1']").attr("class","speed1");
	    $(this).attr("class","on speed1");
	})
	//安全性能
	$(".selecter a[class='safe1'],#safe1").click(function(){
		$("a[class='on safe1']").attr("class","safe1");
	    $(this).attr("class","on safe1");
	})
	//品牌
	$("a[class='brand1'],#brand1").click(function(){
		$("a[class='on brand1']").attr("class","brand1");
		$(this).attr("class","on brand1");
	});
	//车型	
	$("a[class='model1'],#model1").click(function(){	
		$("a[class='on model1']").attr("class","model1");
		$(this).attr("class","on model1");
	});
	//价格
	$("a[class='price1'],#price1").click(function(){
		$("a[class='on price1']").attr("class","price1");
		$(this).attr("class","on price1");	
	}); 	
	//Ajax提交条件搜索数据
	$("#carSel a,.selecter a,#px li").click(function(){
		//获取条件栏数据
		var bname = $("a[class='on brand1']").text();						
		var mname = $("a[class='on model1']").text();
		var pname = $("a[class='on price1']").text();
		var statusName = $(".selecter a[class='on status1']").html();
		var colorName = $(".selecter a[class='on color1']").text();
		var configName = $(".selecter a[class='on config1']").html();
		var ccName = $(".selecter a[class='on cc1']").html();
		var speedName = $(".selecter a[class='on speed1']").html();
		var safeId = $(".selecter a[class='on safe1']").html();
		//清空条件栏
		$("#tiaojian").empty();
		//添加条件栏
		if(bname!='不限'){
			$("#tiaojian").append("<a href=\"#\"  class=\"sel-a\">"+bname+"</a>");
		}
		if(mname!='不限'){
			$("#tiaojian").append("<a href=\"#\"  class=\"sel-a\">"+mname+"</a>");
		}
		if(pname!='不限'){
			$("#tiaojian").append("<a href=\"#\"  class=\"sel-a\">"+pname+"</a>");
		}
		if(statusName!='不限'){
			$("#tiaojian").append("<a href=\"#\"  class=\"sel-a\">"+statusName+"</a>");
		}
		if(colorName!='不限'){
			$("#tiaojian").append("<a href=\"#\"  class=\"sel-a\">"+colorName+"</a>");
		}
		if(configName!='不限'){
			$("#tiaojian").append("<a href=\"#\"  class=\"sel-a\">"+configName+"</a>");
		}
		if(ccName!='不限'){
			$("#tiaojian").append("<a href=\"#\"  class=\"sel-a\">"+ccName+"</a>");
		}
		if(speedName!='不限'){
			$("#tiaojian").append("<a href=\"#\"  class=\"sel-a\">"+speedName+"</a>");
		}
		if(safeId!='不限'){
			$("#tiaojian").append("<a href=\"#\"  class=\"sel-a\">"+safeId+"</a>");
		}
		if($("#tiaojian a").length!=0){
			$("#tiaojian").append(" <a href=\"#\"  class=\"sel-reset\" onclick='reset11()'>重置</a>");
		}
			
		//获取条件value
		var bid = $("a[class='on brand1']").attr("name");
		var mid = $("a[class='on model1']").attr("name");
		var pid = $("a[class='on price1']").attr("name");
		var statusId = $(".selecter a[class='on status1']").attr("name");
		var colorId = $(".selecter a[class='on color1']").attr("name");
		var configId = $(".selecter a[class='on config1']").attr("name");
		var ccId = $(".selecter a[class='on cc1']").attr("name");
		var speedId = $(".selecter a[class='on speed1']").attr("name");
		var safeId = $(".selecter a[class='on safe1']").attr("name");
		//获取排序value
		var pxName = "g.car_heat desc";
		if($("#px li[class='first']").attr("id")=="first"){
			var pxName = "g.car_heat desc";
		}else if ($("#px li[class='first']").attr("id")=="two") {
			var pxName = "g.car_datea desc";
		}else if ($("#px li[class='first']").attr("id")=="three") {
			if($("#px li[class='first']").children("a").children("i").attr("class")=="up"){
				var pxName = "g.car_heat asc";
			}else {
				var pxName = "g.car_heat desc";
			}
		}else if ($("#px li[class='first']").attr("id")=="four") {
			if($("#px li[class='first']").children("a").children("i").attr("class")=="up"){
				var pxName = "g.car_price asc";
			}else {
				var pxName = "g.car_price desc";
			}
		}else if ($("#px li[class='first']").attr("id")=="five") {
			if($("#px li[class='first']").children("a").children("i").attr("class")=="up"){
				var pxName = "g.car_safety asc";
			}else {
				var pxName = "g.car_safety desc";
			}
		}
		//清空汽车列表
		$("#carList,#carList4").empty();
		$("#good9").hide();
		$.post(
			"<%=basePath%>deskCar/getGoodsBuyIds",
			{
				brandId:bid,
				modelId:mid,
				priceId:pid,
				statusId:statusId,
				colorId:colorId,
				onfigId:configId,
				ccId:ccId,
				speedId:speedId,
				safeId:safeId,
				pxName:pxName
			},function(cars){
				var curWwwPath = window.document.location.href;
			    //获取主机地址之后的目录，如： /ems/Pages/Basic/Person.jsp
			    var pathName = window.document.location.pathname;
			    var pos = curWwwPath.indexOf(pathName);
			    //获取主机地址，如： http://localhost:8080
			    var localhostPath = curWwwPath.substring(0, pos);
			    //获取带"/"的项目名，如：/ems
			    var projectName = pathName.substring(0, pathName.substr(1).indexOf('/') + 1);
			    //获取项目的basePath   http://localhost:8080/ems/
			    var basePath=localhostPath+projectName+"/";
			    var i =0;
				
			    if(Object.keys(cars).length==0){
			    	$("#carList").append("暂无此类车辆信息");
			    }else {
			    	for(var i in cars){
			    		if(cars[i].carSafety==1){
					    	var safeName="低";
					    }
					    if(cars[i].carSafety==2){
					    	var safeName="中";
					    }
					    if(cars[i].carSafety==3){
					    	var safeName="高";
					    }
						$("#carList").append("<div style='float: left;margin: 2.5px;' class='list-infoBox' id='car1'><a class='imgtype' href="+basePath+"/deskDriver/toCarInfo?id="+cars[i].carId+"> <img width='290' height='194' src="+basePath+cars[i].carImg+"> </a><p class='infoBox' style='line-height: 1.2em;'> <a  target='_blank' class='info-title'>"+cars[i].carName+"</a> </p><p class='fc-gray'> <span class='tag-gray'>"+cars[i].repName+"</span> <span class=''>"+cars[i].carDatea+"上牌</span>&nbsp;&nbsp;<em class='shuxian'>|</em>&nbsp;安全性："+safeName+"</p><p class='priType-s'> <em class='tag-red'>急售</em> <em class='tag-green'>准新车</em> <em class='tag-yellow'>超值</em> <span> <i class='fc-org priType'>"+(cars[i].carPrice-cars[i].carPrice/10)+"万</i> </span><s style='font-size:13px;'>"+cars[i].carPrice+"万</s></p></div>")
						}
				}
				//当前找到车辆显示
				$("#carNum").text(Object.keys(cars).length);
				$("#carNum1").text(Object.keys(cars).length);
				document.querySelector("#carSel").scrollIntoView();
			},"json"
		)
	});
})
</script>

			<div class="sel-menu clearfix">
				<p class="sel-p">当前筛选&gt;</p>
				<span id="tiaojian"></span>
				<p class="sel-p">
					共为您找到<b id="carNum1">${carNum}</b>辆好车
				</p>
			</div>
		</div>
		<div class="seqBox clearfix">
			<p class="fr seqtype">
				共找到<b id="carNum">${carNum}</b>辆
			</p>
			<ul class="sequen" style="position: relative; left: 1px" id="px">
				<li class="first" id="first"><a href="#">默认排序</a></li>
				<li id="two"><a href="#" title="">最新发布 </a></li>
				<li class="px" id="three"><a href="#" title="">热度<i
						class="up"></i>
				</a></li>
				<li class="px" id="four"><a href="#" title="">价格<i
						class="up"></i>
				</a></li>
				<li class="px" id="five"><a href="#" title="">安全<i
						class="up"></i>
				</a></li>
			</ul>
			<!--     <ul id="checkArea" class="screen-input tagTypesFilterNew">
      <li>
        <input type="checkbox" id="chaozhi">
        <label for="chaozhi">超值</label>
      </li>
      <li>
        <input type="checkbox" id="jishou">
        <label for="jishou">急售</label>
      </li>
      <li >
        <input type="checkbox" id="zhunxinche" title="上市三月之内">
        <label for="zhunxinche" title="上市三月之内">准新车</label>
      </li>
      <li >
        <input type="checkbox" id="keqianquanguo">
        <label for="keqianquanguo">可迁全国</label>
      </li>
    </ul> -->
		</div>
		<ul class="carList">
			<li id="carList"><c:forEach items="${carGoods}" var="goods"
					begin="0" end="11">
					<div style="float: left; margin: 2.5px;" class="list-infoBox"
						id="car1">
						<a class="imgtype"
							href="<%=basePath%>deskDriver/toCarInfo?id=${goods.carId}"> <img
							width="290" height="194" src="<%=basePath%>${goods.carImg}">
						</a>
						<p class="infoBox" style="line-height: 1.2em;">
							<a href="infor.html" target="_blank"
								class="info-title">${goods.carName}</a>
						</p>
						<p class="fc-gray">
							<span class="tag-gray">${goods.repName}</span> <span class="">${goods.carDatea}上牌</span>
							<em style="padding-left: 4px" class="shuxian">|</em>
				        	<span style="padding-left: 4px" >
				        	安全性:
				        		<c:if test="${goods.carSafety==1}">高</c:if>
				        		<c:if test="${goods.carSafety==2}">中</c:if>
				        		<c:if test="${goods.carSafety==3}">低</c:if>
				        	</span>
						</p>
						<p class="priType-s">
							<em class="tag-red">急售</em> <em class="tag-green">准新车</em> <em
								class="tag-yellow">超值</em> <span> <i
								class="fc-org priType"> ${goods.carPrice-goods.carPrice/10}万
							</i>
							</span> <s style="font-size: 13px;">${goods.carPrice}万</s>
						</p>
					</div>
				</c:forEach></li>
			<button onclick="good9()" id="good9"
				style="width: 1195px; background-color: #F8F8F8; border: 1px #DDDDDD solid; font-size: 14px; height: 30px;">点击查看更多</button>
			<li id="carList4" style="display: none;"><c:forEach
					items="${carGoods}" var="goods" begin="12" end="500">
					<div style="float: left; margin: 2.5px;" class="list-infoBox"
						id="car1">
						<a title=" 2018款 手动 梦想版" class="imgtype"
							href="<%=basePath%>deskDriver/toCarInfo?id=${goods.carId}"> <img
							width="290" height="194" src="<%=basePath%>${goods.carImg}">
						</a>
						<p class="infoBox">
							<a href="infor.html" target="_blank" class="info-title">${goods.carName}</a>
						</p>
						<p class="fc-gray">
							<span class="tag-gray">${goods.repName}</span> <span class="">${goods.carDatea}上牌</span>
							<em class="shuxian">|</em>&nbsp;
							安全性:
				        	&nbsp;&nbsp;&nbsp;<c:if test="${goods.carSafety==1}">高</c:if>
				        	&nbsp;&nbsp;&nbsp;<c:if test="${goods.carSafety==2}">中</c:if>
				        	&nbsp;&nbsp;&nbsp;<c:if test="${goods.carSafety==3}">低</c:if>
						</p>
						<p class="priType-s">
							<em class="tag-red">急售</em> <em class="tag-green">准新车</em> <em
								class="tag-yellow">超值</em> <span> <i
								class="fc-org priType"> ${goods.carPrice-goods.carPrice/10}万
							</i>
							</span> <s style="font-size: 13px;">${goods.carPrice}万</s>
						</p>
					</div>
				</c:forEach></li>
		</ul>

		<script type="text/javascript">
  //显示更多车辆
  		function good9(){
  			$("#carList4").attr("style","display: block;")
  			$("#good9").hide(500);
  		}
  </script>
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
							随时随地，秒选好车<br /> 优质新车
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
								    		    location = "<%=basePath%>deskCar/toBuy";
								    		    
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
								    			location = "<%=basePath%>deskCar/toBuy";
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
//下拉条件选择框Js样式
$(function(){
	$(".selecter").each(function(){
		var s=$(this);
		var z=parseInt(s.css("z-index"));
		var dt=$(this).children("dt");
		var dd=$(this).children("dd");
		var _show=function(){dd.slideDown(200);dt.addClass("cur");s.css("z-index",z+1);};   //展开效果
		var _hide=function(){dd.slideUp(200);dt.removeClass("cur");s.css("z-index",z);};    //关闭效果
		dt.click(function(){dd.is(":hidden")?_show():_hide();});
		dd.find("a").click(function(){dt.html($(this).html());_hide();});  //选择效果（如需要传值，可自定义参数，在此处返回对应的“value”值 ）
		$("body").click(function(i){ !$(i.target).parents(".selecter").first().is(s) ? _hide():"";});
	})
})
</script>
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
<script>
$(function(){
	var t=null,$this,i=0;
	//品牌
	$(".brand-all").bind({
		mouseenter:function(){
			$(this).find(".otherbrand").show();
		},
		mouseleave:function(){
			$(this).find(".otherbrand").hide();
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
</body>
</html>