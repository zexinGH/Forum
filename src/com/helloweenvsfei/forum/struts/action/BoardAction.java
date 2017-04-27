package com.helloweenvsfei.forum.struts.action;


import com.helloweenvsfei.forum.bean.Board;
import com.helloweenvsfei.forum.bean.Category;
import com.helloweenvsfei.forum.bean.Person;
import com.helloweenvsfei.forum.bean.Thread;
import com.helloweenvsfei.forum.pagination.Pagination;
import com.helloweenvsfei.forum.service.ICategoryService;
import com.helloweenvsfei.forum.service.IBoardService;
import com.helloweenvsfei.forum.service.IPersonService;
import com.helloweenvsfei.forum.service.IThreadService;

public class BoardAction extends ForumAction {
	private ICategoryService<Category> categoryService;
	private IBoardService<Board> boardService;
	private IThreadService<Thread> threadService;
	private IPersonService<Person> personService;
	
	
	public ICategoryService<Category> getCategoryService() {
		return categoryService;
	}

	public void setCategoryService(ICategoryService<Category> categoryService) {
		this.categoryService = categoryService;
	}

	public IBoardService<Board> getBoardService() {
		return boardService;
	}

	public void setBoardService(IBoardService<Board> boardService) {
		this.boardService = boardService;
	}

	public IThreadService<Thread> getThreadService() {
		return threadService;
	}

	public void setThreadService(IThreadService<Thread> threadService) {
		this.threadService = threadService;
	}

	public IPersonService<Person> getPersonService() {
		return personService;
	}

	public void setPersonService(IPersonService<Person> personService) {
		this.personService = personService;
	}

	@Override
	public String list() {
		// TODO Auto-generated method stub
		return null;
	}


	
}
