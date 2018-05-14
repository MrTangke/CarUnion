<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <%@ include file="/styles/common/back/admin_styles_css.jsp"%>
    
    <title>员工列表</title>
  </head>
  
  <body>
        <!-- 内容 -->
        <div class="page-container">
        	<div class="cl pd-5 bg-1 bk-gray mt-20">
				<span class="l">
					<a class="btn btn-primary radius" data-title="添加仓库" href="javascript:;" onclick="add('添加仓库','<%=basePath%>adminRepository/toRepositoryInsert','800','500')">
					<i class="Hui-iconfont">&#xe600;</i> 添加仓库</a>
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
						<th>仓库名称</th>
						<th>库存</th>
						<th>所在地址</th>
						
						<th>操作</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${repList }" var="rep" varStatus="u">
						<tr class="text-c">
							<td>
							<input type="checkbox" name="repId" value="${rep.repId }"/>
							</td>
							<td>${u.count }</td>
							<td>${rep.repName}</td>
							<td>${rep.repStock}</td>
							<td>${rep.disName}</td>
						
							<td width="20%">
								<a title="修改" href="javascript:;" onclick="edit('人员修改','<%=basePath%>adminRepository/toRepositoryUpdate','${rep.repId}','800','500')" class="ml-5" style="text-decoration:none">
									<i class="Hui-iconfont">&#xe6df;</i>
								</a>
								&nbsp;
								<a title="删除" href="javascript:;" onclick="del(this,'${rep.repId }','${rep.repName}')" class="ml-5" style="text-decoration:none">
									<i class="Hui-iconfont">&#xe6e2;</i>
								</a>
								&nbsp;
								<a title="汽车信息" href="javascript:;" onclick="edit('汽车信息','<%=basePath%>adminRepository/toCarMessage','${rep.repId}','800','500')" class="ml-5" style="text-decoration:none">
									<i class="Hui-iconfont">&#xe667;</i>
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
	function del(obj,repId,repName){
		layer.confirm("确定要删除  <span style='color:red'>" + repName + "</span>仓库吗?",function(index){
			var url = "<%=basePath%>adminRepository/deleteRepository";
			var params = {};
			params.repId = repId;
			$.post(url,params,function(result){
				if(result > 0){
					$(obj).parents("tr").remove();
					layer.msg('已删除!',{icon:1,time:1000});
					location.reload();
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
	function edit(title,url,repId,w,h){
		url = url + "?repId=" + repId;
		layer_show(title,url,w,h);
	}
	</script>	
  </body>
</html>
