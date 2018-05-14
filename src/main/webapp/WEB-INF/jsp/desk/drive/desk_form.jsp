<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>My JSP 'list.jsp' starting page</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="/styles/common/desk/styles_css.jsp"%>
<%@ include file="/styles/common/desk/styles_js.jsp"%>
<link href="<%=basePath %>styles/desk/css/bootstrap.css" rel="stylesheet" type='text/css' media="all" />
<link href="<%=basePath %>styles/desk/css/style.css" rel="stylesheet" type='text/css' media="all" />
<script src="<%=basePath %>styles/desk/js/jquery-1.10.2.min.js"></script>
</head>
<body>
<h1 class="w3ls" style="color: black;">预约${car.carName}</h1>
	<div class="content-agileits">
		<form action="<%=basePath %>deskDriver/insertForm" method="post" data-toggle="validator" role="form" id="form">
			<div class="form-group 小贝壳网站模板 w3 w3l">
			<input type="hidden" value="${car.carId}" name="carId">
			<input type="hidden" value="${user.userId}" name="userId">
				<label for="firstname" class="control-label">预约人姓名</label>
				<input type="text" class="form-control" name="name" style="background-color: rgba(53,33,32,0.42);border: 1px solid rgb(177,177,177);color: white;" placeholder="添加预约人姓名" data-error="添加您的姓名" value="${user.realName}" required>
				<div class="help-block with-errors"></div>
			</div>
			<div class="form-group agileits 小贝壳网站模板 w3">
				<label for="lastname" class="control-label">电话</label>
				<input type="text" class="form-control" name="phone" style="background-color: rgba(53,33,32,0.42);border: 1px solid rgb(177,177,177);color: white;" placeholder="添加预留电话" data-error="添加您的电话" value="${phone}" required>
				<div class="help-block with-errors"></div>
			</div>
			<div class="form-group agileits 小贝壳网站模板 w3">
				<label for="lastname" class="control-label">预约时间</label>
				<input type="text" class="form-control" name="timea" style="background-color: rgba(53,33,32,0.42);border: 1px solid rgb(177,177,177);color: white;" placeholder="选择您的预约时间" data-error="请选择预约时间" onclick="WdatePicker()" required>
				<div class="help-block with-errors"></div>
			</div>
			<div class="form-group agileits 小贝壳网站模板 w3">
				<label for="lastname" class="control-label">预约地点</label>
				<select class="form-control" name="repId" style="background-color: rgba(53,33,32,0.42);border: 1px solid rgb(177,177,177);color: white;">
					<c:forEach items="${reps}" var="rep">
						<option value="${rep.repId}">${rep.repName}</option>
					</c:forEach>
				</select>
			</div>
			<div class="form-group">
				 <button type="submit" class="btn btn-lg" id="submit">极速体验</button>
			</div>
		</form>
    </div>
    <script type="text/javascript">
    	$(function(){
    		$("#submit").click(function(){
    			alert("提交成功!半小时内客服将与您联系");
    			$("#form").submit();
    		})		
    	})
    </script>
<p class="copyright-w3ls" style="font-size: 14px;">填写个人信息&nbsp;&nbsp;&nbsp;<a>极速体验爱车</a></p>
</body>
</html>