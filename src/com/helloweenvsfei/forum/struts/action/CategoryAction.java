package com.helloweenvsfei.forum.struts.action;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import com.helloweenvsfei.forum.bean.Category;
import com.helloweenvsfei.forum.service.ICategoryService;


public class CategoryAction extends ForumAction {
	
	@Resource(name="categoryService")
	private ICategoryService<Category> categoryService;
	private String categoryName;
	private List<Category> categoryList;
	
	public String list() {
		setTitle("轻量级 Java EE 论坛程序");
		categoryList = categoryService.list(
				" from Category where deleted = false ");
		return "list";
	}
	public String initAdd(){
		setTitle("添加分类");
		return "add";
	}
	public String add(){
		setTitle("添加分类");
		Category category = new Category();
		category.setName(categoryName);
		category.setDateCreated(new Date());
		if(categoryService.findByName(category.getName()) != null){
			request.setAttribute("message", "该分类已经存在");
			return this.initAdd();
 		}
		try {
			categoryService.create(category);
			request.setAttribute("category", category);
			request.setAttribute("message", "添加成功");
		} catch (Exception e) {
			request.setAttribute("message",e.getMessage());
			return this.initAdd();
		}
		return SUCCESS;		
	}

	
	public List<Category> getCategoryList() {
		return categoryList;
	}
	public void setCategoryList(List<Category> categoryList) {
		this.categoryList = categoryList;
	}
	
	public String getCategoryName() {
		return categoryName;
	}
	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}
	
	public ICategoryService<Category> getCategoryService() {
		return categoryService;
	}

	public void setCategoryService(ICategoryService<Category> categoryService) {
		this.categoryService = categoryService;
	}

}
