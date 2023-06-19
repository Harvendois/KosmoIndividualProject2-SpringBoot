package com.kosmo.springapp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.kosmo.springapp.service.impl.MemberServiceImpl;

@Controller
public class MyPageController {
	
	@Autowired
	private MemberServiceImpl memberService;
	
	@GetMapping("/approach/MyPage.do")
	public String myPage() {
		
		
		return "/view/MyPage";
	}
}
