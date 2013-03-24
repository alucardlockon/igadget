package com.jinzhou.entity;

import java.sql.Date;

public class User {
	private int id;
	private String name;
	private String password;
	private String email;
	private int isverify;
	private Date registdate;
	private Date lastlogin;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getIsverify() {
		return isverify;
	}
	public void setIsverify(int isverify) {
		this.isverify = isverify;
	}
	public Date getRegistdate() {
		return registdate;
	}
	public void setRegistdate(Date registdate) {
		this.registdate = registdate;
	}
	public Date getLastlogin() {
		return lastlogin;
	}
	public void setLastlogin(Date lastlogin) {
		this.lastlogin = lastlogin;
	}
	@Override
	public String toString() {
		return "User [email=" + email + ", id=" + id + ", isverify=" + isverify
				+ ", lastlogin=" + lastlogin + ", name=" + name + ", password="
				+ password + ", registdate=" + registdate + "]";
	}
	
}
