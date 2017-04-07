package com.helloweenvsfei.forum.bean;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table
public class Board extends BaseBean {
	@ManyToOne
	@JoinColumn(name="category_id")
	private Category category;	 
	private String name;
	private String picture;
	private String description;
	private int threadCount;
	private int replyCount;
	
	@ManyToOne
	@JoinColumn(name="last_thread_id")
	private Thread lastThread;
	
	@ManyToOne
	@JoinColumn(name="last_reply_id")
	private Reply lastReply;
	
	@ManyToMany(cascade=CascadeType.ALL)
	@JoinTable(name="board_administrator",joinColumns={
			@JoinColumn(name="board_id")},inverseJoinColumns={
			@JoinColumn(name="person_id")})
	private Set<Person> administrators=new HashSet<Person>();	//版主

	public Category getCategory() {
		return category;
	}
	
	public String getPicture() {
		return picture;
	}

	public void setPicture(String picture) {
		this.picture = picture;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public int getThreadCount() {
		return threadCount;
	}

	public void setThreadCount(int threadCount) {
		this.threadCount = threadCount;
	}

	public int getReplyCount() {
		return replyCount;
	}

	public void setReplyCount(int replyCount) {
		this.replyCount = replyCount;
	}

	public Thread getLastThread() {
		return lastThread;
	}

	public void setLastThread(Thread lastThread) {
		this.lastThread = lastThread;
	}

	public Reply getLastReply() {
		return lastReply;
	}

	public void setLastReply(Reply lastReply) {
		this.lastReply = lastReply;
	}

	public Set<Person> getAdministrators() {
		return administrators;
	}

	public void setAdministrators(Set<Person> administrators) {
		this.administrators = administrators;
	}
	
	
}
