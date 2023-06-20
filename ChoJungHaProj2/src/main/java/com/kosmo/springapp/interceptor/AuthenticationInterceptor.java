package com.kosmo.springapp.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;

public class AuthenticationInterceptor implements HandlerInterceptor{

	//한줄 메모 게시판의 인증 사전 체크
	//인증이 안된 경우 로그인화면으로 
	//인증된 경우는 요청을 그대로 보내준다
	//컨트롤러에서는 인증여부를 판단하는 코드를 제거해도 된다
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		HttpSession session = request.getSession();
		if(session.getAttribute("id")==null) {
			//인증이 안된 경우 루트로 리다이렉트
			//response.sendRedirect(request.getContextPath()+"/"); 루트로 감
			//인증이 안된 경우 로그인화면으로 포워드
			request.setAttribute("NotMember", "Login is required to use this service");
			request.getRequestDispatcher("/auth/Login.do").forward(request, response);
			return false; //컨트롤러 메소드로 요청이 전달이 안된다
		}
		return true; //요청 전달 승인
	}
	
}

