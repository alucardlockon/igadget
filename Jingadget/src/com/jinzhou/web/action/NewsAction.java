package com.jinzhou.web.action;

import java.sql.Date;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

import com.jinzhou.biz.CommentBiz;
import com.jinzhou.biz.NewsBiz;
import com.jinzhou.entity.Comment;
import com.jinzhou.entity.News;
import com.jinzhou.entity.User;

public class NewsAction extends BaseAction {
	public NewsBiz newsBiz;
	public CommentBiz commentBiz;
	// 新闻列表
	public List<News> news;
	// 最多评论
	public List<News> newscom;
	// 搜索结果
	public List<News> serachs;
	// 单条新闻
	public News oneNews;
	// 评论
	public List<Comment> comments;
	// 用户评论
	public Comment comment;
	// 搜索关键字
	public String keyword;

	/**
	 * 主页面
	 */
	public String execute() {
		news = newsBiz.list();
		Collections.reverse(news);
		for (News onenews : news) {
			onenews.setImages(newsBiz.findImg(onenews.getId()));
			onenews.setComcount(commentBiz.count(onenews));
		}
		newscom = new ArrayList<News>(news);
		Collections.sort(newscom, new Comparator<News>() {
			public int compare(News o1, News o2) {
				return o2.getComcount() - o1.getComcount();
			}
		});
		return "list";
	}

	public String detail() {
		oneNews = newsBiz.detail(oneNews);
		oneNews.setImages(newsBiz.findImg(oneNews.getId()));
		oneNews.setComcount(commentBiz.count(oneNews));
		comments = commentBiz.list(oneNews);
		return "detail";
	}

	public String search() {
		// 搜索结果
		serachs = newsBiz.search(keyword);
		Collections.reverse(serachs);
		for (News onenews : serachs) {
			onenews.setImages(newsBiz.findImg(onenews.getId()));
			onenews.setComcount(commentBiz.count(onenews));
		}
		// 右边栏
		news = newsBiz.list();
		Collections.reverse(news);
		for (News onenews : news) {
			onenews.setImages(newsBiz.findImg(onenews.getId()));
			onenews.setComcount(commentBiz.count(onenews));
		}
		return "search";
	}

	public String comment() {
		User sessionUser = (User) session.get("user");
		if (sessionUser != null) {
			comment.setSenddate(new Date(System.currentTimeMillis()));
			comment.setUid(sessionUser.getId());
			newsBiz.comment(comment);
			return "comment";
		} else {
			return "error";
		}
	}

	public void setNewsBiz(NewsBiz newsBiz) {
		this.newsBiz = newsBiz;
	}

	public List<News> getNews() {
		return news;
	}

	public void setNews(List<News> news) {
		this.news = news;
	}

	public News getOneNews() {
		return oneNews;
	}

	public void setOneNews(News oneNews) {
		this.oneNews = oneNews;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public List<News> getSerachs() {
		return serachs;
	}

	public void setSerachs(List<News> serachs) {
		this.serachs = serachs;
	}

	public List<Comment> getComments() {
		return comments;
	}

	public void setComments(List<Comment> comments) {
		this.comments = comments;
	}

	public void setCommentBiz(CommentBiz commentBiz) {
		this.commentBiz = commentBiz;
	}

	public List<News> getNewscom() {
		return newscom;
	}

	public void setNewscom(List<News> newscom) {
		this.newscom = newscom;
	}

	public Comment getComment() {
		return comment;
	}

	public void setComment(Comment comment) {
		this.comment = comment;
	}

}
