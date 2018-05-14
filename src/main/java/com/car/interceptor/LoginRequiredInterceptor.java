package com.car.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;


import com.car.entity.manager.ManageUser;


public class LoginRequiredInterceptor extends HandlerInterceptorAdapter{
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception{
		// 放行
		ManageUser user = (ManageUser) request.getSession().getAttribute("user2");
		if (user != null) {
			return true;
		} else {
			String msg = "登录超时，请重新登录！";
			request.setAttribute("msg", msg);
			request.getRequestDispatcher("/admin/toLogin").forward(request, response);
			return false;
		}
	 }
}
