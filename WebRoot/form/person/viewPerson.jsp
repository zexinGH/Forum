<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:include flush="true" page="../header.jsp"></jsp:include>
<link rel="stylesheet" href="css/viewPerson.css">
<link rel="stylesheet" href="css/cropper.min.css">
<link rel="stylesheet" href="css/sitelogo.css">

<div id="main">
	<div class="container-fluid">
		<div class="position">
			<span class="position-body"> <a href=""><span
					class="glyphicon glyphicon-home"></span> 首页</a> <span
				class="glyphicon glyphicon-chevron-right"></span> 
				<a href="${pageContext.request.contextPath }/person_list.action?person.id=${person.id}"
				class="position-last">账号中心</a>
			</span>

		</div>
	</div>
	<div class="container">
		<div class="user-navbar">
			<div class="sidebar leftSidebar">
				<div id="crop-avatar">
					<div class="avatar-view">
						<img src="${person.portrait }"
						 class="img-circle" data-toggle="tooltip" title="修改头像" />
					</div>
				</div>
				<div class="username-navbar text-center">
					<span>${person.account }</span>
				</div>
				<ul id="myTab" class="nav sidebar nav-pills nav-stacked"
					role="tablist">
					<li class="active text-center"><a href="#accountInfo"
						data-toggle="tab"> <span class="glyphicon glyphicon-user"></span>账号信息
					</a></li>
					<li class="text-center"><a href="#personalInfo"
						data-toggle="tab"> <span class="glyphicon glyphicon-list"></span>个人信息
					</a></li>
					<s:if test="#request.isManager == 1">
					<li class="text-center"><a href="#privilege" data-toggle="tab">
							<span class="glyphicon glyphicon-king"></span>超管特权
					</a></li>
					</s:if>
				</ul>
			</div>
			<div id="myTabContent" class="tab-content">
				<div class="tab-pane fade in active" id="accountInfo">
					<div class="infoTitle">
						<h3>账号信息</h3>
					</div>
					<div class="account-info-list">
						<div class="account-block">
							<div class="account-list-title">
								<ul class="media-list">
									<li class="media">
										<div class="media-left">
											<img class="media-object" src="img/user-icon.png"
												alt="...">
										</div>
										<div class="media-body">
											<h4 class="media-heading">用户名</h4>
											<span class="text-muted small"> 用于帐号登录，注册的帐号不能修改用户名。 </span>
										</div>
									</li>
								</ul>
							</div>
							<div class="account-list-info">
								<span class="">${person.account }</span>
							</div>
						</div>
						<div class="account-block">
							<div class="account-list-title">
								<ul class="media-list">
									<li class="media">
										<div class="media-left">
											<img class="media-object" src="img/email-icon.png"
												alt="...">
										</div>
										<div class="media-body">
											<h4 class="media-heading">用户邮箱</h4>
											<span class="text-muted small"> 用户邮箱用于找回密码或其它安全验证等 </span>
										</div>
									</li>
								</ul>
							</div>
							<div class="account-list-info">
								<div id="emailVlaue" class="email-info">
									<span>${person.email }</span>
								</div>
								<div class="is-edit email">
									<a id="editEmail"><span class="glyphicon glyphicon-pencil"></span></a>
								</div>
								<div id="emailForm" class="edit-box email">
									<form class="form-horizontal" method="post" action="">
										<div class="form-group">
											<div class="col-sm-10">
												<input type="email" class="form-control" name="email"
													id="inputNewEmail" placeholder="请输入新邮箱">
											</div>
										</div>
										<div class="form-group">
											<div class="col-sm-10">
												<input type="password" class="form-control" name="password"
													id="inputPassword" placeholder="请输入密码">
											</div>
										</div>

										<div class="form-group">
											<div class="col-sm-2">
												<a id="backEmail" class="btn btn-default">取消</a>
											</div>
											<div class="col-sm-offset-1 col-sm-9">
												<button id="saveNewEmail" type="submit" class="btn btn-info">保存</button>
											</div>
										</div>
									</form>
								</div>
							</div>


						</div>
						<div class="account-block">
							<div class="account-list-title">
								<ul class="media-list">
									<li class="media">
										<div class="media-left">
											<img class="media-object" src="img/lock-icon.png"
												alt="...">
										</div>
										<div class="media-body">
											<h4 class="media-heading">密码安全</h4>
											<span class="text-muted small">
												用于保护帐号信息和登录安全，建议密码为8~16位数字或字母 </span>
										</div>
									</li>
								</ul>
							</div>
							<div class="account-list-info">
								<div id="passwordValue" class="password-info">
									<span>******</span>
								</div>
								<div class="is-edit password">
									<a id="editPassword"><span
										class="glyphicon glyphicon-pencil"></span></a>
								</div>
								<div id="passwordForm" class="edit-box password">
									<form class="form-horizontal">
										<div class="form-group">
											<div class="col-sm-10">
												<input type="password" class="form-control" name="password"
													id="inputOldpass" placeholder="请输入当前密码">
											</div>
										</div>
										<div class="form-group">
											<div class="col-sm-10">
												<input type="password" class="form-control"
													name="newPassword" id="inputNewPass" placeholder="请输入新密码">
											</div>
										</div>
										<div class="form-group">
											<div class="col-sm-10">
												<input type="password" class="form-control"
													name="confirmPassword" id="NewPassAgain"
													placeholder="再次输入密码">
											</div>
										</div>
										<div class="form-group">
											<div class="col-sm-2">
												<a id="backPassword" class="btn btn-default">取消</a>
											</div>
											<div class="col-sm-offset-1 col-sm-9">
												<button id="saveNewPassword" type="submit"
													class="btn btn-info">保存</button>
											</div>
										</div>
									</form>
								</div>

							</div>

						</div>
						<div class="account-block">
							<div class="account-list-title">
								<ul class="media-list">
									<li class="media">
										<div class="media-left">
											<img class="media-object" src="img/status-icon.png"
												alt="...">
										</div>
										<div class="media-body">
											<h4 class="media-heading">账号状态</h4>
											<span class="text-muted small"> 最后一次登录IP和时间。 </span>
										</div>
									</li>
								</ul>
							</div>
							<div class="account-list-info">
								<span>IP:${person.ipLastActived }</span><br />
								 <span class="text-muted small">
								 ${person.dateLastActived }</span>
							</div>
						</div>
					</div>
				</div>

				<div class="tab-pane fade" id="personalInfo">
					<div class="infoTitle">
						<h3>个人信息</h3>
					</div>
					<div class="account-info-list">
						<div class="person-info">
							<s:form class="form-horizontal" action="person_info">
								<div class="form-group">
									<label class="col-sm-3 control-label">真实姓名</label>
									<div class="col-sm-9">
										<input type="text" class="form-control" name="person.name" value="${person.name }">
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">性别</label>
									<div class="col-sm-3">
										<select class="form-control" name="person.sex" >
											<option>${person.sex }</option>
											<option value="保密">保密</option>
											<option value="男">男</option>
											<option value="女">女</option>
										</select>
									<%--<s:select class="form-control" list="{'保密','男','女'}" name="person.sex"></s:select>--%>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">生日</label>
									<div class="col-sm-9">
										<input type="date" class="form-control" name="person.birthday" value="${person.birthday }">
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">手机</label>
									<div class="col-sm-9">
										<input type="text" class="form-control" name="person.phone" value="${person.phone }"/>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">个性签名</label>
									<div class="col-sm-9">
										<textarea class="form-control" rows="3" name="person.signature" value="${person.signature }"></textarea>
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-offset-3 col-sm-9">
										<button type="submit" class="btn btn-info">保存</button>
									</div>
								</div>
							</s:form>
						</div>

					</div>
				</div>
				<div class="tab-pane fade" id="privilege">
					<div class="infoTitle">
						<h3>超管特权</h3>
					</div>
					<div class="account-info-list">
						<div class="privilege">
							<ul class="media-list">
								<li class="media">
									<div class="media-left">
										<a href="${pageContext.request.contextPath }/category_initAdd.action?person.id=${person.id}"> 
											<img class="media-object" src="img/add-category.png">
										</a>
									</div>
									<div class="media-body">
										<a href="${pageContext.request.contextPath }/category_initAdd.action?person.id=${person.id}">
										<h4 class="media-heading">添加分类</h4></a> <span
											class="text-muted small"> 为论坛开辟新的交流领域。 </span>
									</div>
									<div class="media-left">
										<a href=""> <img class="media-object"
											src="img/add-board.png">
										</a>
									</div>
									<div class="media-body">
										<a href=""><h4 class="media-heading">添加版块</h4></a> <span
											class="text-muted small"> 在分类中添加一个新的版块。 </span>
									</div>
								</li>
							</ul>
						</div>

					</div>
					<!--<div class="col-sm-10 col-sm-offset-2">
								<p>当前昵称：xiaozhi</p>
							</div>
							<form class="form-inline col-sm-10 col-sm-offset-2" role="form">
								<div class="form-group">
									<p class="form-control-static">起新昵称：</p>
								</div>
								<div class="form-group">
									<input type="text" class="form-control" />
								</div>
								<button type="submit" class="btn btn-info">提交</button>
							</form>
							<div class="col-sm-10 col-sm-offset-2 text-muted" style=" font-family: '微软雅黑';">
								<p style="color:rgb(255,153,0); margin-top: 30px;">
									昵称修改说明</p>
								<p><small>
										1 昵称可使用数字，字母，汉字，长度为2-10个字。
										<br/>2 昵称为全平台唯一标示，不可重复。
									</small></p>

							</div>-->
				</div>
			</div>
		</div>
	</div>
