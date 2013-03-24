package com.jinzhou.biz.impl;

import java.util.List;

import com.jinzhou.biz.NewsBiz;
import com.jinzhou.dao.NewsDao;
import com.jinzhou.entity.Comment;
import com.jinzhou.entity.Images;
import com.jinzhou.entity.News;

public class NewsBizImpl implements NewsBiz {
	NewsDao newsDao;

	public List list() {
		return newsDao.findNews(newsDao.count());
	}

	public void setNewsDao(NewsDao newsDao) {
		this.newsDao = newsDao;
	}

	public Images findImg(int id) {

		return newsDao.findImg(id);
	}

	public News detail(News oneNews) {
		return newsDao.findNewsById(oneNews);
	}

	public List<News> search(String keyword) {
		return newsDao.findNewsByKeyword(keyword);
	}

	public void comment(Comment comment) {
		 newsDao.updateComment(comment);
	}
}
