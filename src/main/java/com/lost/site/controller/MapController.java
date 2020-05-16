package com.lost.site.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.lost.site.service.ArticleService;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class MapController {
	@Autowired
	ArticleService articleService;
	
	@RequestMapping("/map/map")
	public String showMain(HttpSession session,Model aModel) throws JsonProcessingException {
		
		List<String> placeList = articleService.getPlaceList(); 
		

		
		aModel.addAttribute("placeList",placeList);
		

		return "map/map";
		
	}
	

	
	
}
