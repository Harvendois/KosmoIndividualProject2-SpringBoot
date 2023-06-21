package com.kosmo.springapp.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.kosmo.springapp.service.impl.BoardServiceImpl;


@Controller
public class WriteController {
	
	@Autowired
	private BoardServiceImpl boardService;
	
	@GetMapping("/approach/Write.do")
	public String toWrite() {
		
		return "/view/Write";
	}
	@PostMapping("/attempt/Write.do")
	public String write(
			@SessionAttribute("id") String id,
			@RequestParam Map map,
			Model model) {
		
		map.put("id", id);
		System.out.println(map);
		int affected=boardService.insert(map);
		System.out.println("입력-affected:"+affected);
		
		if(affected==0) {//입력 실패
			model.addAttribute("InputError", "입력오류입니다.다시 입력해주세요");
			return "/view/Write";
		}
		
		return "forward:/approach/List.do"; 
		
	}
}
