package com.kosmo.springapp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.kosmo.springapp.service.BoardDTO;
import com.kosmo.springapp.service.impl.BoardServiceImpl;

@Controller
public class DeleteController {
	
	@Autowired
	private BoardServiceImpl boardService;

	@GetMapping("/attempt/Delete.do")
	public String delete(
			//@ModelAttribute("id") String id,
			BoardDTO dto,Model model) {
		//서비스 호출
		int deleteCommentCount= boardService.delete(dto);
		if(deleteCommentCount == -1) {
			model.addAttribute("FAILURE","삭제 할수 없어요");
			return "forward:/approach/View.do"; 
		}
		System.out.println("삭제된 총 댓글 수:"+deleteCommentCount);
		//뷰정보 반환]-목록을 처리하는 컨트롤러로 이동
		return "forward:/approach/List.do";
	}
}
