package com.kosmo.springapp.controller;

import java.io.IOException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kosmo.springapp.service.impl.MemberServiceImpl;

@Controller
public class RegisterController {
	
	@Autowired
	private MemberServiceImpl memberService;
	
	@PostMapping("/attempt/Register.do")
	public String register(@RequestParam Map<String, String> map, Model model, HttpServletRequest req, HttpServletResponse resp) {
		int affected = memberService.insert(map);
		if(affected ==0) {
			
			req.setAttribute("message", "회원가입에 오류가 있습니다.");
			try {
				req.getRequestDispatcher("/view/Registration").forward(req, resp);
			} catch (ServletException e) {
				
				e.printStackTrace();
			} catch (IOException e) {
				
				e.printStackTrace();
			}
		}
		model.addAttribute("message", "회원가입 되었습니다. 다시 로그인해주세요.");
		return "/view/Login";
	}
}
