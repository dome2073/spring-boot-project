package com.lost.site.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.lost.site.dto.Article;

public class ArticleDaoImpl implements ArticleDao {
	@Autowired
	ArticleDao articleDao;
	
	public List<Article> getList(){
		
		return articleDao.getList();
		
	}
}
