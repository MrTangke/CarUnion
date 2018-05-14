<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
     <%@ include file="/styles/common/back/admin_styles_css.jsp"%>
    <title>人员列表</title>
  </head>
  
  <body>
  	
        <!-- 内容 -->
        <div class="page-container">
        	<div class="cl pd-5 bg-1 bk-gray mt-20">
				<span class="l">
					<a class="btn btn-primary radius" data-title="添加角色" href="javascript:;" onclick="add('角色新增','<%=basePath%>manageRole/toManageRoleInsert','800','500')">
					<i class="Hui-iconfont">&#xe600;</i> 添加角色</a>
				</span>
  			</div>
	  		<div class="mt-20">
		    	<table class="table table-border table-bordered table-bg table-hover table-sort">
		    	<thead>
		    		<tr class="text-c">
						<th>序号</th>
						<th>角色</th>
						<th>权限列表</th>
						<th>人员列表</th>
						<th>操作</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${mRoleList}" var="role" varStatus="u">
						<tr class="text-c">
							<td>${u.count }</td>
							<td>${role.roleName }</td>
							<td>
							<c:forEach items="${role.mresList }" var="res">
							   ${res.resName }&nbsp;&nbsp;
							
							</c:forEach>
							</td>
							<td>
							<c:forEach items="${role.muList }" var="us">
							   ${us.manageName }&nbsp;&nbsp;
							
							</c:forEach>
							
							</td>
						
							<td width="20%">
								<a title="修改" href="javascript:;" onclick="edit('角色修改','<%=basePath%>manageRole/toManageRoleRoleUpdate','${role.roleId }','800','500')" class="ml-5" style="text-decoration:none">
									<i class="Hui-iconfont">&#xe6df;</i>
								</a>
								&nbsp;
								<a title="删除" href="javascript:;" onclick="del(this,'${role.roleId}','${role.roleName }')" class="ml-5" style="text-decoration:none">
									<i class="Hui-iconfont">&#xe6e2;</i>
								</a>
								<a title="分配权限" href="javascript:;" onclick="edit('分配权限','<%=basePath%>manageRole/toAssignResources','${role.roleId }','800','550')" class="ml-5" style="text-decoration:none">
									<i class="Hui-iconfont">&#xe61d;</i>
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
	function del(obj,roleId,roleName){
		layer.confirm("确定要删除  <span style='color:red'>" + roleName + "</span>  角色吗?",function(index){
			var url = "<%=basePath%>manageRole/deleteManageRole";
			var params = {};
			params.roleId = roleId;
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
	function edit(title,url,roleId,w,h){
		url = url + "?roleId=" + roleId;
		layer_show(title,url,w,h);
	}
	
	</script>	
  </body>
</html>
