<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   <%@ include file="/styles/common/back/admin_styles_css.jsp"%>
    <title>添加汽车</title>
	</head>
  
  <body>
  <article class="page-container">
	<form action="<%=basePath%>adminCar/updateCar" class="form form-horizontal" id="Form" method="post" enctype="multipart/form-data">
		<input type="hidden" name="carId" value="${car.carId }" />
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>汽车名称：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" name="carName" size="50" datatype="*" nullmsg="请输入汽车名称" value="${car.carName}"/>
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>价格</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" name="carPrice" size="50" datatype="*" nullmsg="请输入价格" value="${car.carPrice}"/>
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>油耗</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" name="carOilwear" size="50" datatype="*" nullmsg="请输入油耗" value="${car.carOilwear}"/>
			</div>
		</div>
	
	    <div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>配置：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="radio" name="configuration" value="1" ${car.configuration==1?"checked=\"checked\"" : "" }/>高配
				<input type="radio" name="configuration" value="2" ${car.configuration==2?"checked=\"checked\"" : "" }/>中配
				<input type="radio" name="configuration" value="3" ${car.configuration==3?"checked=\"checked\"" : "" }/>低配
			</div>
		</div>
		
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>排量：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" name="carCc" size="50" datatype="*" nullmsg="请输入排量" value="${car.carCc} "/>
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>最高时速：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" name="carSpeed" size="50" datatype="*" nullmsg="请输入最高时速" value="${car.carSpeed}" />
			</div>
		</div>
		
		 <div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>状态：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="radio" name="carStatus" value="1" ${car.carStatus==1?"checked=\"checked\"" : "" }/>正常
				<input type="radio" name="carStatus" value="2" ${car.carStatus==2?"checked=\"checked\"" : "" }/>促销
				<input type="radio" name="carStatus" value="3" ${car.carStatus==3?"checked=\"checked\"" : "" }/>下架
			</div>
		</div>
		 <div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>安全性能：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="radio" name="carSafety" value="1" ${car.carSafety==1?"checked=\"checked\"" : "" }/>优
				<input type="radio" name="carSafety" value="2" ${car.carSafety==2?"checked=\"checked\"" : "" }/>高
				<input type="radio" name="carSafety" value="3" ${car.carSafety==3?"checked=\"checked\"" : "" }/>良
			</div>
		</div>
		
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>上市时间：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" name="carDatea" size="50" datatype="*" nullmsg="请输入上市时间" 
				onclick="WdatePicker()" value="${car.carDatea}" />
			</div>
		</div>
	   
		
		
		
		
	    <div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>质保：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" name="carWarranty" size="50" datatype="*" nullmsg="请输入质保" value="${car.carWarranty}"/>
			</div>
		</div>
      <div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>原始图片：</label>
			<div class="formControls col-xs-8 col-sm-9">
						<div class="row clearfix">
							<div class="col-md-12 column">
								<img src="<%=basePath%>${car.carImg}"  class="img-circle" style="width: 200px; height: 200px;" />
							</div>
						</div>
			</div>
		</div>
		
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>图片：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="file" id="xdaTanFileImg" name="file" onchange="xmTanUploadImg(this)" accept="image/*" />
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>预览：</label>
			<div class="formControls col-xs-8 col-sm-9">
						<div class="row clearfix">
							<div class="col-md-12 column">
								<img id="xmTanImg"  class="img-circle" style="width: 200px; height: 200px;" />
							</div>
						</div>
						<div id="xmTanDiv"></div>
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
