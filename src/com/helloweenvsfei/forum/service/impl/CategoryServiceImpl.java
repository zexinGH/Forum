package com.helloweenvsfei.forum.service.impl;


import java.util.List;

import com.helloweenvsfei.forum.bean.Category;
import com.helloweenvsfei.forum.service.ICategoryService;

public class CategoryServiceImpl<T extends Category> extends ServiceImpl<T>
		implements ICategoryService<T> {

	@Override
	public void create(T category) {
		if(dao.createQuery(
		"from Category c where c.name = :name and c.deleted = false ")
		.setParameter("name", category.getName()).list().size()>0){
			throw new RuntimeException("类别“"+category.getName()+"”已经存在。");
		}
		dao.create(category);

	}
	@SuppressWarnings("unchecked")
	public T findByName(String name) {
		List<T> category = this
				.dao.createQuery(
						"select c from Category c "
								+ " where lower(c.name) = lower(:name) and c.deleted = false")
				.setParameter("name", name.trim()).list();
		
		if (category.size() > 0)
			return category.get(0);
		return null;
		
	}
}
