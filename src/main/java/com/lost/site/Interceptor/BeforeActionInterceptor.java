package com.lost.site.Interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;

import com.lost.site.dto.User;
import com.lost.site.service.UserService;

@Component("beforeActionInterceptor") // 컴포넌트 이름 설정
public class BeforeActionInterceptor implements HandlerInterceptor {
	
	@Autowired
	UserService userService;
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		boolean isLogined = false;
		long loginedUserNum = 0;
		User loginedUser = null;
		
		HttpSession session = request.getSession();
		
		if ( session.getAttribute("loginedUserNum") != null ) {
			isLogined = true;
			loginedUserNum = (long)session.getAttribute("loginedUserNum");
			loginedUser = userService.getOne(loginedUserNum);
		}
		
		request.setAttribute("isLogined", isLogined);
		request.setAttribute("loginedUserNum", loginedUserNum);
		request.setAttribute("loginedUser", loginedUser);
		


		return HandlerInterceptor.super.preHandle(request, response, handler);
	}
}
