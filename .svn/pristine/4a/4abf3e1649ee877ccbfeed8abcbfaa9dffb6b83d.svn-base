<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   <%@ include file="/styles/common/back/admin_styles_css.jsp"%>
    <title>添加图片</title>
	</head>
  
  <body>
  <article class="page-container">
	<form action="<%=basePath%>adminCarImg/insertCarImg" class="form form-horizontal" id="Form" method="post" enctype="multipart/form-data">
		<input type="hidden" name="carId" value="${carId}"/>
       <div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>图片：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="file" id="xdaTanFileImg" name="img" onchange="xmTanUploadImg(this)" accept="image/*" />
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
		
		/* 截取上传文件后缀，只能是图片形式 */
		$("#Form").submit(function(){	
			var filePath = $("input[name='img']").val();
			if(filePath!=""&&filePath!=null){
				var extStart = filePath.lastIndexOf(".");
				var ext = filePath.substring(extStart,filePath.length).toUpperCase();
				 if(ext!=".png" && ext!=".PNG" && ext!=".jpg" && ext!=".JPG"){
					alert("必须是图片格式！");
					return false;
				} 
			}else{
				alert("上传商品图片！");
				return false;
			};
		})
		
		
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

  </body>
</html>
