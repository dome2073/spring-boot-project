package com.lost.site.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class WebMvcConfig implements WebMvcConfigurer {
	// beforeActionInterceptor 인터셉터 불러오기
	@Autowired
	@Qualifier("beforeActionInterceptor")
	HandlerInterceptor beforeActionInterceptor;

	// needToLoginInterceptor 인터셉터 불러오기
	@Autowired
	@Qualifier("needToLoginInterceptor")
	HandlerInterceptor needToLoginInterceptor;

	// needToLogoutInterceptor 인터셉터 불러오기
	@Autowired
	@Qualifier("needToLogoutInterceptor")
	HandlerInterceptor needToLogoutInterceptor;

	// 이 함수는 인터셉터를 적용하는 역할을 합니다.
	@Override
	public void addInterceptors(InterceptorRegistry registry) {
		// beforeActionInterceptor 를 모든 액션(/**)에 연결합니다. 단 /resource 로 시작하는 액션은 제외
		registry.addInterceptor(beforeActionInterceptor).addPathPatterns("/**").excludePathPatterns("/resources/**");

		// /resouce로 시작하는 URL
		// 메인, 로그인, 로그인 처리, 가입, 가입 처리, 게시물 리스트, 게시물 상세 빼고는 모두 로그인 상태여야 접근이 가능하다.
		registry.addInterceptor(needToLoginInterceptor).addPathPatterns("/**").excludePathPatterns("/resources/**")
				.excludePathPatterns("/").excludePathPatterns("/user/Login").excludePathPatterns("/user/doLogin").excludePathPatterns("/user/doLogout")
				.excludePathPatterns("/user/Join").excludePathPatterns("/user/doJoin")
				.excludePathPatterns("/article/lost/list").excludePathPatterns("/article/find/list").excludePathPatterns("/article/find/detail").excludePathPatterns("/article/lost/detail");

		// 로그인, 로그인처리, 가입, 가입 처리는 로그인 상태일 때 접근할 수 없다.
		registry.addInterceptor(needToLogoutInterceptor).addPathPatterns("/user/Login")
				.addPathPatterns("/user/doLogin").addPathPatterns("/user/Join").addPathPatterns("/user/doJoin");
	}
}