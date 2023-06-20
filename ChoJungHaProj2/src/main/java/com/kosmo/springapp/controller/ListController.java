package com.kosmo.springapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ListController {
	@GetMapping("/approach/List.do")
	public String list() {
		return "/view/List";
	}
}