<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>

 <%@ include file="/styles/common/back/admin_styles_css.jsp"%>
 </head>

<body>
<div class="page-container">
        	<div class="cl pd-5 bg-1 bk-gray mt-20">
				<span class="l">
					<a class="btn btn-primary " data-title="添加颜色" href="javascript:;" onclick="add('添加颜色','<%=basePath%>adminColor/toColorInsert','400','220')">
					<i class="Hui-iconfont">&#xe600;</i>添加颜色</a>
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
						<th>颜色</th>
						<th>RGB色值</th>
						<th>操作</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${colorList }" var="color" varStatus="u">
						<tr class="text-c">
							<td>
							<input type="checkbox" name="colorId" value="${color.colorId }"/>
							</td>
							<td>${u.count }</td>
							<td>${color.colorName }</td>
							<td><p style="height: 10px;width: 30px;position: relative;left: 150px;background-color:${color.colorRgb }"></p></td>
						    <td width="20%">
								<a title="修改" href="javascript:;" onclick="edit('人员修改','<%=basePath%>adminColor/toColorUpdate','${color.colorId}','400','220')" class="ml-5" style="text-decoration:none">
									<i class="Hui-iconfont">&#xe6df;</i>
								</a>
								&nbsp;
								<a title="删除" href="javascript:;" onclick="del(this,'${color.colorId}','${color.colorName}')" class="ml-5" style="text-decoration:none">
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
	function del(obj,colorId,colorName){
		layer.confirm("确定要删除  <span style='color:red'>" + colorName + "</span>品牌吗?",function(index){
			var url = "<%=basePath%>adminColor/deleteColor";
			var params = {};
			params.colorId = colorId;
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
	function add(title,url,w,h){
		layer_show(title,url,w,h);
	}
	
	// 修改
	function edit(title,url,colorId,w,h){
		url = url + "?colorId=" + colorId;
		layer_show(title,url,w,h);
	}
	</script>
</body>

</html>