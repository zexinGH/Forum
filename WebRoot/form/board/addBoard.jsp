<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:include flush="true" page="../header.jsp"></jsp:include>
<div id="main">
	<div id="main">
		<div class="container">
			<table class="table table-stripedr">
				<tr>
					<td><strong>添加类别</strong> <span
						class="col-sm-offset-1 text-danger">${message }</span>
					</td>
				</tr>
				<tr>
					<td>
						<form class="form-horizontal" role="form" name="boardForm"
							method="post" action="board.do" enctype="multipart/form-data">
							<input type="hidden" name="action" value="add">
							<div class="form-group">
								<label for="addboard" class="col-sm-2 control-label">版面名称</label>
								<div class="col-sm-5">
									<input type="text" class="form-control" id="addboard"
										name="board.name" placeholder="控制在3~8个字符之间">
								</div>
								<div id="mistakeInfo" class="col-sm-3">
									<span id="boardInfo"></span>
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">版面图标</label>
								<div class="col-sm-3">
									<input class="form-control" type="file" name="picture" />
								</div>
								<div id="mistakeInfo" class="col-sm-offset-2 col-sm-3">
									<span id="pictureInfo"></span>
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">选择类别</label>
								<div class="col-sm-2">
									<select class="form-control" name="category.id">
										<option></option>
										<c:forEach var="category" items="${categoryList }">
											<option value="${category.id }">${category.name }</option>
										</c:forEach>
									</select>
								</div>
								<div id="mistakeInfo" class="col-sm-3 col-sm-offset-3">
									<span id="selectInfo"></span>
								</div>
							</div>

							<div class="form-group">
								<label for="description" class="col-sm-2 control-label">基本描述</label>
								<div class="col-sm-5">
									<textarea class="form-control" name="board.description"
										rows="3"></textarea>
								</div>
								<div id="mistakeInfo" class="col-sm-5">
									<span id="descriptionInfo"></span>
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-offset-2 col-sm-10">
									<button type="submit" class="btn btn-info">提交</button>
								</div>
							</div>
						</form></td>
				</tr>
			</table>
		</div>
	</div>
</div>
<jsp:include flush="true" page="../footer.jsp"></jsp:include>