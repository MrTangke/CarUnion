<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <%@ include file="/styles/common/back/admin_styles_css.jsp"%>
    
    <title>员工列表</title>
  </head>
  
  <body>
        <!-- 内容 -->
        <div class="page-container">
        	<div class="cl pd-5 bg-1 bk-gray mt-20">
				<span class="l">
					<a class="btn btn-primary radius" data-title="出入库" href="javascript:;" onclick="add('出入库','<%=basePath%>adminHistory/toOutpPutAndInPut','800','500')">
					<i class="Hui-iconfont">&#xe600;</i>出入库</a>
				</span>
  			</div>
	  		<div class="mt-20">
		    	<table class="table table-border table-bordered table-bg table-hover table-sort">
		    	<thead>
		    		<tr class="text-c">
						<th>
						<input type="checkbox"/>
						</th>
						<th>序号</th>
						<th>仓库名称</th>
						<th>汽车名称</th>
						<th>数量</th>
						<th>执行时间</th>
						<th>状态</th>
						<th>操作</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${carRepList}" var="car" varStatus="u">	
						<tr class="text-c">
							<td>
							<input type="checkbox" name="repId" value="${car.repId}"/>
							</td>
							<td>${u.count }</td>
							<td>${car.repName}</td>
							<td>${car.carName}</td>
							<td>${car.carNum}</td>
							<td>${car.tradeDate}</td>
							<td>${car.struts==1?'入库':'出库'}</td>
						
							<td width="20%">
								<a title="修改" href="javascript:;" onclick="edit('人员修改','<%=basePath%>adminHistory/toHistoryUpdate','${his.traId}','800','500')" class="ml-5" style="text-decoration:none">
									<i class="Hui-iconfont">&#xe6df;</i>
								</a>
								&nbsp;
								<a title="删除" href="javascript:;" onclick="del(this,'${his.traId}','${his.repName}')" class="ml-5" style="text-decoration:none">
									<i class="Hui-iconfont">&#xe6e2;</i>
								</a>
								
							</td>
						</tr>
						</c:forEach>

				</tbody>	
		    	</table>
		    </div>
		</div>
	<%@ include file="/styles/common/back/admin_styles_js.jsp"%>
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
	function del(obj,traId,repName){
		layer.confirm("确定要删除  <span style='color:red'>" + repName + "</span>仓库吗?",function(index){
			var url = "<%=basePath%>adminHistory/deleteHistory";
			var params = {};
			params.traId = traId;
			$.post(url,params,function(result){
				if(result > 0){
					$(obj).parents("tr").remove();
					layer.msg('已删除!',{icon:1,time:1000});
					location.reload();
				}else{
					layer.msg('删除失败!',{icon:1,time:1000});
				}
			});
		});
	}
	
	// 添加
	function add(title,url,w,h){
		layer_show(title,url,w,h);
	}
	
	// 修改
	function edit(title,url,traId,w,h){
		url = url + "?traId=" + traId;
		layer_show(title,url,w,h);
	}
	</script>	
  </body>
</html>
