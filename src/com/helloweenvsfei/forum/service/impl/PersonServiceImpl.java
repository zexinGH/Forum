package com.helloweenvsfei.forum.service.impl;

import java.util.List;

import com.helloweenvsfei.forum.service.IPersonService;
import com.helloweenvsfei.forum.struts.util.MD5Util;
import com.helloweenvsfei.forum.bean.Person;

public class PersonServiceImpl<T extends Person> extends ServiceImpl<T> 
		implements IPersonService<T> {

	
	@SuppressWarnings("unchecked")
	@Override
	public T findPersonByAccount(String account) {
		List<T> person = this
				.dao.createQuery(
						"select p from Person p "
								+ " where lower(p.account) = lower(:account) and p.deleted = false")
				.setParameter("account", account.trim()).list();
		if (person.size() > 0)
			return person.get(0);
		return null;
	}

	@SuppressWarnings("unchecked")
	@Override
	public T getPerson(String account, String password) {
		List<T> person = this
				.dao
				.createQuery(
						"select p from Person p "
								+ "where p.account=:account "
								+ "and p.password=:password and p.deleted = false")
				.setParameter("account", account)
				.setParameter("password", MD5Util.calc(password)).list();
		if (person.size() > 0)
			return person.get(0);
		return null;
	}


	@SuppressWarnings("unchecked")
	@Override
	public T findByName(String name) {
		List<T> person = this
				.dao
				.createQuery(
						"select p from Person p "
								+ " where lower(p.name) = lower(:name) and p.deleted = false")
				.setParameter("name", name.trim()).list();
		
		if (person.size() > 0)
			return person.get(0);
		return null;
		
	}
	@SuppressWarnings("unchecked")
	@Override
	public T findPersonByEmail(String email) {
		List<T> person = this
				.getDao()
				.createQuery(
						"select p from Person p "
								+ " where lower(p.email) = lower(:email) and p.deleted = false")
				.setParameter("email", email.trim()).list();
		if (person.size() > 0)
			return person.get(0);
		return null;
	}
	@Override
	public void create(T person) {		
		
		person.setPassword(MD5Util.calc(person.getPassword()));
		this.dao.create(person);
	}


}
