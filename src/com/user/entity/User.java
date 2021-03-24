/*
 * Project: campus-transaction
 * File: User.java
 * Date: 2021/3/23 下午6:29
 * Author: TonyJam
 */

package com.user.entity;
public class User {
	private int id;
	private String username;
	private String userpwd;
	private String name;
	private String sex;
	private String academy;
	private String grade;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}

	public User(String username, String userpwd, String name, String sex, String academy, String grade, String qq, String phone, String profile) {
		this.username = username;
		this.userpwd = userpwd;
		this.name = name;
		this.sex = sex;
		this.academy = academy;
		this.grade = grade;
		this.qq = qq;
		this.phone = phone;
		this.profile = profile;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", username=" + username + ", userpwd="
				+ userpwd + ", name=" + name + ", sex=" + sex + ", academy="
				+ academy + ", grade=" + grade + ", qq=" + qq + ", phone="
				+ phone + ", profile=" + profile + "]";
	}
	public User(int id, String username, String userpwd, String name,
			String sex, String academy, String grade, String qq, String phone,
			String profile) {
		super();
		this.id = id;
		this.username = username;
		this.userpwd = userpwd;
		this.name = name;
		this.sex = sex;
		this.academy = academy;
		this.grade = grade;
		this.qq = qq;
		this.phone = phone;
		this.profile = profile;
	}
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getUserpwd() {
		return userpwd;
	}
	public void setUserpwd(String userpwd) {
		this.userpwd = userpwd;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getAcademy() {
		return academy;
	}
	public void setAcademy(String academy) {
		this.academy = academy;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public String getQq() {
		return qq;
	}
	public void setQq(String qq) {
		this.qq = qq;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getProfile() {
		return profile;
	}
	public void setProfile(String profile) {
		this.profile = profile;
	}
	private String qq;
	private String phone;
	private String profile;
}	
