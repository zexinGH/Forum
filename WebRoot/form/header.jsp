<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title><s:property value="title" /></title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/common.css" />
<link rel="stylesheet" href="css/bootstrapValidator.css" />
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/formValidator.js"></script>
<script src="js/bootstrapValidator.js"></script>
</head>

<body>
	<div id="header">
		<nav class="navbar navbar-default navbar-fixed-top navbar-inverse">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#"> <img src="img/logo.png">
				</a>
				<p class="navbar-text">
					<a href="#">欢迎光临！</a>
				</p>
			</div>

			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<li><a href="#">论坛首页</a></li>
					<li><a href="#">用户反馈</a></li>

				</ul>

				<ul class="nav navbar-nav navbar-right">
					<form class="navbar-form navbar-left">
						<div class="form-group">
							<input type="text" class="form-control" placeholder="输入搜索的内容">
						</div>
						<button type="submit" class="btn btn-info">
							<span class="glyphicon glyphicon-search"></span>
						</button>
					</form>
					<s:if test="%{#session.person != null}">
						<li class="dropdown"><a class="dropdown-toggle"
							id="dropdownMenu1" data-toggle="dropdown">${person.account}<span
								class="caret"></span></a>
							<ul class="dropdown-menu" role="menu"
								aria-labelledby="dropdownMenu1">
								<li role="presentation"><a target="_parent" role="menuitem"
									tabindex="-1" class="text-center" href="#">帖子信息</a></li>
								<li role="presentation"><a target="_parent" role="menuitem"
									tabindex="-1" class="text-center" href="#">个人收藏</a></li>
								<li role="presentation"><a target="_parent" role="menuitem"
									tabindex="-1" class="text-center" 
									href="${pageContext.request.contextPath }/person_list.action?person.id=${person.id}">
									账号中心</a></li>
								<li role="presentation"><a target="_parent" role="menuitem"
									tabindex="-1" class="text-center" 
									href="${pageContext.request.contextPath }/person_logout.action">退出</a></li>
							</ul></li>                                                                                                                  -->
					</s:if>
					<s:else>
						<li>
							<p class="navbar-text">您尚未登录</p>
						</li>
						<li class="dropdown"><a class="dropdown-toggle"
							id="dropdownMenu1" data-toggle="dropdown">请选择<span
								class="caret"></span></a>
							<ul class="dropdown-menu" role="menu"
								aria-labelledby="dropdownMenu1">
								<li role="presentation"><a target="_parent" role="menuitem"
									href="${pageContext.request.contextPath }/person_initLogin.action">
										<img src="img/login.png" class="img-thumbnail" />
										&nbsp;&nbsp;&nbsp;&nbsp; 登录
								</a></li>
								<li role="presentation" class="divider"></li>
								<li role="presentation"><a target="_parent" role="menuitem"
									href="${pageContext.request.contextPath }/person_initRegister.action">
										<img src="img/regist.png" class="img-thumbnail" />
										&nbsp;&nbsp;&nbsp;&nbsp; 注册
								</a></li>
							</ul></li>
					</s:else>
				</ul>
			</div>

		</div>

		</nav>
	</div>