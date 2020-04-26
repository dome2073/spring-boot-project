package com.lost.site.dao;

import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.lost.site.dto.User;

@Mapper
public interface UserDao {

	int getLoginIdCount(String user_id);

	User getOne(long loginedUserId);

	User getMatchedOne(String user_id, String user_pw);

	void join(Map<String, Object> param);

}
