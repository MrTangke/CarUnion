<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <%@ include file="/styles/common/back/admin_styles_css.jsp"%>
    <title>修改员工信息</title>
	</head>
  
  <body>
  <article class="page-container">
	<form action="<%=basePath%>adminExtra/updateVideo" class="form form-horizontal" id="Form" method="post" enctype="multipart/form-data">
		<input type="hidden" name="videoId" value="${video.videoId}" />
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>视频名称：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" name="videoName" size="50" datatype="*" nullmsg="请输入图片名称" value="${video.videoName}"/>
			</div>
		</div>
			<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>原始视频：</label>
			<div class="formControls col-xs-8 col-sm-9">
						<div class="row clearfix">
							<div class="col-md-12 column">
								<video width="240" height="150" autoplay muted loop>
										<source src="<%=basePath%>${video.videoUrl}" type="audio/mp4" />
									</video>
							</div>
						</div>
			</div>
		</div>
		
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>图片：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="file" id="xdaTanFileImg" name="file" onchange="xmTanUploadImg(this)" />
			</div>
		</div>
		
	    <div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>汽车：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<select name="carId">
				<c:forEach items="${carList}" var="car">
				
				<option value="${car.carId}" ${car.carId==video.carId?'selected':''} >${car.carName}</option>
		
				</c:forEach>
				</select>
			</div>
		</div>
	 
		 <div class="row cl">
			<div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-3">
				<input class="btn btn-primary radius" type="submit" value="&nbsp;&nbsp;提交&nbsp;&nbsp;" id="insertBut" />
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
	

  	</script>
  </body>
</html>
