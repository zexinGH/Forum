package com.helloweenvsfei.forum.struts.action;

import java.util.Date;

import javax.annotation.Resource;
import com.helloweenvsfei.forum.bean.Person;
import com.helloweenvsfei.forum.service.IPersonService;

public class PersonAction extends ForumAction{

	public static final String REGISTER = "register";
	public static final String LOGOUT = "logout";
	@Resource(name="personService")
	private IPersonService<Person> personService;	
	private Person person;	
	private String confirmPassword;
	
	public String initRegister(){
		setTitle("用户注册");
		return REGISTER;
	}
	public String register(){		
		person.setPortrait("userportrait/"+"noavatar_middle.gif");
		person.setIpCreated(request.getRemoteAddr());
		person.setManager(false);
		person.setDateCreated(new Date());
		
		if (personService.findPersonByAccount(person.getAccount()) != null) {
			request.setAttribute("accountMessage","用户名" + person.getAccount() + "已经被注册。");
			return REGISTER;
		}
		if (personService.findPersonByEmail(person.getEmail()) != null) {
			request.setAttribute("emailMessage","该邮箱已经被注册。");
			return REGISTER;
		}
		try {
			personService.create(person);
			session.put("person", person);
			request.setAttribute("message", "注册成功");			
			return SUCCESS;
		} catch (Exception e) {
			request.setAttribute("message", "注册失败："+e.getMessage());
		}
		return "error";
	}
	
	
	public String initLogin(){
		setTitle("用户登录");
		return LOGIN;
	}
	
	public String login(){	
		Person loginPerson = personService.getPerson(
				person.getAccount().trim(),person.getPassword().trim());	
		if(loginPerson == null){
			request.setAttribute("loginMessage", "用户名或密码错误");
			return LOGIN;
		}else{
			try {
				loginPerson.setIpLastActived(request.getRemoteAddr());
				loginPerson.setDateLastActived(new Date());
				personService.update(loginPerson);
				request.setAttribute("person", loginPerson);
				session.put("person", loginPerson);
				return "category";
			} catch (Exception e) {
				request.setAttribute("message",e.getMessage());
				return "error";
			}			
		}
	}
	
	public String logout(){
		session.put("person", null);		
		return LOGIN;
	}
	

	@Override
	public String list() {
		Person person = (Person) request.getAttribute("person");
		if(person == null){
			request.setAttribute("loginMessage", "请先登录！");
			return LOGIN;
		}
		setTitle("用户中心");
		Person viewPerson = personService.find(Person.class,person.getId());
		if(viewPerson == null){
			request.setAttribute("viewmessage","发生了错误！用户不存在！");
			return "error";
		}
		request.setAttribute("person", viewPerson);
		request.setAttribute("isManager", viewPerson.isManager());
		return "list";
		
	}

	public String info(){
		System.out.println(person.getId());
		Person infoPerson = personService.find(Person.class, person.getId());
		if(infoPerson == null){
			request.setAttribute("viewmessage","发生了错误！用户不存在！");
			return "error";
		}
		infoPerson.setName(person.getName());
		infoPerson.setSex(person.getSex());
		infoPerson.setBirthday(person.getBirthday());
		infoPerson.setPhone(person.getPhone());
		infoPerson.setSignature(person.getSignature());
		personService.update(infoPerson);
		request.setAttribute("person", infoPerson);
		return "list";
	}
	

	public String getConfirmPassword() {
		return confirmPassword;
	}

	public void setConfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
	}

	public Person getPerson() {
		return person;
	}

	public void setPerson(Person person) {
		this.person = person;
	}

	public IPersonService<Person> getPersonService() {
		return personService;
	}
	public void setPersonService(IPersonService<Person> personService) {
		this.personService = personService;
	}
	
}
