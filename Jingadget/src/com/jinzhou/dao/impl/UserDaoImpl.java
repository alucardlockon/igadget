package com.jinzhou.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.jinzhou.dao.UserDao;
import com.jinzhou.entity.User;

public class UserDaoImpl extends HibernateDaoSupport implements UserDao {
	/**
	 * 注册用户
	 */
	public void save(User user) {
		this.getHibernateTemplate().save(user);
	}

	/**
	 * 根据用户名查询用户
	 */
	public User findUserByNameOrEmail(User user) {
		String hql = "from User where name=?";
		List<User> list = this.getHibernateTemplate().find(hql,
				new Object[] { user.getName() });
		if (list.size() > 0) {
			return (User) list.get(0);
		} else {
			return null;
		}
	}
}
