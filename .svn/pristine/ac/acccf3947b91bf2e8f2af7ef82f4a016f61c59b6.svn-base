<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   <%@ include file="/styles/common/back/admin_styles_css.jsp"%>
    <title>修改优惠</title>
	</head>
  	
  <body>
  <article class="page-container">
	<form action="<%=basePath%>/adminCoupon/couponUpdate" class="form form-horizontal" id="Form" method="post" >
		<input type="hidden" name="couponId" value="${coupon.couponId}" />
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>优惠名称：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" name="couponName" size="50" value="${coupon.couponName}" datatype="*" nullmsg="请输入优惠券名称" />
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>优惠金额：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" name="couponMoney" size="50" value="${coupon.couponMoney}" datatype="*" nullmsg="请输入优惠金额" />
			</div>
		</div>
	    <div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>优惠简介：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" name="couponContent" size="50" value="${coupon.couponContent}" datatype="*" nullmsg="请输入优惠简介" />
			</div>
		</div>
		
	   	<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>截止日期：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" name="couponUsedeadline" size="50" value="${coupon.couponUsedeadline}" datatype="*" nullmsg="请输入截止日期" 
				onclick="WdatePicker()"/>
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
