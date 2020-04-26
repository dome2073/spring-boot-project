package com.lost.site.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.lost.site.dto.User;
import com.lost.site.service.UserService;

@Controller
public class UserController {
	@Autowired
	UserService userService;
	
	@RequestMapping("/user/Join")
	public String showJoin() {
		
		return "user/join";
	}
	
	@RequestMapping("/user/doJoin")
	public String doJoin(@RequestParam Map<String, Object>param, Model model) {
		
		Map<String, Object> checkLoginResult = userService.checkLoginId((String)param.get("user_id"));
		
		if( ((String)checkLoginResult.get("resultCode")).startsWith("F-")){
			model.addAttribute("alertMsg", checkLoginResult.get("msg"));
			model.addAttribute("historyBack", true);
			return "common/redirect";
		}
		
		Map<String, Object> joinRs = userService.join(param);
		
		if (((String) joinRs.get("resultCode")).startsWith("F-")) {
			model.addAttribute("alertMsg", joinRs.get("msg"));
			model.addAttribute("historyBack", true);
			return "common/redirect";
		}

		model.addAttribute("alertMsg", joinRs.get("msg"));
		model.addAttribute("redirectUrl", "/");
		
		return "common/redirect";
	}
	
	@RequestMapping("/user/Login")
	public String showLogin() {
		
		return "user/login";
	}
	
	@RequestMapping("/user/doLogin")
	public String doLogin(@RequestParam Map<String, Object> param, Model model, HttpSession session) {
		User matchedUser = userService.getMatchedOne((String) param.get("user_id"),
				(String) param.get("user_pw"));

		if (matchedUser == null) {
			model.addAttribute("alertMsg", "일치하는 회원이 존재하지 않습니다.");
			model.addAttribute("historyBack", true);
			return "common/redirect";
		}
		
		session.setAttribute("loginedUserNum", matchedUser.getUser_num());
			
		model.addAttribute("alertMsg", "로그인 되었습니다.");
		model.addAttribute("redirectUrl", "/");
		
		return "common/redirect";
	}
	
	
	
	@RequestMapping("/user/doLogout")
	public String doLogout(HttpSession session,  Model model) {
		
		session.removeAttribute("loginedUserNum");
		session.removeAttribute("loginedUser");
		session.removeAttribute("isLogined");
		
		
		
		System.out.println("로그아웃");
		
		model.addAttribute("alertMsg", "로그아웃 되었습니다.");
		model.addAttribute("redirectUrl", "/");
		
		return "common/redirect";
	}
	
	@RequestMapping("/user/mypage")
	public String showMypage(HttpSession session) {
		
		
		return "user/mypage";
	}
}
