package com.kosmo.springapp.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.kosmo.springapp.service.impl.MemberServiceImpl;;


@Controller
@SessionAttributes({"id"})
@RequestMapping("/auth")
public class LoginController {
	@Autowired
	private MemberServiceImpl memberService;
	
	//로그인 폼으로 이동(스프링 씨큐리티 대비해서 @GetMapping이 아닌 @RequestMapping)
	@GetMapping("/Login.do")
	public String login() {
		//뷰정보 반환
		return "/view/Login";
	}//////////////
	//로그인 처리
	
	@PostMapping("/LoginProcess.do")
	public String process(@RequestParam Map map,Model model) {
		//서비스 호출
		boolean isMember=memberService.isMember(map);
		//데이타 저장		
		if(isMember)
			model.addAttribute("id", map.get("id"));		
		else {
			model.addAttribute("NotMember", "아이디와 비번 불일치");
			return "/view/Login";
		}
		//뷰정보 반환
		return "/view/About";
	}/////////////////
	
	//로그아웃 처리
	@GetMapping("/Logout.do")
	public String logout(SessionStatus status) {
		status.setComplete();
		//뷰정보 반환
		return "/view/Login";
	}////////////////////
}
