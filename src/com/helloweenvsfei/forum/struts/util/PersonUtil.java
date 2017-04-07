package com.helloweenvsfei.forum.struts.util;

import com.helloweenvsfei.forum.bean.Person;
import com.opensymphony.xwork2.ActionInvocation;

public class PersonUtil {

	public static final String PERSON_INFO = "personInfo";
	public static ActionInvocation invocation;
	public static PersonInfo getPersonInfo() {

		//return (PersonInfo) request.getSession(true).getAttribute(PERSON_INFO);
		return (PersonInfo) invocation.getInvocationContext().
				getSession().get(PERSON_INFO);
	}

	public static void setPersonInfo(PersonInfo personInfo) {

		//request.getSession(true).setAttribute(PERSON_INFO, personInfo);
		invocation.getInvocationContext().getSession().
		put(PERSON_INFO, personInfo);
	}

	public static void setPersonInfo(Person person) {

		PersonInfo personInfo = new PersonInfo();

		personInfo.setId(person.getId());
		personInfo.setAccount(person.getAccount());

		setPersonInfo(personInfo);
	}
}
