package com.kosmo.springapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MyPageController {
	
	@GetMapping("/approach/MyPage.do")
	public String myPage() {
		
		return "/view/MyPage";
	}
}
