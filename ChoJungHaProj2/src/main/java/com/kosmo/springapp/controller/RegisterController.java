package com.kosmo.springapp.controller;

import java.io.IOException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kosmo.springapp.service.MemberDTO;
import com.kosmo.springapp.service.impl.MemberServiceImpl;

@Controller
public class RegisterController {
	
	@Autowired
	private MemberServiceImpl memberService;
	
	@RequestMapping("/attempt/Register.do")
	public String register(@RequestParam Map map, Model model) {
		int affected = memberService.insert(map);
		if(affected ==0) {
			model.addAttribute("message", "회원가입에 오류가 있습니다.");
			return "forward:/approach/Registration.do";
		}
		model.addAttribute("message", "회원가입 되었습니다. 다시 로그인해주세요.");
		return "/view/Login";
	}
	
	@GetMapping("/approach/MemberEdit.do")
	public String memberEditApproach(@RequestParam Map map, Model model) {
		MemberDTO member = memberService.selectOne(map);
		model.addAttribute("record", member);
		model.addAttribute("mode", "edit");
		return "/view/Registration";
	}
	
	@PostMapping("/attempt/MemberEdit.do")
	public String memberEdit(@RequestParam Map map) {
		memberService.updateMember(map);
		return "forward:/approach/MyPage.do";
	}

	@RequestMapping("/attempt/CheckId.do")
	public @ResponseBody String check(@RequestParam Map map) {
		int affected = memberService.isDuplicate(map);
		return affected==1?"1":"0";
	}
	
}
