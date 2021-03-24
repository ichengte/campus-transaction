/*
 * Project: campus-transaction
 * File: UserMapper.java
 * Date: 2021/3/23 下午6:29
 * Author: TonyJam
 */

package com.user.mapper;

import org.apache.ibatis.annotations.Param;

import com.user.entity.User;


public interface UserMapper {
	/**
	 * 登录
	 * @param username
	 * @param userpwd
	 * @return User
	 */
	public User login(@Param("username") String username,@Param("userpwd") String userpwd); 
	public Boolean register(User user);
	
}
