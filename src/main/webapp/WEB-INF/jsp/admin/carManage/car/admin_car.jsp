<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>

 <%@ include file="/styles/common/back/admin_styles_css.jsp"%>
 <%@ include file="/styles/common/back/admin_styles_js.jsp"%>
 </head>

<body>
<div class="page-container">
        	<div class="cl pd-5 bg-1 bk-gray mt-20">
				<span class="l">
					<a class="btn btn-primary " data-title="添加汽车" href="javascript:;" onclick="add('添加汽车','<%=basePath%>adminCar/toCarInsert','800','500')">
					<i class="Hui-iconfont">&#xe600;</i> 添加汽车</a>
					<a class="btn btn-success size-S" data-title="导出数据" href="javascript:;" onclick="exportData()">
					<i class="Hui-iconfont">&#xe641;</i> 导出数据</a>
					<a class="btn btn-warning size-S" data-title="导入数据" href="javascript:;" onclick="selectFile()">
					<i class="Hui-iconfont">&#xe642;</i> 导入数据</a>
					<a class="btn btn-warning-outline size-S" data-title="下载模板" href="<%=basePath %>upload/excel/汽车列表导入模板.xlsx">
					<i class="Hui-iconfont">&#xe640;</i> 下载模板</a>
				</span>
				<!-- 隐藏文件上传按钮 -->
				<form id="signupListImportForm" class="import-file-form" enctype="multipart/form-data">    
    			<input type="file" name="excelFile" id="excelFile" style="display:none" multiple="multiple" onchange="fileUpload()"> 
				</form>  	
  			</div>
	  		<div class="mt-20">
          <table class="table table-border table-bordered table-bg table-hover table-sort">
		    	<thead>
		    		<tr class="text-c">
						<th>
						<input type="checkbox"/>
						</th>
						<th>序号</th>
						<th>汽车名</th>
						<th>指导价格</th>
						<th>油耗</th>
						
						<th>配置</th>
						<th>排量</th>
						<th>最高时速</th>
						<th>状态</th>
						<th>安全性能</th>
						<th>上市时间</th>
						<th>质保</th>
						<th>热度</th>
						<th>收藏量</th>
						<th>主图片</th>
						<th>操作</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${carlist }" var="car" varStatus="u">
						<tr class="text-c">
							<td>
							<input type="checkbox" name="carId" value="${car.carId }"/>
							</td>
							<td>${u.count }</td>
							<td>${car.carName }</td>
							<td>${car.carPrice }</td>
							<td>${car.carOilwear}</td>
							<td>${car.configuration }</td>
							<td>${car.carCc }</td>
							<td>${car.carSpeed}</td>
							<td>${car.carStatus==1?'正常':'已停用'}</td>
							<td>${car.carSafety==1?'高':car.carSafety==2?'中':'低' }</td>
							<td>${car.carDatea }</td>
							<td>${car.carWarranty }</td>
							<td>${car.carHeat }</td>
							<td>${car.carColNum }</td>
							
							<td>
							<img style="width:50px;height: 50px " alt="暂无图片" src="<%=basePath%>${car.carImg}">
							</td>
						  
							<td width="20%">
								<a title="修改" href="javascript:;" onclick="edit('人员修改','<%=basePath%>adminCar/toCarUpdate','${car.carId}','800','500')" class="ml-5" style="text-decoration:none">
									<i class="Hui-iconfont">&#xe6df;</i>
								</a>
								&nbsp;
								<a title="删除" href="javascript:;" onclick="del(this,'${car.carId }','${car.carName}')" class="ml-5" style="text-decoration:none">
									<i class="Hui-iconfont">&#xe6e2;</i>
								</a>
								&nbsp;
								<a title="图片" href="javascript:;" onclick="edit('图片','<%=basePath%>adminCarImg/toCarImgList','${car.carId}','800','500')" class="ml-5" style="text-decoration:none">
									<i class="Hui-iconfont">&#xe613;</i>
								</a>
								&nbsp;
								<a title="其它设置" href="javascript:;" onclick="edit('其它设置','<%=basePath%>adminCar/toOtherSet','${car.carId}','800','500')" class="ml-5" style="text-decoration:none">
									<i class="Hui-iconfont">&#xe60c;</i>
								</a>
							</td>
						</tr>
					</c:forEach>
				</tbody>	
		    	</table>
  </div>
		</div>
<script type="text/javascript" src="<%=basePath %>styles/admin/jquery.form.js"></script>
	<script type="text/javascript">
	// 分页
	$('.table-sort').dataTable({
		"aaSorting": [[ 0, "asc" ]],//默认第几个排序 
		"bStateSave": false,//状态保存
		"aLengthMenu" : [ 5,10,15,100,500 ] ,
		"aoColumnDefs": [
		  {"orderable":false,"aTargets":[0]}// 写出：不参与   排序的列
		]
	});
	//打开导入数据文件选择框  
	function selectFile(){  
	     $("#excelFile").trigger("click");  
	    
	}  
	//导入数据文件上传  
	function fileUpload(){  
	var option = {  
	    url : "<%=basePath%>poi/importData",//这里写你的url  
	    type : 'POST',  
	    datatype:'test',//这里是返回类型，一般是json,text  
	    clearForm: true,//提交后是否清空  
	    success : function(msg) {  
	    	layer.msg('导入数据成功!', {
				icon : 1,
				time : 500
				},function(){
					location = "<%=basePath %>adminCar/toCarList";
			});		
	    } ,  
	    error:function(msg){  
	    	layer.msg('导出失败', {
				icon : 5,
				time : 500
				},function(){
					location = "<%=basePath %>adminCar/toCarList";
			});		
	    }  
	};  
	$("#signupListImportForm").ajaxSubmit(option);  
	return false;  
	}  
	
	//导出数据
	function exportData(){
	var ids = $("[name='carId']:checked").map(function(){return this.value;}).get().join();
	var v=$("input[type='checkbox'][name='carId']:checked").closest('tr').find('td:eq(2)').map(function(){return this.innerHTML}).get().join();
	if(!ids){
		layer.msg('请勾选一条以上的数据', {time:750});	
		return;
	}
	layer.confirm("确定要导出  <span style='color:red'>" + v + "</span>  这些汽车的数据吗?",function(index){
		$.post(
			"<%=basePath%>poi/exportData",
			{"ids":ids},
			function(result){
				if (result > 0) {
					layer.msg('正在导出数据...请稍候', {
						icon : 1,
						time : 500
						},function(){
							location = "<%=basePath %>adminCar/toCarList"
					});			
				} else {
					layer.msg('导出失败!', {
						icon : 5,
						time : 1000
					});}
			},"text"
		)
	});
}
	//删除
	function del(obj,carId,carName){
		layer.confirm("确定要删除  <span style='color:red'>" + carName + "</span> 汽车吗?",function(index){
			var url = "<%=basePath%>adminCar/deleteCar";
			var params = {};
			params.carId = carId;
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
	function edit(title,url,carId,w,h){
		url = url + "?carId=" + carId;
		layer_show(title,url,w,h);
	}
	
	</script>
</body>

</html>