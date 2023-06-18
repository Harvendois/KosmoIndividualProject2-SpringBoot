package com.kosmo.springapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {
	
	@GetMapping("/")
	public String index() {
		return "/view/Index";
	}
	@GetMapping("/approach/About.do")
	public String about() {
		return "/view/About";
	}
	@GetMapping("/approach/BetaFn.do")
	public String beta() {
		return "/view/BetaFn";
	}
}
