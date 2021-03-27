/*
 * Project: campus-transaction
 * File: User.java
 * Date: 2021/3/23 下午6:29
 * Author: TonyJam
 */

package com.user.entity;
public class User {
	private int uuid;
	private String username;
	private String userpwd;
	private String realname;
	private String sex;

	@Override
	public String toString() {
		return "User{" +
				"uuid=" + uuid +
				", username='" + username + '\'' +
				", userpwd='" + userpwd + '\'' +
				", realname='" + realname + '\'' +
				", sex='" + sex + '\'' +
				", academy='" + academy + '\'' +
				", grade='" + grade + '\'' +
				", qq='" + qq + '\'' +
				", phone='" + phone + '\'' +
				", profile='" + profile + '\'' +
				", balance=" + balance +
				'}';
	}

	private String academy;
	private String grade;
	private String qq;
	private String phone;
	private String profile;
	private float balance;

	public User() {
	}

	public User(String username, String userpwd, String realname, String sex, String academy, String grade, String qq, String phone, String profile, float balance) {
		this.username = username;
		this.userpwd = userpwd;
		this.realname = realname;
		this.sex = sex;
		this.academy = academy;
		this.grade = grade;
		this.qq = qq;
		this.phone = phone;
		this.profile = profile;
		this.balance = balance;
	}

	public User(int uuid, String username, String userpwd, String realname, String sex, String academy, String grade, String qq, String phone, String profile, float balance) {
		this.uuid = uuid;
		this.username = username;
		this.userpwd = userpwd;
		this.realname = realname;
		this.sex = sex;
		this.academy = academy;
		this.grade = grade;
		this.qq = qq;
		this.phone = phone;
		this.profile = profile;
		this.balance = balance;
	}

	public int getUuid() {
		return uuid;
	}

	public void setUuid(int uuid) {
		this.uuid = uuid;
	}

	public String getUsername() {
		return username;
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

	public String getRealname() {
		return realname;
	}

	public void setRealname(String realname) {
		this.realname = realname;
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

	public float getBalance() {
		return balance;
	}

	public void setBalance(float balance) {
		this.balance = balance;
	}
}
