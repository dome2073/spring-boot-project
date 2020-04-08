package com.lost.site.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;


import com.lost.site.dto.Article;
 
@Mapper //마이바티스 맵핑
public interface ArticleDao {
	//서비스에서 했던 일을 Dao에서
	public List<Article> getList();
}
