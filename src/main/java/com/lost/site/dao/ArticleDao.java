package com.lost.site.dao;

import java.util.List;

import com.lost.site.dto.Article;

public interface ArticleDao {
	//서비스에서 했던 일을 Dao에서
	public List<Article> getList();
}
