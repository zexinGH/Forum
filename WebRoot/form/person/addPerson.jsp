<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="/struts-tags" prefix="s"%>

<jsp:include flush="true" page="../header.jsp"></jsp:include>
<div id="main">
	<div class="container-fluid">
		<div class="position">
			<span class="position-body"> 
				<a href="${pageContext.request.contextPath }/category_list.action">
					<span class="glyphicon glyphicon-home"></span> 首页
				</a> 
				<span class="glyphicon glyphicon-chevron-right"></span> 
				<a href="${pageContext.request.contextPath }/person_initRegister.action"
					class="position-last">用户注册</a>
			</span>
		</div>
	</div>
	<div class="container">
		<table class="table table-striped">
			<tr class="table-title">
				<td>
					<div class="title">
						<span>注册</span> 
						<span>|</span> 
						<span class="text-muted">
						已经有账号? 
						<a href="${pageContext.request.contextPath }/person_initLogin.action">
						现在登录</a>
						</span>
					</div>
				</td>
			</tr>
			<tr class="table-content">
				<td>
					<div class="content">
						<s:form id="addPerson" class="form-horizontal" role="form"
							action="person_register" method="post">
							<s:hidden name="action" value="register"/>
							<div class="form-group">
								<label for="inputUser"
									class="col-sm-offset-2 col-sm-2 control-label">用户名</label>
								<div class="col-sm-4">
									<input type="text" class="form-control" name="person.account"
										placeholder="用户名长度必须为4~16个字符">
								</div>
								<div id="mistakeInfo" class="col-sm-4">
									<span id="UserInfo">${accountMessage }</span>
								</div>
							</div>
							<div class="form-group">
								<label for="inputPassword"
									class="col-sm-offset-2 col-sm-2 control-label">密码</label>
								<div class="col-sm-4">
									<input type="password" class="form-control"
										name="person.password" placeholder="密码长度必须为6~16个字符">
								</div>
								<div id="mistakeInfo" class="col-sm-4">
									<span id="PasswordInfo"></span>
								</div>
							</div>
							<div class="form-group">
								<label for="confirmPassword"
									class="col-sm-offset-2 col-sm-2 control-label">确认密码</label>
								<div class="col-sm-4">
									<input type="password" class="form-control"
										name="confirmPassword" id="confirmPassword">
								</div>
								<div id="mistakeInfo" class="col-sm-4">
									<span id="confirmInfo"></span>
								</div>
							</div>
							<div class="form-group">
								<label for="Email"
									class="col-sm-offset-2 col-sm-2 control-label">电子邮箱</label>
								<div class="col-sm-4">
									<input type="email" class="form-control" name="person.email"
										id="Email">
								</div>
								<div id="mistakeInfo" class="col-sm-4">
									<span id="emailInfo">${emailMessage }</span>
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