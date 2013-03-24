package com.jinzhou.dao;

import com.jinzhou.entity.User;

public interface UserDao {

	void save(User user);

	User findUserByNameOrEmail(User user);


}
