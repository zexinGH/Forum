package com.helloweenvsfei.forum.service;

import com.helloweenvsfei.forum.bean.Person;

public interface IPersonService<T extends Person> extends IService<T> {
	/**根据账号查找用户	 */
	public T findPersonByAccount(String account);
	/**根据账号和密码查找用户	 */
	public T getPerson(String account,String password);
	/**根据邮箱查找用户        */
	public T findPersonByEmail(String email);
}
