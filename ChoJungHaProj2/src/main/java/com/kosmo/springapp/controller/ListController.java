package com.kosmo.springapp.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kosmo.springapp.service.BoardDTO;
import com.kosmo.springapp.service.ListPagingData;
import com.kosmo.springapp.service.PagingUtil;
import com.kosmo.springapp.service.impl.BoardServiceImpl;

@Controller
public class ListController {
	
	@Autowired
	private BoardServiceImpl boardService;
	
	@RequestMapping("/approach/List.do")
	public String list(
			@RequestParam Map map,
			@RequestParam(required = false,defaultValue = "1",value = PagingUtil.NOWPAGE) int nowPage,
			HttpServletRequest req,
			Model model) {
		ListPagingData<BoardDTO> listPagingData= boardService.selectList(map, req, nowPage);
		//데이타 저장
		model.addAttribute("listPagingData", listPagingData);
		
		return "/view/List";
	}
}
