package com.jinzhou.biz;

import java.util.List;

import com.jinzhou.entity.Comment;
import com.jinzhou.entity.News;

public interface CommentBiz {

	List<Comment> list(News oneNews);

	int count(News oneNews);

}
