package com.jinzhou.entity;

import java.sql.Date;

public class Comment {
	private int id;
	private int uid;
	private int newsid;
	private String content;
	private int rnum;
	private Date senddate;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getUid() {
		return uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

	public int getNewsid() {
		return newsid;
	}

	public void setNewsid(int newsid) {
		this.newsid = newsid;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public int getRnum() {
		return rnum;
	}

	public void setRnum(int rnum) {
		this.rnum = rnum;
	}

	public Date getSenddate() {
		return senddate;
	}

	public void setSenddate(Date senddate) {
		this.senddate = senddate;
	}

	@Override
	public String toString() {
		return "Comment [content=" + content + ", id=" + id + ", newsid="
				+ newsid + ", rnum=" + rnum + ", senddate=" + senddate
				+ ", uid=" + uid + "]";
	}

}
