package com.kosmo.springapp.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.lang.reflect.Member;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;

import com.kosmo.springapp.service.MemberDTO;
import com.kosmo.springapp.service.impl.MemberServiceImpl;

@Controller
public class MyPageController {
	
	@Autowired
	private MemberServiceImpl memberService;
	
	@GetMapping("/approach/MyPage.do")
	public String myPage(@RequestParam Map map, Model model, HttpServletResponse resp) {
		
		MemberDTO member = memberService.selectOne(map);
		model.addAttribute("record", member);
		return "/view/MyPage";
	}
}
