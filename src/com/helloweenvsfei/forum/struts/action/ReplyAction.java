package com.helloweenvsfei.forum.struts.action;

import java.util.Date;




import com.helloweenvsfei.forum.bean.BaseBean;
import com.helloweenvsfei.forum.bean.Person;
import com.helloweenvsfei.forum.bean.Reply;
import com.helloweenvsfei.forum.bean.Thread;
import com.helloweenvsfei.forum.service.IPersonService;
import com.helloweenvsfei.forum.service.IReplyService;
import com.helloweenvsfei.forum.service.IThreadService;
import com.helloweenvsfei.forum.struts.util.PersonInfo;
import com.helloweenvsfei.forum.struts.util.PersonUtil;

public class ReplyAction extends ForumAction {
	private IPersonService<Person> personService;
	private IReplyService<Reply> replyService;
	private IThreadService<Thread> threadService;
	
	
	public IPersonService<Person> getPersonService() {
		return personService;
	}
	public void setPersonService(IPersonService<Person> personService) {
		this.personService = personService;
	}
	public IReplyService<Reply> getReplyService() {
		return replyService;
	}
	public void setReplyService(IReplyService<Reply> replyService) {
		this.replyService = replyService;
	}
	public IThreadService<Thread> getThreadService() {
		return threadService;
	}
	public void setThreadService(IThreadService<Thread> threadService) {
		this.threadService = threadService;
	}

	public String list(){
		// TODO Auto-generated method stub
		return null;
	}
}
