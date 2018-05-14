<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>订单列表</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="/styles/common/back/admin_styles_css.jsp"%>
 <%@ include file="/styles/common/back/admin_styles_js.jsp"%>
 
 </head>

<body>
<div class="page-container">
	  		<div class="mt-20">
          <table class="table table-border table-bordered table-bg table-hover table-sort">
		    	<thead>
		    		<tr class="text-c">
						<th>
						<input type="checkbox"/>
						</th>
						<th>序号</th>
						<th>用户</th>
						<th>汽车</th>
						<th>订单时间</th>
						<th>状态</th>
						<th>是否使用优惠</th>
						<th>预约金</th>
						<th>操作</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${orderForm}" var="order" varStatus="u">
						<tr class="text-c">
							<td>
							<input type="checkbox" name="" value=""/>
							</td>
							<td>${u.count}</td>
							<td>${order.realName}</td>
							<td>${order.carName}</td>
							<td>${order.orderTime}</td>
							<td>
								<c:if test="${order.orderStatus==0}">未支付</c:if>
								<c:if test="${order.orderStatus==1}">已支付</c:if>
								<c:if test="${order.orderStatus==2}">已试驾</c:if>
							</td>
							<td>${order.orderEvent}</td>
							<td>${order.orderMoney}</td>
							<td>
								<c:if test="${order.orderStatus==0}" >
									<a href="javascript:;" title="支付" style="background-color: red;border:0;border-radius:10px;padding: 3px;width: 60px;"  
										onclick="money(this,'${order.orderId}')" >
										<font color="white" size="1">支付</font>
									</a>
								</c:if>
								&nbsp;&nbsp;&nbsp;
								<a title="删除" href="javascript:;" onclick="del(this,'${order.orderId}')" class="ml-5" style="text-decoration:none">
									<i class="Hui-iconfont">&#xe6e2;</i>
								</a>&nbsp;&nbsp;&nbsp;
								<c:if test="${order.orderStatus<2}" >
									<a href="javascript:;" title="试驾" style="background-color: red;border:0;border-radius:10px;padding: 3px;width: 60px;" 
										onclick="driver(this,'${order.orderId}')" >
										<font color="white" size="1">试驾</font>
									</a>
								</c:if>
							</td>
						</tr>
					</c:forEach>
				</tbody>	
		 </table>
  </div>
		</div>
	<script type="text/javascript">
	// 分页
	$('.table-sort').dataTable({
		"aaSorting": [[ 0, "asc" ]],//默认第几个排序 
		"bStateSave": false,//状态保存
		"aLengthMenu" : [ 5,10,15 ] ,
		"aoColumnDefs": [
		  {"orderable":false,"aTargets":[0]}// 写出：不参与   排序的列
		]
	});
	
	//删除
	function del(obj,orderId){
		layer.confirm("确定要删除  <span style='color:red'>" + orderId + "</span>  角色吗?",function(index){
			var url = "<%=basePath%>adminOrderForm/deleteOrderForm";
			var params = {};
			params.orderId = orderId;
			$.post(url,params,function(result){
				if(result > 0){
					$(obj).parents("tr").remove();
					layer.msg('已删除!',{icon:1,time:1000});
				}else{
					layer.msg('删除失败!',{icon:1,time:1000});
				}
			});
		});
	}
	
//支付
function money(obj,orderId){
	layer.confirm("确定要为标号为： <span style='color:red'>" + orderId + "</span>的订单支付吗?",function(index){
		$.post(
			"<%=basePath%>/adminOrderForm/zhifu",
			{orderId:orderId},
			function(result){
			if(result > 0){
				layer.msg('已支付!',{icon:1,time:1000},function(){
					location.reload();
				});
			}else{
				layer.msg('支付失败!',{icon:1,time:1000});
			}
		},"json");
	});
}
	
//试驾
function driver(obj,orderId){
	layer.confirm("确定要试驾吗?",function(index){
		var url = "<%=basePath%>/adminOrderForm/shijia";
		var params = {}; 
		params.orderId = orderId;
		$.post(url,params,function(result){
			if(result > 0){
				layer.msg('已试驾!',{icon:1,time:1000},function(){
					location.reload();
				});
			}else{
				layer.msg('执行失败!',{icon:1,time:1000});
			}
		});
	});
}
	</script>
</body>

</html>