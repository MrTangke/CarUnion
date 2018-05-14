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
					<a class="btn btn-primary " data-title="添加视频" href="javascript:;" onclick="add('添加','<%=basePath%>adminExtra/toVideoInsert','800','500')">
					<i class="Hui-iconfont">&#xe600;</i> 添加视频</a>
				</span>
  			</div>
	  		<div class="mt-20">
							<c:forEach items="${videos}" var="v" varStatus="u">
						
								<div 
								style="width: 240px;height: 170px;float: left;margin: 5px;border: 2px solid #f5f5f5;text-align: center;">
								<input type="hidden" name="videoId" value="${v.videoId}"/>
									<video width="240" height="150" autoplay muted loop onclick="del1(this,'${v.videoId}','${v.videoName}')" >
										<source src="<%=basePath%>${v.videoUrl}" type="audio/mp4" />
									</video>
								<p align="center">${v.videoName}</p>
								<a title="修改" href="javascript:;" onclick="edit('人员修改','<%=basePath%>adminExtra/toVideoUpdate','${v.videoId}','800','500')" class="ml-5" style="text-decoration:none">
									<i class="Hui-iconfont">&#xe6df;</i>
								</a>
								&nbsp;
								<a title="删除" href="javascript:;" onclick="del(this,'${v.videoId}','${v.videoName}')" class="ml-5" style="text-decoration:none">
									<i class="Hui-iconfont">&#xe6e2;</i>
								</a>
								</div>
							
							
							</c:forEach>
							
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
	
	//设置为主页轮播视频
	function del1(obj,videoId,videoName){
		layer.confirm("确定要将  <span style='color:red'>" + videoName + "</span> 设置为首页视频吗?",function(index){
			var url = "<%=basePath%>adminExtra/videoChoice";
			var params = {};
			params.videoId = videoId;
			$.post(url,params,function(result){
				if(result > 0){
					$(obj).parents("tr").remove();
					layer.msg('设置成功!',{icon:1,time:1000});
				}else{
					layer.msg('设置失败!',{icon:1,time:1000});
				}
			});
		});
	}	
	//删除
	function del(obj,videoId,videoName){
		layer.confirm("确定要将  <span style='color:red'>" + videoName + "</span> 删除吗?",function(index){
			var url = "<%=basePath%>adminExtra/deleteVideo";
			var params = {};
			params.videoId = videoId;
			$.post(url,params,function(result){
				if(result > 0){
					
					layer.msg('删除成功!',{icon:1,time:1000});
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
	function edit(title,url,videoId,w,h){
		url = url + "?videoId=" + videoId;
		layer_show(title,url,w,h);
	}
	</script>
</body>

</html>