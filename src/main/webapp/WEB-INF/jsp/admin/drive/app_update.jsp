<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   <%@ include file="/styles/common/back/admin_styles_css.jsp"%>
    <title>添加试驾订单</title>
	</head>
  
  <body>
  <article class="page-container">
	<form action="<%=basePath%>adminDrive/updateApp" class="form form-horizontal" id="Form" method="post" enctype="multipart/form-data">
		<input type="hidden" name="applyId" value="${apply.applyId}" />
		<input type="hidden" name="carId" value="${apply.carId}" />
		<input type="hidden" name="userId" value="${apply.userId}" />
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>预定时间：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text"  size="50" datatype="*" nullmsg="请选择预定时间" value="${apply.readyTime}" name="readyTime" onclick="WdatePicker()"/>
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>申请人</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text"  size="50" datatype="*" nullmsg="请输入申请人" value="${apply.userName}" name="userName" readonly="readonly"/>
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>预留电话</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text"  size="50" datatype="*" nullmsg="请输入预留电话" value="${apply.applyComment}" name="applyComment"/>
			</div>
		</div>
	
	    <div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>汽车名称</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text"  size="50" datatype="*" nullmsg="请输入汽车名称" value="${apply.carName}" readonly="readonly" style="color: gray;" name="carName"/>
			</div>
		</div>
		
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>预定车库：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<select class="input-text" name="applyContent">
					<c:forEach items="${reps}" var="r">
						<c:if test="${r.repId==apply.applyContent}">
							<option value="${r.repId}" selected="selected">${r.repName}</option>
						</c:if>
						<c:if test="${r.repId!=apply.applyContent}">
							<option value="${r.repId}">${r.repName}</option>
						</c:if>
					</c:forEach>
				</select>
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>申请状态：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" name="applyState" class="input-text" name="carSpeed" size="50" datatype="*" nullmsg="请输入最高时速" value="${apply.applyState}" value="${apply.applyTime}" readonly="readonly" style="color: gray;"/>
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>申请时间：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text"  name="applyTime" class="input-text" name="carSpeed" size="50" datatype="*" nullmsg="请输入最高时速" value="${apply.applyTime}" readonly="readonly" style="color: gray;"/>
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
	
	 //选择图片，马上预览
	function xmTanUploadImg(obj) {
		var file = obj.files[0];

		console.log(obj);
		console.log(file);
		console.log("file.size = " + file.size); //file.size 单位为byte

		var reader = new FileReader();
		//读取文件过程方法
				reader.onloadstart = function(e) {
					console.log("开始读取....");
				}
				
				reader.onprogress = function(e) {
					console.log("正在读取中....");
				}
				reader.onabort = function(e) {
					console.log("中断读取....");
				}
				reader.onerror = function(e) {
					console.log("读取异常....");
				}
		reader.onload = function(e) {
			console.log("成功读取....");

			var img = document.getElementById("xmTanImg");
			img.src = e.target.result;
			//或者 img.src = this.result;  //e.target == this
		}

		reader.readAsDataURL(file)
	}
 
  	</script>

  </body>
</html>
