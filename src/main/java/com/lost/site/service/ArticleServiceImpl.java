package com.lost.site.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import com.lost.site.dto.Article;

@Service
public class ArticleServiceImpl implements ArticleService {
	public List<Article> getList(){
		
//		가 데이터 넣기
		
		Article article1 = new Article(1, "2020-04-07 21:22:01", "제목1", "내용1");
		Article article2 = new Article(2, "2020-04-07 21:22:01", "제목2", "내용2");
		Article article3 = new Article(3, "2020-04-07 21:22:01", "제목3", "내용3");
		
		
		List<Article> list = new ArrayList<>();
		
		list.add(article3);
		list.add(article2);
		list.add(article1);
		
		return list;
		
	}
}
