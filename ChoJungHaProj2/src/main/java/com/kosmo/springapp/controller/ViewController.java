package com.kosmo.springapp.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kosmo.springapp.service.BoardDTO;
import com.kosmo.springapp.service.impl.BoardServiceImpl;

@Controller
public class ViewController {
	
	@Autowired
	private BoardServiceImpl boardService;
	
	@RequestMapping("/approach/View.do")
	public String view(@RequestParam Map map, Model model) {
		
		BoardDTO dto = boardService.selectOne(map);
		model.addAttribute("record", dto);
		
		return "/view/View";
	}
}
