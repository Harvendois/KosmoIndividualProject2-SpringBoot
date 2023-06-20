package com.kosmo.springapp.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import com.kosmo.springapp.interceptor.AuthenticationInterceptor;


@Configuration
public class MvcConfig implements WebMvcConfigurer {
	@Override
	public void addInterceptors(InterceptorRegistry registry) {
		
		registry.addInterceptor(new AuthenticationInterceptor())
		.addPathPatterns("/approach/**")
		.addPathPatterns("/attempt/**")
		.excludePathPatterns("/auth/**")
		.excludePathPatterns("/approach/Registration.do")
		.excludePathPatterns("/approach/About.do")
		;
	}
}
