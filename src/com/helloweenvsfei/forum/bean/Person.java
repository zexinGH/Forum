package com.helloweenvsfei.forum.bean;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table
public class Person extends BaseBean {
	
	private String account;					//账号
	private String password;				//密码
	private Date birthday;					//生日
	private String sex;						//性别
	private String name;					//姓名					
	private String email;					//邮箱
	private String phone;					//手机
	private String signature;				//签名
	
	private String portrait;
	private boolean manager;
	private String ipCreated;				//注册时的IP地址
	private Date dateLastActived;			//最后一次登录的时间
	
	private String ipLastActived;			//最后一次登录的IP
	@ManyToMany(mappedBy="administrators")	//多对多属性
	private Set<Board> boardAdministrated=new HashSet<Board>();
	
	@OneToMany(mappedBy="author")
	private Set<Thread> threads = new HashSet<Thread>();

	public String getAccount() {
		return account;
	}

	public void setAccount(String account) {
		this.account = account;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getSignature() {
		return signature;
	}

	public void setSignature(String signature) {
		this.signature = signature;
	}

	public String getPortrait() {
		return portrait;
	}

	public void setPortrait(String portrait) {
		this.portrait = portrait;
	}
	
	public Set<Board> getBoardAdministrated() {
		return boardAdministrated;
	}

	public void setBoardAdministrated(Set<Board> boardAdministrated) {
		this.boardAdministrated = boardAdministrated;
	}
	public boolean isManager() {
		return manager;
	}

	public void setManager(boolean manager) {
		this.manager = manager;
	}

	public Date getBirthday() {
		return birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	public String getIpCreated() {
		return ipCreated;
	}

	public void setIpCreated(String ipCreated) {
		this.ipCreated = ipCreated;
	}

	public Date getDateLastActived() {
		return dateLastActived;
	}

	public void setDateLastActived(Date dateLastActived) {
		this.dateLastActived = dateLastActived;
	}

	public String getIpLastActived() {
		return ipLastActived;
	}

	public void setIpLastActived(String ipLastActived) {
		this.ipLastActived = ipLastActived;
	}
	
}
