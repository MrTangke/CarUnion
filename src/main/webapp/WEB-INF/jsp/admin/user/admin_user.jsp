<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>用户列表</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="/styles/common/back/admin_styles_css.jsp"%>
 <%@ include file="/styles/common/back/admin_styles_js.jsp"%>
 </head>

<body>
<div class="page-container">
        	<div class="cl pd-5 bg-1 bk-gray mt-20">
				<span class="l">
					<a class="btn btn-primary " data-title="推送消息" href="javascript:;" onclick="add('推送消息','<%=basePath%>adminUser/toPushPage','800','500')">
					<i class="Hui-iconfont">&#xe600;</i> 推送消息</a>
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
						<th>用户名</th>
						<th>密码</th>
						<th>姓名</th>	
						<th>等级</th>
						<th>性别</th>
						<th>身份证</th>
						<th>邮箱</th>
						<th>电话</th>
						<th>头像</th>
						<th>生日</th>
						<th>是否停用</th>
						<th>创建时间</th>
						<th>粉丝值</th>
						<th>操作</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${users}" var="user" varStatus="u">
						<tr class="text-c">
							<td>
							<input type="checkbox" name="userId" value="${user.userId}"/>
							</td>
							<td>${u.count }</td>
							<td>${user.userName}</td>
							<td>${user.userPwd}</td>
							<td>${user.realName}</td>
							<td>${user.level}</td>
							<td>${user.userSex==1?'男':'女'}</td>
							<td>${user.userIdcard}</td>
							<td>${user.userEmails}</td>
							<td>${user.userTel}</td>
							
							<td>
							<img style="width:50px;height: 50px " alt="暂无图片" src="<%=basePath%>${user.userImg}">
							</td>
							<td>${user.userBirthday}</td>
							<td>${user.userStatus==1?'正常':'已拉黑'}</td>
							<td>${user.userCreateTime}</td>
							<td>${user.userLevelNum}</td>
							<td width="20%">
								<a title="拉入黑名单" href="javascript:;" onclick="del(this,'${user.userId}','${user.userName}')" class="ml-5" style="text-decoration:none">
									<i class="Hui-iconfont">&#xe6e2;</i>
								</a>
							</td>
						</tr>
					</c:forEach>
				</tbody>	
		    	</table>
  </div>
		</div>
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
	function del(obj,userId,userName){
		layer.confirm("确定要将  <span style='color:red'>" + userName + "</span> 拉黑吗?",function(index){
			var url = "<%=basePath%>adminUser/blockUser";
			var params = {};
			params.userId = userId;
			$.post(url,params,function(result){
				if(result > 0){
					$(obj).parents("tr").remove();
					layer.msg('已拉黑!',{icon:1,time:1000});
					 location.reload();
				}else{
					layer.msg('拉黑失败!',{icon:1,time:1000});
				}
			});
		});
	}
	// 推送消息
	function add(title,url,w,h){
		var userIds =  $("input:checkbox[name='userId']:checked").map(function(){
	    	return $(this).val();
	      }).get().join(",");
		alert(userIds)
		url = url+"?userIds="+userIds; 
	
		layer_show(title,url,w,h);
	}
	</script>
</body>

</html>