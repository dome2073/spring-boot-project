package com.lost.site.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.lost.site.dto.Article;
import com.lost.site.dto.ArticleList;
import com.lost.site.service.ArticleService;

import groovy.util.logging.Slf4j;

@Controller
@Slf4j //아래 로그정보를 확인하기위해 사용하는 @
public class ArticleController {
	@Autowired
	ArticleService articleService;
	
	@RequestMapping("/article/find/list")
	public String showFindList(Model aModel,@RequestParam(value="atc_type")String atc_type,@RequestParam(value="page", defaultValue ="1") Integer pageNum) {
		
		ArticleList list = articleService.getList(atc_type,pageNum);
		
		System.out.println(list);
		System.out.println(pageNum);
		
		//Log.info("list" + list); 
		aModel.addAttribute("list", list); //뷰로 데이터 전송
		
		return "article/find_list";
	}
	
	@RequestMapping("/article/lost/list")
	public String showLostList(Model aModel,@RequestParam(value="atc_type")String atc_type,@RequestParam(value="page", defaultValue ="1") Integer pageNum) {
		
		ArticleList list = articleService.getList(atc_type,pageNum);
		
		System.out.println(list);
		System.out.println(pageNum);
		//Log.info("list" + list); 
		aModel.addAttribute("list", list); //뷰로 데이터 전송
		
		return "article/lost_list";
	}
	
	@RequestMapping("/article/find/detail")
	public String showFindDetail(Model model, String atc_num) {
		Article article = articleService.getOne(atc_num);
		
		articleService.hitUp(atc_num);

		model.addAttribute("article", article);

		return "article/detail";
	}
	
	@RequestMapping("/article/lost/detail")
	public String showDetail(Model model, String atc_num) {
		Article article = articleService.getOne(atc_num);
		
		articleService.hitUp(atc_num);

		model.addAttribute("article", article);

		return "article/detail";
	}
}
