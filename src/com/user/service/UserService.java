/*
 * Project: campus-transaction
 * File: UserService.java
 * Date: 2021/3/23 下午6:29
 * Author: TonyJam
 */

package com.user.service;

import com.user.entity.User;

public interface UserService {
	User login(String usename, String userpwd);
	Boolean register(User user);
	User findByUsername(String username);
	Boolean saveInfo(User user);
	Boolean changeProfile(User user);
}
