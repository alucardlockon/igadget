package com.jinzhou.dao.impl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.criterion.Projections;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.jinzhou.dao.NewsDao;
import com.jinzhou.entity.Comment;
import com.jinzhou.entity.Images;
import com.jinzhou.entity.News;

public class NewsDaoImpl extends HibernateDaoSupport implements NewsDao {
	/**
	 * 查询最新新闻
	 */
	public List findNews(int count) {
		Criteria criteria = getSession().createCriteria(News.class);
		criteria.setFirstResult(count - 10);
		criteria.setMaxResults(10);
		return criteria.list();
	}

	/**
	 * 查询总条数
	 */
	public int count() {
		Criteria criteria = getSession().createCriteria(News.class);
		criteria.setProjection(Projections.rowCount());
		return (Integer) criteria.uniqueResult();
	}

	/**
	 * 根据新闻查询图片
	 */
	public Images findImg(int id) {
		String hql = "from Images where id=?";
		return (Images) this.getHibernateTemplate().find(hql, id).get(0);
	}

	/**
	 * 根据id查新闻
	 */
	public News findNewsById(News oneNews) {
		return (News) this.getHibernateTemplate().get(News.class,
				oneNews.getId());
	}

	/**
	 * 根据关键词查新闻
	 */
	public List<News> findNewsByKeyword(String keyword) {
		String hql = "from News where title like ? or content like ?";
		return this.getHibernateTemplate().find(hql,
				new Object[] { "%" + keyword + "%", "%" + keyword + "%" });
	}

	public void updateComment(Comment comment) {
		this.getHibernateTemplate().save(comment);
	}

}
