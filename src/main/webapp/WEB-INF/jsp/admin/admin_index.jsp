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
                <li class="layui-nav-item">
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
                    <li class="layui-nav-item">
                        <a class="" href="javascript:;"><i class="layui-icon" aria-hidden="true">&#xe612;</i><span>&nbsp;员工管理</span></a>
                        <dl class="layui-nav-child">
                           
                            <dd>
                               <a href="javascript:;" kit-target data-options="{url:'<%=basePath%>adminManage/findManageUserList',icon:'&#xe650;',title:'员工列表',id:'1'}"><i class="layui-icon" aria-hidden="true">&#xe650;</i><span> 员工列表</span></a>
                            </dd>
                             <dd>
                                <a href="javascript:;" kit-target data-options="{url:'<%=basePath%>manageRole/findManageRoleList',icon:'&#xe606;',title:'角色列表',id:'2'}">
                                    <i class="layui-icon">&#xe606;</i><span>&nbsp;角色列表</span></a>
                            </dd>
                            <dd>
                                <a href="javascript:;" data-url="<%=basePath%>manageResources/getManageResourcesList" data-icon="&#xe628;" data-title="权限列表" kit-target data-id='3'><i class="layui-icon">&#xe628;</i><span> 权限列表</span></a>
                            </dd>
                       
                        </dl>
                    </li>
                    <li class="layui-nav-item">
                        <a href="javascript:;"><i class="layui-icon" aria-hidden="true">&#xe638;</i><span>&nbsp;汽车管理</span></a>
                        <dl class="layui-nav-child">

                            <dd><a href="javascript:;" kit-target data-options="{url:'<%=basePath%>adminCar/toCarList',icon:'&#xe62d;',title:'汽车列表',id:'8'}"><i class="layui-icon">&#xe62d;</i><span> 汽车列表</span></a></dd>
                            <dd><a href="javascript:;" kit-target data-options="{url:'<%=basePath%>adminProducer/toProducerList',icon:'&#xe620;',title:'生产商列表',id:'9'}"><i class="layui-icon">&#xe620;</i><span> 生产商表</span></a></dd>
                            <dd><a href="javascript:;" kit-target data-options="{url:'<%=basePath%>adminBrand/toBrandList',icon:'&#xe628;',title:'品牌列表',id:'10'}"><i class="layui-icon">&#xe628;</i><span> 品牌列表</span></a></dd>
                            <dd><a href="javascript:;" kit-target data-options="{url:'<%=basePath%>adminModel/toModelList',icon:'&#xe60b;',title:'车型列表',id:'11'}"><i class="layui-icon">&#xe60b;</i><span> 车型列表</span></a></dd>
                            <dd><a href="javascript:;" kit-target data-options="{url:'<%=basePath%>adminColor/toColorList',icon:'&#xe636;',title:'颜色列表',id:'12'}"><i class="layui-icon">&#xe636;</i><span> 颜色列表</span></a></dd>
                         </dl>
                    </li>  
                    <li class="layui-nav-item ">
                        <a href="javascript:;"><i class="layui-icon" aria-hidden="true">&#xe63a;</i><span>&nbsp;用户管理</span></a>
                        <dl class="layui-nav-child">
                            <dd><a href="javascript:;" kit-target data-options="{url:'<%=basePath%>adminUser/toUserList',icon:'&#xe6af;',title:'用户列表',id:'4'}"><i class="layui-icon">&#xe6af;</i><span> 用户列表</span></a></dd>
                            <dd><a href="javascript:;" kit-target data-options="{url:'<%=basePath%>adminUser/toLvList',icon:'&#xe735;',title:'等级列表',id:'5'}"><i class="layui-icon">&#xe735;</i><span> 等级列表</span></a></dd>
                         </dl>
                    </li>
                      <li class="layui-nav-item">
                        <a href="javascript:;"><i class="layui-icon" aria-hidden="true">&#xe68e;</i><span>&nbsp;仓库管理</span></a>
                        <dl class="layui-nav-child">
                            <dd><a href="javascript:;" kit-target data-options="{url:'<%=basePath%>adminRepository/toRepositoryList',icon:'&#xe857;',title:'仓库列表',id:'21'}"><i class="layui-icon">&#xe857;</i><span> 仓库列表</span></a></dd>
                            <dd><a href="javascript:;" kit-target data-options="{url:'<%=basePath%>adminRepository/toRepDistrictList',icon:'&#xe715;',title:'地区列表',id:'22'}"><i class="layui-icon">&#xe715;</i><span> 地区列表</span></a></dd>
                            <dd><a href="javascript:;" kit-target data-options="{url:'<%=basePath%>adminHistory/toHistoryList',icon:'&#xe60e;',title:'仓库记录列表',id:'23'}"><i class="layui-icon">&#xe60e;</i><span> 仓库记录列表</span></a></dd>
                         </dl>
                    </li> 
                    
                    
                      <li class="layui-nav-item">
                        <a href="javascript:;"><i class="layui-icon" aria-hidden="true">&#xe698;</i><span>&nbsp;订单管理</span></a>
                        <dl class="layui-nav-child">
                            <dd><a href="javascript:;" kit-target data-options="{url:'<%=basePath%>/adminDrive/toApply',icon:'&#xe606;',title:'试驾列表',id:'13'}"><i class="layui-icon">&#xe606;</i><span> 试驾列表</span></a></dd>
                            <dd><a href="javascript:;" kit-target data-options="{url:'<%=basePath%>/adminOrderForm/toOrderForm',icon:'&#xe63c;',title:'订单列表',id:'14'}"><i class="layui-icon">&#xe63c;</i><span> 订单列表</span></a></dd>
                          </dl>
                    </li>
                         
                           <li class="layui-nav-item">
                        <a href="javascript:;"><i class="layui-icon" aria-hidden="true">&#xe65e;</i><span>&nbsp;广告管理</span></a>
                        <dl class="layui-nav-child">
                            <dd><a href="javascript:;" kit-target data-options="{url:'<%=basePath%>adminExtra/toImg',icon:'&#xe634;',title:'轮播列表',id:'15'}"><i class="layui-icon">&#xe634;</i><span> 轮播列表</span></a></dd>
                            <dd><a href="javascript:;" kit-target data-options="{url:'<%=basePath%>adminExtra/toVideo',icon:'&#xe6ed;',title:'视频列表',id:'16'}"><i class="layui-icon">&#xe6ed;</i><span> 视频列表</span></a></dd>
                            <dd><a href="javascript:;" kit-target data-options="{url:'<%=basePath%>adminPush/toPushList',icon:'&#xe609;',title:'推送列表',id:'22'}"><i class="layui-icon">&#xe609;</i><span> 推送列表</span></a></dd>
                         </dl>
                    </li>
                      <li class="layui-nav-item">
                       <a href="javascript:;" kit-target data-options="{url:'<%=basePath%>/adminCoupon/toCoupon',icon:'&#xe756;',title:'优惠管理',id:'6'}"><i class="layui-icon">&#xe756;</i><span> 优惠管理</span></a>
                    </li>
                    <li class="layui-nav-item">
                        <a href="javascript:;" kit-target data-options="{url:'<%=basePath%>adminDictionary/toDictionary',icon:'&#xe705;',title:'字典管理',id:'7'}"><i class="layui-icon">&#xe705;</i><span> 字典管理</span></a> 
                    </li>
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
            <a href="https://www.autohome.com.cn/beijing/" style="font-size: 14px;">北京车之盟科技有限公司后台管理系统</a>
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