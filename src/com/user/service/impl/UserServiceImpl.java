/*
 * Project: campus-transaction
 * File: UserServiceImpl.java
 * Date: 2021/3/23 下午6:29
 * Author: TonyJam
 */

package com.user.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.user.entity.User;
import com.user.mapper.UserMapper;
import com.user.service.UserService;

@Service("userService")
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserMapper userMapper;
	
	/**
	 * 登录
	 */
	@Override
	public User login(String username, String userpwd) {
//		System.out.println(userMapper.login(username, userpwd));
		// TODO Auto-generated method stub
		return userMapper.login(username, userpwd);
	}

	@Override
	public Boolean register(User user) {
		return userMapper.register(user);
	}

	@Override
	public User findByUsername(String username) {
		return userMapper.findByUsername(username);
	}

	@Override
	public Boolean saveInfo(User user) {
		return userMapper.saveInfo(user);
	}

	@Override
	public Boolean changeProfile(User user) {
		return userMapper.changeProfile(user);
	}

}
