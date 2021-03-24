/*
 * Project: campus-transaction
 * File: UserService.java
 * Date: 2021/3/23 下午6:29
 * Author: TonyJam
 */

package com.user.service;

import com.user.entity.User;

public interface UserService {
	public User login(String usename, String userpwd);
	public Boolean register(User user);
}
