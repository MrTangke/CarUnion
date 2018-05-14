<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>My JSP 'list.jsp' starting page</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="/styles/common/back/admin_styles_css.jsp"%>
 <%@ include file="/styles/common/back/admin_styles_js.jsp"%>
</head>
<body>
<div class="page-container">
        	<div class="cl pd-5 bg-1 bk-gray mt-20">
				<span class="l">
					<a class="btn btn-primary " data-title="添加图片" href="javascript:;" onclick="add('添加图片','<%=basePath%>adminExtra/toCycleImgInsert','800','500')">
					<i class="Hui-iconfont">&#xe600;</i> 添加图片</a>
					<a class="btn btn-primary " data-title="排序" href="javascript:;" onclick="rank()">
					<i class="Hui-iconfont">&#xe600;</i> 排序</a>
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
						<th>图片名称</th>
						<th>图片</th>
						<th>图片位置(1上/2中/3下)</th>	
						<th>图片顺序</th>
						<th>所属汽车</th>
						<th>操作</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${images}" var="img" varStatus="u">
						<tr class="text-c">
							<td>
							<input type="checkbox" name="imgId" value="${img.imgId}"/>
							</td>
							<td>${u.count }</td>
							<td>${img.imgName}</td>
							<td><img style="width:50px;height: 50px " alt="暂无图片" src="<%=basePath%>${img.imgAddress}"></td>
							<td>${img.imgType==1?'上':img.imgType==2?'中':'下'}</td>
							<td>${img.imgOrder}</td>
							<td>${img.carName}</td>
							<td width="20%">
								<a title="修改" href="javascript:;" onclick="edit('人员修改','<%=basePath%>adminExtra/toCycleImgUpdate','${img.imgId}','800','500')" class="ml-5" style="text-decoration:none">
									<i class="Hui-iconfont">&#xe6df;</i>
								</a>
								&nbsp;
								<a title="删除" href="javascript:;" onclick="del(this,'${img.imgId}','${img.imgName}')" class="ml-5" style="text-decoration:none">
									<i class="Hui-iconfont">&#xe6e2;</i>
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
	function del(obj,imgId,imgName){
		layer.confirm("确定要删除  <span style='color:red'>" + imgName + "</span> 汽车吗?",function(index){
			var url = "<%=basePath%>adminExtra/deleteCycleImg";
			var params = {};
			params.imgId = imgId;
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
	function edit(title,url,imgId,w,h){
		url = url + "?imgId=" + imgId;
		layer_show(title,url,w,h);
	}
	//排序
	function rank(){
		var url = "<%=basePath%>adminExtra/rankimgOrder";
	
		$.post(url,function(result){
			if(result > 0){
				
				layer.msg('已排序!',{icon:1,time:1000});
				location.reload();
			}else{
				layer.msg('排序失败!',{icon:1,time:1000});
			}
		});
	}
	</script>
</body>

</html>