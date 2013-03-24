package com.jinzhou.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.jinzhou.dao.CommentDao;
import com.jinzhou.entity.Comment;
import com.jinzhou.entity.News;

public class CommentDaoImpl extends HibernateDaoSupport implements CommentDao {
	/**
	 * 根据新闻ID查找评论
	 */
	public List<Comment> findCommentByNewsId(News oneNews) {
		String hql = "from Comment where newsid=?";
		return this.getHibernateTemplate().find(hql, oneNews.getId());
	}

	public int findCommentCount(News oneNews) {
		String hql="select count(*) from Comment where newsid=?";
		Query query = getSession().createQuery(hql).setInteger(0, oneNews.getId());
		Long l=(Long) query.uniqueResult();
		return (Integer)l.intValue();
	}

}