</div>
<div class="modal fade" id="avatar-modal" aria-hidden="true"
	aria-labelledby="avatar-modal-label" role="dialog" tabindex="-1">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<form class="avatar-form" action="{{url('admin/upload-logo')}}"
				enctype="multipart/form-data" method="post">
				<div class="modal-header">
					<button class="close" data-dismiss="modal" type="button">&times;</button>
					<h4 class="modal-title" id="avatar-modal-label">修改头像</h4>
				</div>
				<div class="modal-body">
					<div class="avatar-body">
						<div class="avatar-upload">
							<input class="avatar-src" name="avatar_src" type="hidden">
							<input class="avatar-data" name="avatar_data" type="hidden">
							<label for="avatarInput">图片上传</label> <input class="avatar-input"
								id="avatarInput" name="avatar_file" type="file">
						</div>
						<div class="row">
							<div class="col-md-9">
								<div class="avatar-wrapper"></div>
							</div>
							<div class="col-md-3">
								<div class="avatar-preview preview-lg"></div>
								<div class="avatar-preview preview-md"></div>
								<div class="avatar-preview preview-sm"></div>
							</div>
						</div>
						<div class="row avatar-btns">
							<div class="col-md-9">
								<div class="btn-group">
									<button class="btn" data-method="rotate" data-option="-90"
										type="button" title="Rotate -90 degrees">
										<i class="fa fa-undo"></i> 向左旋转
									</button>
								</div>
								<div class="btn-group">
									<button class="btn" data-method="rotate" data-option="90"
										type="button" title="Rotate 90 degrees">
										<i class="fa fa-repeat"></i> 向右旋转
									</button>
								</div>
							</div>
							<div class="col-md-3">
								<button class="btn btn-success btn-block avatar-save"
									type="submit">
									<i class="fa fa-save"></i> 保存修改
								</button>
							</div>
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>

<div class="loading" aria-label="Loading" role="img" tabindex="-1"></div>
<script src="js/cropper.min.js"></script>
<script src="js/sitelogo.js"></script>
<script src="js/viewPerson.js"></script>
<jsp:include flush="true" page="../footer.jsp"></jsp:include>