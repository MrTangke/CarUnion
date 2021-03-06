<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <%@ include file="/styles/common/back/admin_styles_css.jsp"%>
    <title>添加员工</title>
	</head>
  
  <body>
  <article class="page-container">
	<form action="<%=basePath%>adminManage/insertManageUser" class="form form-horizontal" id="Form" method="post" enctype="multipart/form-data">
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>登录名：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" name="loginName" size="50" datatype="*" nullmsg="请输入登录名" />
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>密码：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="password" class="input-text" name="loginPwd" size="50" datatype="*" errormsg="格式不正确" nullmsg="请输入密码" />
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>角色：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<c:forEach items="${mRoleList}" var="role">
		
				<input type="radio" name="roleId" value="${role.roleId}"/>${role.roleName}
				</c:forEach>
			</div>
		</div>
	
	    <div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>姓名：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" name="manageName" size="50" datatype="*" nullmsg="请输入姓名" />
			</div>
		</div>
	    <div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>性别：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="radio" name="manageSex" value="1"/>男
				<input type="radio" name="manageSex" value="2"/>女
			</div>
		</div>
	    <div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>出生日期：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" name="manageBirthday" size="50" datatype="*" nullmsg="请输入生日" 
				onclick="WdatePicker()"/>
			</div>
		</div>
		
		
		
		
	    <div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>联系电话：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" name="manageTel" size="50" datatype="*" nullmsg="请输入联系电话" />
			</div>
		</div>
	    <div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>身份证号：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" name="manageIdcard" size="50" datatype="*" nullmsg="请输入身份证号码" />
			</div>
		</div>
	    <div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>邮件：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" name="manageEmails" size="50" datatype="*" nullmsg="请输入邮件" />
			</div>
		</div>
	  <div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>是否停用：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="radio" name="manageStatus" value="1"/>正常
				<input type="radio" name="manageStatus" value="2"/>已停用
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
		
		/* 截取上传文件后缀，只能是图片形式 */
		$("#Form").submit(function(){	
			var filePath = $("input[name='file']").val();
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
