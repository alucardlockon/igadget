package com.jinzhou.web.action;

import java.util.HashMap;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;
import org.hibernate.Session;

import com.opensymphony.xwork2.ActionSupport;

public class BaseAction extends ActionSupport implements SessionAware {
	public Map<String, Object> session = new HashMap<String, Object>();

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

}
