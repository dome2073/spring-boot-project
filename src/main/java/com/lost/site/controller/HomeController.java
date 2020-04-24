package com.lost.site.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class HomeController {
	
	@RequestMapping("/")
	public String showMain() {
		
		return "home/main";
	}
	
	@RequestMapping("/home/login")
	public String showLogin() {
		
		return "home/login";
	}
}
