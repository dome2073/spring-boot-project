package com.lost.site.service;

import java.util.List;

import com.lost.site.dto.Article;
import com.lost.site.dto.ArticleList;

public interface ArticleService {
	
	public ArticleList getList(String atc_type, int pageNum);


	public Article getOne(String atc_num);

	public void hitUp(String atc_num);
}
