package com.jinzhou.dao;

import java.util.List;

import com.jinzhou.entity.Comment;
import com.jinzhou.entity.News;

public interface CommentDao {

	List<Comment> findCommentByNewsId(News oneNews);

	int findCommentCount(News oneNews);

}
