package com.helloweenvsfei.forum.struts.interceptor;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.MethodFilterInterceptor;

public class LoginInterceptor extends MethodFilterInterceptor {

	@Override
	protected String doIntercept(ActionInvocation invocation) throws Exception {
		ActionContext context = invocation.getInvocationContext();
		HttpServletRequest request = ServletActionContext.getRequest();
		Map<String, Object> session = context.getSession();
		Object person = session.get("person");

		if (person == null) {
			request.setAttribute("loginMessage", "请先登录！");
			return "login";
		}

		return invocation.invoke();
	}

}
