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
        	<div class="cl pd-5 bg-1 bk-gray mt-20">
        	<input type="hidden" name="carId" value="${carId}"/>
				<span class="l">
					<a class="btn btn-primary " data-title="添加汽车" href="javascript:;" onclick="add('添加汽车','<%=basePath%>adminCarImg/toCarImgInsert',${carId},'800','500')">
					<i class="Hui-iconfont">&#xe600;</i> 添加汽车</a>
					
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
						<th>图片</th>
						
						<th>操作</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${carImgList}" var="img" varStatus="u">
						<tr class="text-c">
							<td>
							<input type="checkbox" name="carId" value="${img.imgId }"/>
							</td>
							<td>${u.count }</td>
							<td>
							<img style="width:50px;height: 50px " alt="暂无图片" src="<%=basePath%>${img.imgAddress}">
							</td>
						 
							<td width="20%">
								<a title="修改" href="javascript:;" onclick="edit('人员修改','<%=basePath%>adminCarImg/toCarImgUpdate','${img.imgId}','${carId}','800','500')" class="ml-5" style="text-decoration:none">
									<i class="Hui-iconfont">&#xe6df;</i>
								</a>
								&nbsp;
								<a title="删除" href="javascript:;" onclick="del(this,'${img.imgId }')" class="ml-5" style="text-decoration:none">
									<i class="Hui-iconfont">&#xe6e2;</i>
								</a>
								&nbsp;
								<a title="主图" href="javascript:;" onclick="upd(this,'${img.imgId}','${carId}')" class="ml-5" style="text-decoration:none">
									<i class="Hui-iconfont">&#xe615;</i>
								</a>
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
	function del(obj,imgId){
		layer.confirm("确定要删除  <span style='color:red'>这张</span> 汽车图片吗?",function(index){
			var url = "<%=basePath%>adminCarImg/deleteCarImg";
			var params = {};
			params.imgId = imgId;
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
	
	// 添加
	function add(title,url,carId,w,h){
		url = url + "?carId=" + carId;
		layer_show(title,url,w,h);
	}
	
	// 修改
	function edit(title,url,imgId,carId,w,h){
	
		url = url + "?imgId=" + imgId +"&carId="+carId;
		
		layer_show(title,url,w,h);
	}
	
	//主图
	function upd(obj,imgId,carId){
		layer.confirm("确定要设置  <span style='color:red'>这张</span> 汽车图片为主图吗?",function(index){
			var url = "<%=basePath%>adminCarImg/mainCarImgUpdate";
			
			$.post(url,	
				 {"imgId":imgId,"carId":carId},
					function(result){
				if(result > 0){
					$(obj).parents("tr").remove();
					layer.msg('成功!',{icon:1,time:1000});
					window.parent.location.href = "<%=basePath%>adminCar/toCarList";
				}else{
					layer.msg('设置失败!',{icon:1,time:1000});
				}
			});
		});
	}
	</script>
</body>

</html>