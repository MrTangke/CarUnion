<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   <%@ include file="/styles/common/back/admin_styles_css.jsp"%>
    <title>添加汽车</title>
	</head>
  
  <body>
  <article class="page-container">
	<form action="<%=basePath%>adminCar/insertCarMessage" class="form form-horizontal" id="Form" method="post" enctype="multipart/form-data">
		<input type="hidden" name="carId" value="${car.carId}"/>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>汽车名称：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" name="carName" size="50" datatype="*" nullmsg="请输入汽车名称" value="${car.carName}"/>
			</div>
		</div>
	
		
		  
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>品牌：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<select name="brandId">
				<option value="0">---------</option>
				<c:forEach items="${brandList}" var="brand">
				<option value="${brand.brandId}">${brand.brandName}</option>
				</c:forEach>
				</select>
			</div>
		</div>
	    	<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>车型：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<select name="modelId">
				<option value="0">---------</option>
				<c:forEach items="${modelList}" var="model">
				<option value="${model.modelId}">${model.modelName}</option>
				</c:forEach>
				</select>
				
			</div>
		</div>
			<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>生产商：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<select name="producerId">
				<option value="0">---------</option>
				<c:forEach items="${proList}" var="pro">
				<option value="${pro.proId}">${pro.proName}</option>
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

		reader.readAsDataURL(file);
	}
	 
  	</script>
  	<!-- public String insertUser(Repuser user,MultipartFile file,HttpServletRequest request){
		System.out.println("==========="+file);
		
		String filePath = FilesUtils.FilesUpload_xm(request, file, "\\upload");
		String pwd=MD5.MD5(user.getPassword());
		user.setPassword(pwd);
		user.setUserImg(filePath);
		System.out.println("==========="+filePath);
		userService.insertUser(user);
		// 自定义父页面跳转URL
	
	} -->
  </body>
</html>
