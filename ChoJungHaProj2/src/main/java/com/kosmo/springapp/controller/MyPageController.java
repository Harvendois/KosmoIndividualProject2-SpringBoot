package com.kosmo.springapp.controller;

import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttribute;

import com.kosmo.springapp.service.MemberDTO;
import com.kosmo.springapp.service.impl.MemberServiceImpl;

@Controller
public class MyPageController {
	
	@Autowired
	private MemberServiceImpl memberService;
	
	@RequestMapping("/approach/MyPage.do")
	public String myPage(@SessionAttribute("id") String id, Model model, HttpServletResponse resp, Map map) {
		map.put("id", id);
		MemberDTO member = memberService.selectOne(map);
		model.addAttribute("record", member);
		return "/view/MyPage";
	}
}
