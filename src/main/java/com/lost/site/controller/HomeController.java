package com.lost.site.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lost.site.dto.User;
import com.lost.site.service.UserService;

import jline.internal.Log;
import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class HomeController {
	@Autowired
	UserService userService;
	
	@RequestMapping("/")
	public String showMain(HttpSession session) {
		
		return "home/main";
	}
	

	
	
}
