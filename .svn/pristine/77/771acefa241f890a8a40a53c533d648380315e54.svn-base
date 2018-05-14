<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <%@ include file="/styles/common/back/admin_styles_css.jsp"%>
    <title>赋予权限</title>
	</head>
  
  <body>
  <article class="page-container">
	<form action="<%=basePath%>adminManage/appointManageRole" class="form form-horizontal" id="Form" method="post">
		<input type="hidden" name="manageId" value="${ids}" id= "manageId"/>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>委任角色：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<c:forEach items="${mrList}" var="mr">
				<input type="checkbox"  name="roleId" value="${mr.roleId}"/>${mr.roleName}
				
				</c:forEach>
			</div>
		</div>
	
		 <div class="row cl">
			<div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-3">
				<input class="btn btn-primary radius" type="button" value="&nbsp;&nbsp;提交&nbsp;&nbsp;" onclick="tijiao()" />
				<input class="btn btn-success radius" type="button" value="&nbsp;&nbsp;返回&nbsp;&nbsp;" onclick="closeLayer()" />
			</div>
		</div>
	</form>
  </article>
 <%@ include file="/styles/common/back/admin_styles_js.jsp"%>
  	<script type="text/javascript">
  	/* 表单校验 */
	$(function(){
		
		
		$("#Form").Validform({
			tiptype:3, 
			tipSweep:true,
			datatype:{
				"aaa" :  /^\+?(0|[1-9][0-9]*)$/
			}
		});
	});
	
	// 关闭窗口
	function closeLayer(){
		var index = parent.layer.getFrameIndex(window.name); //获取窗口索引
        parent.layer.close(index);
        return true;
	}
	function tijiao(){
		var roleIds =  $("input:checkbox[name='roleId']:checked").map(function(){
	    	return $(this).val();
	      }).get().join(",");
	  
		var url = "<%=basePath%>adminManage/appointManageRole";
		
		$.post(
				url,
				{"roleIds":roleIds,"manageId":$("#manageId").val()},
				function(result){
			if(result > 0){
				window.parent.location.href = "<%=basePath%>adminManage/findManageUserList";
		  		// 关闭
		  		closeLayer();
			}else{
				layer.msg('赋权限失败!',{icon:1,time:1000});
			}
		});
	}
	
  	</script>
  </body>
</html>
