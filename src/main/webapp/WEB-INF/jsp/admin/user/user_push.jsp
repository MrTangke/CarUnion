<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <%@ include file="/styles/common/back/admin_styles_css.jsp"%>
    <title>推送消息</title>
	</head>
  
  <body>
  <article class="page-container">
  <div class="cl pd-5 bg-1 bk-gray mt-20">
				<span class="l">
					<a class="btn btn-primary " data-title="推送消息" href="javascript:;" onclick="newPush()">
					<i class="Hui-iconfont">&#xe600;</i> 推送消息</a>
					<a class="btn btn-primary " data-title="推送旧消息" href="javascript:;" onclick="oldPush()">
					<i class="Hui-iconfont">&#xe600;</i> 推送旧消息</a>
				</span>
  			</div>
  			
  			<div id= "asd">
	<form action="<%=basePath%>adminPush/pushNewMessage" class="form form-horizontal" id="Form" method="post" >
		<input type="hidden" name="userIds" id="userIds" value="${userIds}"/>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>消息名称：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" name="pushName" size="50" datatype="*" nullmsg="请输入消息名称" />
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>消息内容：</label>
			<div class="formControls col-xs-8 col-sm-9">
	
			    <textarea rows="10" cols="50" name="pushContent" datatype="*" nullmsg="请输入消息内容"></textarea>
			</div>
		</div>
		  <div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>推送时间：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" name="pushDate" size="50" datatype="*" nullmsg="请输入时间" 
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
	</div>
	
	<div id="asdf">
	  <div class="mt-20">
	  
		    	<table class="table table-border table-bordered table-bg table-hover table-sort">
		    	<thead>
		    		<tr class="text-c">
		    		    <th>
						<input type="checkbox"/>
						</th>
						<th>序号</th>
						<th>推送名称</th>
						<th>推送内容</th>
						<th>推送时间</th>
						
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${pushList}" var="push" varStatus="u">
						<tr class="text-c">
						    <td>
							<input type="checkbox" name="pushId" value="${push.pushId }"/>
							</td>
							<td>${u.count }</td>
							<td>${push.pushName}</td>
							<td>${push.pushContent}</td>
							<td>${push.pushDate}</td>
							
						</tr>
					</c:forEach>
				</tbody>	
		    	</table>	
		    </div>
		     <div class="row cl">
			<div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-3">
				<input class="btn btn-primary radius" type="button" value="&nbsp;&nbsp;提交&nbsp;&nbsp;" onclick="tijiao()"/>
				<input class="btn btn-success radius" type="button" value="&nbsp;&nbsp;返回&nbsp;&nbsp;" onclick="closeLayer()" />
			</div>
		</div> 
	
	</div>
  </article>
  <%@ include file="/styles/common/back/admin_styles_js.jsp"%>
  	<script type="text/javascript">
  	/* 表单校验 */
	$(function(){
		
		$("#asd").hide();
		$("#asdf").hide();
		$("#Form").Validform({
			tiptype:3, 
			tipSweep:true,
			datatype:{
				"aaa" :  /^\+?(0|[1-9][0-9]*)$/
			}
		});
	});
	
	
	//推送消息
	function newPush(){
		$("#asd").show();
		
		$("#asdf").hide();
	}
	//推送消息
	function oldPush(){
		$("#asdf").show();
		$("#asd").hide();
		
	}
	
	// 分页
	$('.table-sort').dataTable({
		"aaSorting": [[ 0, "asc" ]],//默认第几个排序 
		"bStateSave": false,//状态保存
		"aLengthMenu" : [ 5,10,15 ] ,
		"aoColumnDefs": [
		  {"orderable":false,"aTargets":[0]}// 写出：不参与   排序的列
		]
	});
	
	// 关闭窗口
	function closeLayer(){
		var index = parent.layer.getFrameIndex(window.name); //获取窗口索引
        parent.layer.close(index);
        return true;
	}
	
	// 推送消息
	function tijiao(){  
		var ids =  $("input:checkbox[name='pushId']:checked").map(function(){
	    	return $(this).val();
	      }).get().join(",");
       if(ids.length<1){
    	   layer.msg('请选择任意一条消息!',{icon:1,time:1000});
       }else{
		var url = "<%=basePath%>adminPush/pushMessage";
	
		$.post(
				url,
				{"ids":ids,'userIds':$("#userIds").val()},
				function(result){
			if(result > 0){
				layer.msg('推送成功!');
				
				closeLayer();
			}else{
				layer.msg('推送失败!');
			}
		});
		
       }
	}
	
  	</script>
  </body>
</html>
