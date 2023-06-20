package com.kosmo.springapp.controller;

import java.util.Map;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;


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
	@GetMapping("/approach/Registration.do")
	public String register() {
		return "/view/Registration";
	}
	@GetMapping("/approach/BetaFn.do")
	public String beta(@RequestParam Map map, Model model) {
		
		
		return "/view/BetaFn";
	}
}
