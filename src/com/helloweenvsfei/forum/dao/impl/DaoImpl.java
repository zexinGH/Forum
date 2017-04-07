package com.helloweenvsfei.forum.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.transaction.annotation.Transactional;

import com.helloweenvsfei.forum.dao.IDao;
@Transactional
public class DaoImpl<T> implements IDao<T> {
	private HibernateTemplate hibernateTemplate;
	
	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}
	
	public T find(Class<T> clazz, int id) {
		return (T) hibernateTemplate.get(clazz, id);
	}

	@Override
	public void create(T baseBean) {
		hibernateTemplate.persist(baseBean);
	}

	@Override
	public void save(T baseBean) {
		hibernateTemplate.save(baseBean);
	}
	@Override
	public void update(T baseBean) {
		hibernateTemplate.update(baseBean);
	}
	@Override
	public void delete(T baseBean) {
		hibernateTemplate.delete(baseBean);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<T> list(String hql) {
		
		return (List<T>) hibernateTemplate.find(hql);
	}

	@Override
	public int getTotalCount(String hql, Object... params) {
		Query query = createQuery(hql);
		for (int i = 0; params != null && i < params.length; i++)
			query.setParameter(i + 1, params[i]);
		Object obj = createQuery(hql).uniqueResult();
		return ((Long) obj).intValue();
	}

	@SuppressWarnings("unchecked")
	public List<T> list(String hql, int firstResult, int maxResults,
			Object... params) {
		Query query = createQuery(hql);
		for (int i = 0; params != null && i < params.length; i++)
			query.setParameter(i + 1, params[i]);
		List<T> list = createQuery(hql).setFirstResult(firstResult)
				.setMaxResults(maxResults).list();
		return list;
	}
	@Override
	public Query createQuery(String hql) {
		return hibernateTemplate.getSessionFactory()
				.getCurrentSession().createQuery(hql);
	}



}
