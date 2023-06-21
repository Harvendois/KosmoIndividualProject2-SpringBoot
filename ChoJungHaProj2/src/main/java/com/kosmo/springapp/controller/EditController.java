package com.kosmo.springapp.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.kosmo.springapp.service.BoardDTO;
import com.kosmo.springapp.service.impl.BoardServiceImpl;


@Controller
public class EditController {
	
	@Autowired
	private BoardServiceImpl boardService;

	@GetMapping("/approach/Edit.do")
	public String edit(
			@RequestParam Map map,Model model) {
		//서비스 호출	
		BoardDTO record= boardService.selectOne(map);		
		//데이타 저장
		model.addAttribute("record", record);
		model.addAttribute("mode", "edit");
		return "/view/Write"; 
	}
	@PostMapping("/attempt/Edit.do")
	public String editOk(
			//@ModelAttribute("id") String id,
			BoardDTO dto,Model model) {
		//서비스 호출		
		
		int affected=boardService.update(dto);		
		if(affected==0) {//입력 실패
			model.addAttribute("InputError", "수정오류입니다.다시 입력해주세요");
			return "forward:/approach/Edit.do";
		}
		//뷰정보 반환		
		return "forward:/approach/View.do";
	}
}
