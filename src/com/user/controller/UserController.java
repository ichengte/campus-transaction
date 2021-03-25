/*
 * Project: campus-transaction
 * File: UserController.java
 * Date: 2021/3/23 下午6:29
 * Author: TonyJam
 */

package com.user.controller;

import com.user.entity.UserDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.user.entity.User;
import com.user.service.UserService;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;

@Controller
@RequestMapping("user")
public class UserController {
	
	@Autowired
	private UserService userService;
	
	@RequestMapping(value="/login.do")
	@ResponseBody
	public User login(String username, String userpwd, HttpSession session) {
		User user = userService.login(username, userpwd);
		session.setAttribute("user", user);
		return user;
	}

	@RequestMapping(value="/register.do")
	@ResponseBody
	public Object register(UserDto userDto) throws IOException {

		MultipartFile file = userDto.getFile();
		String profile = file.getOriginalFilename();
		System.out.println(profile);

		File filepath = new File("C:/GitHub/campus-transaction/WebContent/user/" + profile);
		file.transferTo(filepath);

		User user = userDto.getUser();
		user.setProfile(profile);
		System.out.println(user);

		HashMap<String, Object> map = new HashMap<String, Object>();
		if (userService.register(user)){
			map.put("success", 1);
//			System.out.println("注册成功");
		} else {
			map.put("success", 0);
//			System.out.println("注册失败");
		}
		return map;
	}

	@RequestMapping(value="/loginOut.do")
//	@ResponseBody
	public Object  loginOut(HttpSession session){
		HashMap<String, Object> map = new HashMap<>();
		session.removeAttribute("user");
		map.put("success", 1);
		return "user-index";
	}

}
