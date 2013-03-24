package com.jinzhou.biz;

import java.util.List;

import com.jinzhou.entity.Comment;
import com.jinzhou.entity.Images;
import com.jinzhou.entity.News;

public interface NewsBiz {

	List list();

	Images findImg(int id);

	News detail(News oneNews);

	List<News> search(String keyword);

	void comment(Comment comment);

}
