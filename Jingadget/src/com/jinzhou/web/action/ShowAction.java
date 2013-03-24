package com.jinzhou.web.action;


/**
 * 主要负责页面显示
 */
public class ShowAction extends BaseAction{
	public String list(){
		return "list";
	}
	public String rightlist(){
		return "rightlist";
	}
	public String detail(){
		return "detail";
	}
	public String serach(){
		return "serach";
	}
}
