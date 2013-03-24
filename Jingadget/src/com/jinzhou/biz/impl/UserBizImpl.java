package com.jinzhou.biz.impl;

import com.jinzhou.biz.UserBiz;
import com.jinzhou.dao.UserDao;
import com.jinzhou.entity.User;

public class UserBizImpl implements UserBiz {
	UserDao userDao;

	public void regist(User user) {
		userDao.save(user);
	}

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	public User getUserInfo(User user) {
		return userDao.findUserByNameOrEmail(user);
	}

}
