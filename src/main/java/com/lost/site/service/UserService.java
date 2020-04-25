package com.lost.site.service;

import java.util.Map;

import com.lost.site.dto.User;

public interface UserService {

	Map<String, Object> checkLoginId(String user_id);

	User getOne(long loginedUserId);

	User getMatchedOne(String user_id, String user_pw);
	
	

}
