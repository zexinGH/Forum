package com.helloweenvsfei.forum.struts.interceptor;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.MethodFilterInterceptor;

public class PathInterceptor extends MethodFilterInterceptor {

	@Override
	protected String doIntercept(ActionInvocation invocation) throws Exception {
		
		ActionContext context = invocation.getInvocationContext();
		Map<String, Object> session = context.getSession();
		HttpServletRequest req = ServletActionContext.getRequest();
		
		String realPath = null;
		String basePath = req.getContextPath()+"/";
		String path = req.getRequestURI().substring(basePath.length());
		
        String queryString = req.getQueryString();
        String action = null;
        if (queryString == null) {
        	realPath= path;
        }else{
        	action = queryString.substring(7);
        	realPath = path + "?" + queryString;
        }
       
//		System.out.println("realPath:" + realPath);
//		System.out.println("action:" + action);
		session.put("prePage", realPath);
		session.put("action", action);
		return invocation.invoke();
	}

}
