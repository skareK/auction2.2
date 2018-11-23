package com.baizhi.auction2_2.controller;

import com.baizhi.auction2_2.entity.AuctionUser;
import com.baizhi.auction2_2.service.AuctionUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
public class AuctionUserController {
	
	@Autowired
	private AuctionUserService userService;
	
	@RequestMapping("/reg")
	public String reg(AuctionUser user, HttpSession session){
		try {
			userService.insert(user);
			/*return "login";*/
			
			//注册成功就等于登录啦，跳转到展示数据的页面
			session.setAttribute("user", user);
			return "redirect:/getAuctions.do";
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "register";
	}
	
	@RequestMapping("/login")
	public String login(AuctionUser user,HttpSession session,String codes){
		AuctionUser one = userService.selectOne(user.getUserName(), user.getPassWord());
		String vrifyCode= (String) session.getAttribute("vrifyCode");
		if(one!=null && codes.equals(vrifyCode)){
			session.setAttribute("user", one);
			return "redirect:/getAuctions.do";
		}
		return "login";
	}

}
