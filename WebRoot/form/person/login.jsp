<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<jsp:include flush="true" page="../header.jsp"></jsp:include>
<div id="main">
	<div class="container-fluid">
		<div class="position">
			<span class="position-body"> 
				<a href="${pageContext.request.contextPath }/category_list.action">
					<span class="glyphicon glyphicon-home"></span> 首页</a> 
				<span class="glyphicon glyphicon-chevron-right"></span> 
				<a href="${pageContext.request.contextPath }/person_initLogin.action"
					class="position-last">用户登录</a>
				</span>
		</div>
	</div>
	<div class="container">
		<table class="table table-striped">
			<tr class="table-title">
				<td>
					<div class="title">
						<span>登录</span> 
						<span>|</span> 
						<span class="text-muted">
							没有账号? 
							<a href="${pageContext.request.contextPath }/person_initRegister.action">
							马上注册</a>
						</span>
					</div>
				</td>
			</tr>
			<tr class="table-content">
				<td>
					<div class="content">
						<s:form class="form-horizontal" action="person_login">
							<div class="form-group">
								<label for="account"
									class="col-sm-offset-2 col-sm-2 control-label">用户名</label>
								<div class="col-sm-4">
									<input type="text" class="form-control" name="person.account">
								</div>
								<div id="mistakeInfo" class="col-sm-4">
									<span id="accountInfo">${loginMessage }</span>
								</div>
							</div>
							<div class="form-group">
								<label for="password"
									class="col-sm-offset-2 col-sm-2 control-label">密码</label>
								<div class="col-sm-4">
									<input type="password" class="form-control"
										name="person.password">
								</div>
								<div id="mistakeInfo" class="col-sm-4">
									<span id="PasswordInfo"></span>
								</div>
							</div>

							<div class="form-group">
								<div class="col-sm-offset-4 col-sm-8">
									<button type="submit" class="btn btn-info">提交</button>
								</div>
							</div>
						</s:form>
					</div>

				</td>
			</tr>
		</table>
	</div>
</div>
<jsp:include flush="true" page="../footer.jsp"></jsp:include>