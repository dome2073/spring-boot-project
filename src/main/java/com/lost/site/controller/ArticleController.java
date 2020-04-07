package com.lost.site.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lost.site.dto.Article;
import com.lost.site.service.ArticleService;

import groovy.util.logging.Slf4j;
import jline.internal.Log;

@Controller
@Slf4j //아래 로그정보를 확인하기위해 사용하는 @
public class ArticleController {
	@Autowired
	ArticleService articleService;
	
	@RequestMapping("article/list")
	public String showList(Model aModel) {
		
		List<Article> list = articleService.getList();
		
		//Log.info("list" + list); 
		aModel.addAttribute("list", list); //뷰로 데이터 전송
		
		return "article/list";
	}
	
}
