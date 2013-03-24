package com.jinzhou.dao;

import java.util.List;

import com.jinzhou.entity.Comment;
import com.jinzhou.entity.Images;
import com.jinzhou.entity.News;

public interface NewsDao{

	List findNews(int count);
	int count();
	Images findImg(int id);
	News findNewsById(News oneNews);
	List<News> findNewsByKeyword(String keyword);
	void updateComment(Comment comment);
}
