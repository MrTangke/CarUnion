<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>

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
						<th>预定时间</th>
						<th>申请人</th>
						<th>预留电话</th>
						<th>汽车名称</th>
						<th>预定车库</th>
						<th>申请状态</th>
						<th>申请时间</th>
						<th>操作</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${applies}" var="app" varStatus="u">
						<tr class="text-c">
							<td>
							<input type="checkbox" class="ch" name="applyId" value="${app.applyId}"/>
							</td>
							<td>${u.count }</td>
							<td>${app.readyTime}</td>
							<td>${app.userName}</td>
							<td>${app.applyComment}</td>
							<td>${app.carName}</td>
							<td>${app.repName}</td>
							<td>
								<c:if test="${app.applyState==1}">未联络</c:if>
								<c:if test="${app.applyState==2}">已联络</c:if>
							</td>  
							<td>${app.applyTime}</td>  
							<td width="20%">
								<c:if test="${app.applyState==1}">
									<button title="联络" style="background-color: red;border:0;border-radius:10px;padding: 3px;"
										onclick="phone(this,'${app.applyId}')" >
										<i class="Hui-iconfont">&#xe6a3;</i>
									</button>
								</c:if>&nbsp;&nbsp;&nbsp;
								<a title="修改" href="javascript:;" onclick="edit('订单修改','<%=basePath%>adminDrive/toApplyUpdate','${app.applyId}','800','500')" class="ml-5" style="text-decoration:none">
									<i class="Hui-iconfont">&#xe6df;</i>
								</a>&nbsp;&nbsp;&nbsp;
								<a title="删除" href="javascript:;" onclick="del(this,'${app.applyId}')" class="ml-5" style="text-decoration:none">
									<i class="Hui-iconfont">&#xe6e2;</i>
								</a>&nbsp;&nbsp;&nbsp;
								<c:if test="${app.readyTime<app.applyTime}" >
									<button title="是否过期" style="background-color: gray;border:0;border-radius:10px;padding: 3px;width: 50px;" >
										<font color="white" size="1">已过期</font>
									</button>
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
	function del(obj,appId){
		layer.confirm("确定要删除  <span style='color:red'>" + appId + "</span> 订单吗?",function(index){
			var url = "<%=basePath%>adminDrive/delApply";
			var params = {};
			params.appId = appId;
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
	
//联络
function phone(obj,appId){
	layer.confirm("确定要联络订单号为： <span style='color:red'>" + appId + "</span>的用户吗?",function(index){
		$.post(
			"<%=basePath%>adminDrive/lianluo",
			{appId:appId},
			function(result){
			if(result > 0){
				layer.msg('已联络!',{icon:1,time:1000},function(){
					location.reload();
				});
			}else{
				layer.msg('执行失败!',{icon:1,time:1000});
			}
		},"json");
	});
}
	
	// 修改
	function edit(title,url,appId,w,h){
		url = url + "?appId=" + appId;
		layer_show(title,url,w,h);
	}

	
	
	</script>

</body>

</html>