package com.helloweenvsfei.forum.struts.action;

import java.util.List;



import javax.annotation.Resource;

import com.helloweenvsfei.forum.bean.Category;
import com.helloweenvsfei.forum.service.ICategoryService;


public class CategoryAction extends ForumAction {
	
	@Resource(name="categoryService")
	private ICategoryService<Category> categoryService;
	private Category category;
	private List<Category> categoryList;
	
	public String list() {
		setTitle("轻量级 Java EE 论坛程序");
		categoryList = categoryService.list(
				" from Category where deleted = false ");
		return "list";
	}
	public String add(){
		setTitle("添加分类");
		return null;		
	}
	
	
	public List<Category> getCategoryList() {
		return categoryList;
	}


	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public ICategoryService<Category> getCategoryService() {
		return categoryService;
	}

	public void setCategoryService(ICategoryService<Category> categoryService) {
		this.categoryService = categoryService;
	}

}
