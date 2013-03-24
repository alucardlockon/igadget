package com.jinzhou.web.action;

import java.sql.Date;

import com.jinzhou.biz.UserBiz;
import com.jinzhou.entity.User;

public class RegistAction extends BaseAction{
	User user;
	UserBiz userBiz;
	public String execute() {
		user.setIsverify(0);
		user.setRegistdate(new Date(System.currentTimeMillis()));
		userBiz.regist(user);
		return "toverify";
	}
	public String toreg(){
		return "toreg";
	}
	public String verifysuc(){
		return "verifysuc";
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public void setUserBiz(UserBiz userBiz) {
		this.userBiz = userBiz;
	}
	
}
