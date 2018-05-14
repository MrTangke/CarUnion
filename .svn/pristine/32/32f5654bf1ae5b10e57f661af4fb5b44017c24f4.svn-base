<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>车之盟管理系统后台</title>
</head>
<%@ include file="/styles/common/back/admin_styles_css.jsp"%>
<%@ include file="/styles/common/back/admin_styles_js.jsp"%>
<body>
    <div class="layui-layout layui-layout-admin kit-layout-admin">
        <div class="layui-header">
            <div class="layui-logo"><img width="152" src="<%=basePath%>img/back/extra/logo_black.jpg" ></div>
            <div class="layui-logo kit-logo-mobile">K</div>
              <ul class="layui-nav layui-layout-right kit-nav">
                <li class="layui-nav-item" style="position: relative;bottom: 5px;">
                    <a href="javascript:;">
                        <img src="<%=basePath%>${user2.manageImg}" class="layui-nav-img"> ${user2.loginName}
                    </a>
                    <dl class="layui-nav-child">
                        <dd><a href="<%=basePath%>admin/toManageUserMessage"><i class="layui-icon" aria-hidden="true">基本资料</a></dd>
                        <dd><a href="javascript:;">安全设置</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item"><a href="<%=basePath%>admin/toLogin"><i class="fa fa-sign-out" aria-hidden="true"></i> 注销</a></li>
            </ul>
        </div>

        <div class="layui-side layui-bg-black kit-side" >
            <div class="layui-side-scroll">
                <div class="kit-side-fold"><i class="fa fa-navicon" aria-hidden="true" style="line-height: 35px;"></i></div>
                <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
                <ul class="layui-nav layui-nav-tree" lay-filter="kitNavbar" kit-navbar>
                   <c:forEach items="${resList}" var="res">
                   <c:forEach items="${list}" var="rr">
                   <c:if test="${res.resId==rr}">
                    <li class="layui-nav-item">
                        <c:if test="${res.pid==0}">
                        <a href="javascript:;"><i class="layui-icon" aria-hidden="true">${res.resContent}</i><span>&nbsp;${res.resName}</span></a>
                         </c:if>
                        <dl class="layui-nav-child">
                        <c:forEach items="${resList}" var="re">
                           <c:if test="${re.pid==res.resId}">
                           <dd><a href="javascript:;" kit-target data-options="{url:'<%=basePath%>${re.resUrl}',icon:'${re.resContent}',title:'${re.resName}',id:'${re.resOrder}'}"><i class="layui-icon">${re.resContent}</i><span>&nbsp;${re.resName}</span></a></dd>
                           
                           </c:if>
                           </c:forEach>
                         </dl>
                    </li> 
                    </c:if> 
                    </c:forEach>
                    </c:forEach>
                </ul>
            </div>
        </div>
        <div class="layui-body" id="container">
            <!-- 内容主体区域 -->
            <div>&nbsp;&nbsp;&nbsp;&nbsp;玩 命 加 载 中 , 请 稍 等 ...</div>       
        </div>
        <div class="layui-footer" align="center" style="z-index: 5;">
            <!-- 底部固定区域 -->
            1998 - 2018 &copy;
            <a href="<%=basePath %>desk/toIndex" style="font-size: 14px;">北京车之盟科技有限公司后台管理系统</a>
        </div>
    </div>
  <section class="Hui-article-box">
		<div id="iframe_box" class="Hui-article">
			<div class="show_iframe">
				<div style="display:none" class="loading"></div>
				<!-- 首页 -->
				<iframe scrolling="yes" frameborder="0" src="<%=basePath %>admin/toWelcome"></iframe>
			</div>
		</div>
	</section>
    <script>
        var message;
        layui.config({
            base: '<%=basePath%>styles/admin/build/js/'
        }).use(['app', 'message'], function() {
            var app = layui.app,
                $ = layui.jquery,
                layer = layui.layer;
            //将message设置为全局以便子页面调用
            message = layui.message;
            //主入口
            app.set({
                type: 'iframe'
            }).init();       
        });
    </script>
</body>

</html>