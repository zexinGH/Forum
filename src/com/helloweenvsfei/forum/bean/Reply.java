package com.helloweenvsfei.forum.bean;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table
public class Reply extends BaseBean {
	@ManyToOne
	@JoinColumn(name = "thread_id")
	private Thread thread;				//回复的帖子

	@Basic(fetch = FetchType.LAZY)		//延迟加载
	@Column(columnDefinition = "longtext")
	private String content;				//回复内容
	
	@OneToMany(cascade=CascadeType.ALL, fetch = FetchType.EAGER)
	@JoinColumn(name="peply_id")
	private Set<Reply> childReplies = new HashSet<Reply>();
	
	@ManyToOne
	@JoinColumn(name = "author_id")
	private Person author;				//回复作者

	private int floor;					//第几楼

	public Thread getThread() {
		return thread;
	}

	public void setThread(Thread thread) {
		this.thread = thread;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Person getAuthor() {
		return author;
	}

	public void setAuthor(Person author) {
		this.author = author;
	}

	public int getFloor() {
		return floor;
	}

	public void setFloor(int floor) {
		this.floor = floor;
	}

}
