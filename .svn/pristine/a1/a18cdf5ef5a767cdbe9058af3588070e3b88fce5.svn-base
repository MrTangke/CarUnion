<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   <%@ include file="/styles/common/back/admin_styles_css.jsp"%>
    <title>添加汽车</title>
	</head>
  
  <body>
  <article class="page-container">
	<form action="<%=basePath%>adminColor/updateColor" class="form form-horizontal" id="Form" method="post">
		<input type="hidden" name="colorId" value="${color.colorId }" />
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>颜色名称：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" name="colorName" size="50" datatype="*" nullmsg="请输入颜色名称" value="${color.colorName }"/>
			</div>
			<label class="form-label col-xs-4 col-sm-3" style="float: left;"><span class="c-red">*</span>选择颜色：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="color" class="input-text" name="colorRgb" size="10" datatype="*" nullmsg="请选择颜色" value="${color.colorRgb }"/>
			</div>
		</div>
		 <div class="row cl">
			<div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-3">
				<input class="btn btn-primary" type="submit" value="&nbsp;&nbsp;提交&nbsp;&nbsp;" id="insertBut" />
				<input class="btn btn-success" type="button" value="&nbsp;&nbsp;返回&nbsp;&nbsp;" onclick="closeLayer()" />
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
  	</script>

  </body>
</html>
