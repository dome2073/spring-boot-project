package com.lost.site.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lost.site.dao.ArticleDao;
import com.lost.site.dto.Article;

@Service
public class ArticleServiceImpl implements ArticleService {
	
	@Autowired
	ArticleDao articleDao;
	
	public List<Article> getList(){
					
		return articleDao.getList();
		
	}
}
