<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <%@ include file="/styles/common/back/admin_styles_css.jsp"%>
    
    <title>员工列表</title>
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
						<th>汽车名称</th>
						<th>数量</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${carRepList}" var="crl" varStatus="u">
						<tr class="text-c">
							<td>
							<input type="checkbox" name="carId" value="${crl.carId }"/>
							</td>
							<td>${u.count }</td>
							<td>${crl.carName}</td>
							<td>${crl.carNum}</td>
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
	
	
	</script>	
  </body>
</html>
