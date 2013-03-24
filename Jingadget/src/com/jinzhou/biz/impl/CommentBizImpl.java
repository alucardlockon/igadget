package com.jinzhou.biz.impl;

import java.util.List;

import com.jinzhou.biz.CommentBiz;
import com.jinzhou.dao.CommentDao;
import com.jinzhou.entity.Comment;
import com.jinzhou.entity.News;

public class CommentBizImpl implements CommentBiz {
	CommentDao commentDao;

	public List<Comment> list(News oneNews) {
		return commentDao.findCommentByNewsId(oneNews);
	}

	public void setCommentDao(CommentDao commentDao) {
		this.commentDao = commentDao;
	}

	public int count(News oneNews) {
		return commentDao.findCommentCount(oneNews);
	}

}
