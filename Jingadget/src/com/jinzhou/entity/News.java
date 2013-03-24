package com.jinzhou.entity;

public class News {
	private int id;
	private String title;
	private int image;
	private String minicontent;
	private String content;
	private String link;
	private Images images;
	private int comcount;
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public int getImage() {
		return image;
	}

	public void setImage(int image) {
		this.image = image;
	}

	public String getMinicontent() {
		return minicontent;
	}

	public void setMinicontent(String minicontent) {
		this.minicontent = minicontent;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getLink() {
		return link;
	}

	public void setLink(String link) {
		this.link = link;
	}

	public Images getImages() {
		return images;
	}

	public void setImages(Images images) {
		this.images = images;
	}
	
	public int getComcount() {
		return comcount;
	}

	public void setComcount(int comcount) {
		this.comcount = comcount;
	}

	@Override
	public String toString() {
		return "News [content=" + content + ", id=" + id + ", image=" + image
				+ ", images=" + images.getUri() + ", link=" + link + ", minicontent="
				+ minicontent + ", title=" + title + "]";
	}

}
