/*
 * Project: campus-transaction
 * File: UserController.java
 * Date: 2021/3/23 下午6:29
 * Author: TonyJam
 */

package com.user.controller;

import com.user.entity.UserDto;
import org.apache.ibatis.annotations.Param;
import org.codehaus.jackson.map.ObjectMapper;
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
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

@Controller
@RequestMapping("user")
public class UserController {
	
	@Autowired
	private UserService userService;
	
	@RequestMapping(value="/login.do")
	@ResponseBody
	public Object login(String username, String userpwd, HttpSession session) {
		User user = userService.login(username, userpwd);
		HashMap<String, Object> map = new HashMap<String, Object>();
		if (user != null){
			map.put("user", user);
			session.setAttribute("user", user);
			map.put("success", 1);
		} else {
			map.put("success", 0);
		}
		return map;
	}

	@RequestMapping(value="/register.do")
	@ResponseBody
	public Object register(UserDto userDto) throws IOException {

		MultipartFile file = userDto.getFile();
		String profile = file.getOriginalFilename();
//		System.out.println(profile);

		File filepath = new File("C:/GitHub/campus-transaction/WebContent/user/" + profile);
		file.transferTo(filepath);

		User user = userDto.getUser();
		user.setProfile(profile);
//		System.out.println(user);

		HashMap<String, Object> map = new HashMap<String, Object>();
		if (userService.register(user)){
			map.put("success", 1);
		} else {
			map.put("success", 0);
		}
		return map;
	}

	@RequestMapping(value="/loginOut.do")
	public Object  loginOut(HttpSession session, Integer aid){
		session.removeAttribute("user");
		if (aid == 1){
			return "admin-login";
		}
		return "user-index";
	}

	@RequestMapping(value = "/findByUsername.do")
	@ResponseBody
	public User findByUsername(String username){
//		System.out.println(username);
		User user = userService.findByUsername(username);
//		System.out.println(user);
		return user;
	}

	@RequestMapping(value = "/saveInfo.do")
	@ResponseBody
	public Object saveInfo(User user){
		System.out.println(user);
		HashMap<String, Object> map = new HashMap<>();
		if (userService.saveInfo(user)){
			map.put("success", 1);
		} else {
			map.put("success", 0);
		}
		return map;
	}

	@RequestMapping(value = "/changeProfile.do")
	@ResponseBody
	public Object changeProfile(UserDto userDto) throws IOException {
		MultipartFile file = userDto.getFile();
		String profile = file.getOriginalFilename();
		System.out.println(profile);

		File filepath = new File("C:/GitHub/campus-transaction/WebContent/user/" + profile);
		file.transferTo(filepath);

		User user = userDto.getUser();
		user.setProfile(profile);
		HashMap<String, Object> map = new HashMap<>();
		if (userService.changeProfile(user)){
			map.put("success", 1);
			map.put("profile", profile);
		} else {
			map.put("success", 0);
		}
		return map;
	}

	@RequestMapping(value = "/findAll.do")
	@ResponseBody
	public Object findAll(){
		List<User> userList = new ArrayList<>();
		userList = userService.findAll();
		HashMap<String, Object> map = new HashMap<>();
		if (userList.size() > 0){
			map.put("code", 0);
			map.put("msg", "");
			map.put("count", userList.size());
			map.put("data", userList);

		} else {
			map.put("code", 1);
		}
		return map;
	}

	@RequestMapping(value = "/findByRealname.do")
	@ResponseBody
	public Object findByRealname(String searchParams, Integer limit) throws IOException {
		ObjectMapper mapper = new ObjectMapper();
//		System.out.println(searchParams);

		User user = mapper.readValue(searchParams, User.class);
		String realname = user.getRealname();
//		System.out.println(realname);

		HashMap<String, Object> map =  new HashMap<>();
		List<User> userList = userService.findByRealname(realname);
		if (limit != null) {
			if (userList != null){
				map.put("code", 0);
				map.put("msg", "");
				map.put("count", userList.size());
				map.put("data", userList);
			} else {
				map.put("code", 1);
			}
			return map;
		}
		return userList;
	}

	@ResponseBody
	@RequestMapping(value = "/add.do")
	public Object add(User user){
		System.out.println(user);
		HashMap<String, Object> map =  new HashMap<>();
		if (userService.add(user)){
			map.put("success", 1);
		} else {
			map.put("succcess", 0);
		}
		return map;
	}
	@ResponseBody
	@RequestMapping(value = "/delete.do")
	public Object delete(User user){
		System.out.println(user);
		HashMap<String, Object> map =  new HashMap<>();
		if (userService.delete(user)){
			map.put("success", 1);
		} else {
			map.put("success", 0);
		}
		return map;
	}

}
