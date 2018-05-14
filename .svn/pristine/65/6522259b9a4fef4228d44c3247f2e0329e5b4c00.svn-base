<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <%@ include file="/styles/common/back/admin_styles_css.jsp"%>
    
    <title>员工列表</title>
  </head>
  
  <body>
  	<!-- 通知、导航栏 -->
	<nav class="breadcrumb">
		<i class="Hui-iconfont">&#xe67f;</i> 首页 
		<span class="c-gray en">&gt;</span> 员工管理 
		<span class="c-gray en">&gt;</span> 员工列表
	</nav>
        <!-- 内容 -->
        <div class="page-container">
        	<div class="cl pd-5 bg-1 bk-gray mt-20">
				<span class="l">
					<a class="btn btn-primary radius" data-title="添加员工" href="javascript:;" onclick="add('添加员工','<%=basePath%>adminManage/toManageInsert','800','500')">
					<i class="Hui-iconfont">&#xe600;</i> 添加员工</a>
					<a class="btn btn-primary radius" data-title="密码初始化" href="javascript:;" onclick="upd()">
					<i class="Hui-iconfont">&#xe63f;</i> 密码初始化</a>
					<a class="btn btn-primary radius" data-title="委任角色" href="javascript:;" onclick="add1('委任角色','<%=basePath%>adminManage/toappointManageRole','600','200')">
					<i class="Hui-iconfont">&#xe61d;</i> 委任角色</a>
					<a class="btn btn-primary radius" data-title="启用员工" href="javascript:;" onclick="enable()">
					<i class="Hui-iconfont">&#xe605;</i> 启用员工</a>
				</span>
  			</div>
	  		<div class="mt-20">
		    	<table class="table table-border table-bordered table-bg table-hover table-sort">
		    	<thead>
		    		<tr class="text-c">
						<th>
						<input type="checkbox"/>
						</th>
						<th>序号</th>
						<th>登录名</th>
						<th>密码</th>
						<th>角色</th>
						<th>姓名</th>
						<th>性别</th>
						<th>生日</th>
						<th>联系电话</th>
						<th>身份证号</th>
						<th>邮件</th>
						<th>头像</th>
						<th>是否停用</th>
						<th>操作</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${manageUserList }" var="muser" varStatus="u">
						<tr class="text-c">
							<td>
							<input type="checkbox" name="manageId" value="${muser.manageId }"/>
							</td>
							<td>${u.count }</td>
							<td>${muser.loginName}</td>
							<td>${muser.loginPwd}</td>
							<td>${muser.roleName}</td>
							<td>${muser.manageName}</td>
							<td>${muser.manageSex==1?'男':'女' }</td>
							<td>${muser.manageBirthday}</td>
							<td>${muser.manageTel.replaceAll("(\\d{3})\\d{4}(\\d{4})","$1****$2") }</td>
							<td>${muser.manageIdcard.replaceAll("(\\d{8})\\d{6}(\\w{4})","$1*****$2")}</td>
							<td>${muser.manageEmails }</td>
							
							<td>
							<img style="width:50px;height: 50px " alt="暂无图片" src="<%=basePath%>${muser.manageImg}">
							</td>
						    <td>${muser.manageStatus==1?'正常':'已停用'}</td>
							<td width="20%">
								<a title="修改" href="javascript:;" onclick="edit('人员修改','<%=basePath%>adminManage/toManageUserUpdate','${muser.manageId}','800','500')" class="ml-5" style="text-decoration:none">
									<i class="Hui-iconfont">&#xe6df;</i>
								</a>
								&nbsp;
								<a title="删除" href="javascript:;" onclick="del(this,'${muser.manageId }','${muser.loginName}')" class="ml-5" style="text-decoration:none">
									<i class="Hui-iconfont">&#xe6e2;</i>
								</a>
								&nbsp;
								<a title="停用" href="javascript:;" onclick="stop(this,'${muser.manageId }','${muser.loginName}')" class="ml-5" style="text-decoration:none">
									<i class="Hui-iconfont">&#xe60e;</i>
								</a>
							</td>
						</tr>
					</c:forEach>
				</tbody>	
		    	</table>
		    </div>
		</div>
	<%@ include file="/styles/common/back/admin_styles_js.jsp"%>
	<script type="text/javascript">
	// 分页
	$('.table-sort').dataTable({
		"aaSorting": [[ 0, "asc" ]],//默认第几个排序 
		"bStateSave": false,//状态保存
		"aLengthMenu" : [ 5,10,15 ] ,
		"aoColumnDefs": [
		  {"orderable":false,"aTargets":[0]}// 写出：不参与   排序的列
		]
	});
	
	//删除
	function del(obj,manageId,loginName){
		layer.confirm("确定要删除  <span style='color:red'>" + loginName + "</span>  人员吗?",function(index){
			var url = "<%=basePath%>adminManage/deleteManageUser";
			var params = {};
			params.manageId = manageId;
			$.post(url,params,function(result){
				if(result > 0){
					$(obj).parents("tr").remove();
					layer.msg('已删除!',{icon:1,time:1000});
				}else{
					layer.msg('删除失败!',{icon:1,time:1000});
				}
			});
		});
	}
	
	// 添加
	function add(title,url,w,h){
		layer_show(title,url,w,h);
	}
	
	// 修改
	function edit(title,url,manageId,w,h){
		url = url + "?manageId=" + manageId;
		layer_show(title,url,w,h);
	}
	// 密码初始化
	function upd(){  
		var ids =  $("input:checkbox[name='manageId']:checked").map(function(){
	    	return $(this).val();
	      }).get().join(",");
       
		var url = "<%=basePath%>adminManage/LoginPwdInit";
	
		$.post(
				url,
				{"ids":ids},
				function(result){
			if(result > 0){
				
				location ="<%=basePath%>adminManage/findManageUserList"
			}else{
				layer.msg('密码初始化失败!',{icon:1,time:1000});
			}
		});
		
	
	}
	
	
	// 委任角色
	function add1(title,url,w,h){  
		var ids =  $("input:checkbox[name='manageId']:checked").map(function(){
	    	return $(this).val();
	      }).get().join(",");
		
		if(ids.length<1){
			layer.msg('选择一个人赋角色!',{icon:1,time:1000});
			return;
		}
		else if(ids.length>2){
			layer.msg('只能为一个人赋角色!',{icon:1,time:1000});
			return;
		}else{
			url = url + "?ids=" + ids;
			layer_show(title,url,w,h);
		}
	}
	
	//停用
	function stop(obj,manageId,loginName){
		layer.confirm("确定要停用  <span style='color:red'>" + loginName + "</span> 员工吗?",function(index){
			var url = "<%=basePath%>adminManage/stopManageUser";
			var params = {};
			params.manageId = manageId;
			$.post(url,params,function(result){
				if(result > 0){
					$(obj).parents("tr").remove();
					location ="<%=basePath%>adminManage/findManageUserList"
					layer.msg('已停用!',{icon:1,time:1000});
						
				}else{
					layer.msg('停用失败!',{icon:1,time:1000});
				}
			});
		});
	}
	// 启用员工
	function enable(){  
		var ids =  $("input:checkbox[name='manageId']:checked").map(function(){
	    	return $(this).val();
	      }).get().join(",");
       
		var url = "<%=basePath%>adminManage/enableManageUser";
	
		$.post(
				url,
				{"ids":ids},
				function(result){
			if(result > 0){
				
				location ="<%=basePath%>adminManage/findManageUserList"
			}else{
				layer.msg('启用员工失败!',{icon:1,time:1000});
			}
		});
		
	
	}
	</script>	
  </body>
</html>
