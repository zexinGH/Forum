package com.helloweenvsfei.forum.struts.action;

import com.opensymphony.xwork2.ActionSupport;

public abstract class ForumAction extends ActionSupport{
	
	protected String title;
	protected String message;

	public abstract String list();
	
	public void setTitle(String title) {
		this.title = title;
	}
	public String getTitle() {
		return title;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}
	

}
