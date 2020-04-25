package com.lost.site.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lost.site.dao.UserDao;
import com.lost.site.dto.User;

import groovy.util.logging.Slf4j;

@Service
@Slf4j //아래 로그정보를 확인하기위해 사용하는 @
public class UserServiceImpl implements UserService{
	@Autowired
	UserDao userDao;
	
	
	public Map<String, Object> checkLoginId(String user_id){
		int count = userDao.getLoginIdCount(user_id);
		
		String resultCode = "";
		String msg = "";
		
		if(count ==0) {
			resultCode = "S-1";
			msg = "사용가능한 로그인 ID 입니다.";		
		}else {
			resultCode = "F-1";
			msg = "이미 사용중인 로그인 ID 입니다.";
		}
		
		
		Map<String, Object> result = new HashMap<String,Object>();
		result.put("resultCode", resultCode);
		result.put("msg", msg);
		
		return result;
		
	}
	
	public User getOne(long loginedUserId) {

		return userDao.getOne(loginedUserId);
	}
	
	public User getMatchedOne(String user_id, String user_pw) {
		return userDao.getMatchedOne(user_id, user_pw);
	}
	
	

}
