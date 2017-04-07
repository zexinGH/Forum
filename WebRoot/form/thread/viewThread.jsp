<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" href="css/viewThread.css" />
<script src="ckeditor/ckeditor.js" type="text/javascript"></script>
<script src="js/jquery.js"></script>
<script src="js/thread.js"></script>
<jsp:include flush="true" page="../header.jsp"></jsp:include>
<div id="main">
	<div id="position" class="container">
		<span> 你的位置: <span class="text-muted"> <a
				href="<html:rewrite action='/category?action=list'/>"> <span
					class="glyphicon glyphicon-home"></span> 首页</a> <span
				class="glyphicon glyphicon-chevron-right"></span> <a
				href="<html:rewrite action='/board?action=oneCategoryList'/>
				&category.id=${board.category.id}">${board.category.name}</a>
				<span class="glyphicon glyphicon-chevron-right"></span> <a
				href="<html:rewrite action='/board?action=list'/>
				&board.id=${board.id}">${board.name}</a>
				<span class="glyphicon glyphicon-chevron-right"></span> 查看内容 </span> </span>
	</div>
	<div class="listThread">
		<div class="container">

			<table class="table table-bordered">
				<tr>
					<td>
						<div class="threadTitle">
							<span style="float: right;">
								<button type="button" class="btn btn-info btn-sm" id="reply">
									<span class="glyphicon glyphicon-comment"></span> 回复
								</button> </span>
							<p>标题 : ${thread.title }</p>
						</div>
					</td>
				</tr>
				<tr>
					<td>
						<dl class="dl-horizontal">
							<dt>
								<div id="author" class="text-center">
									<img src="${thread.author.portrait }" class="img-thumbnail" />
									<p class="text-primary">楼主：${thread.author.name }</p>
								</div>
							</dt>
							<dd>
								<div id="threadContent">
									<p>${thread.content }</p>
									<p id="pubTime" class="text-muted text-right">
										<small>1楼 2016-11-29 13:38</small>

									</p>
								</div>
							</dd>
						</dl>
					</td>
				</tr>
				<c:forEach var="reply" items="${replyList }">
					<tr>
						<td>
							<dl class="dl-horizontal">
								<dt>
									<div id="author" class="text-center">
										<img src="img/noavatar_middle.gif" class="img-thumbnail" />
										<p class="text-primary">${reply.author.name }</p>
									</div>
								</dt>
								<dd>
									<div id="threadContent">
										<p>${reply.content }</p>
										<p id="pubTime" class="text-muted text-right">
											<small>${reply.floor }楼  ${reply.dateCreated }</small>

										</p>
									</div>
								</dd>
							</dl>
						</td>
					</tr>
				</c:forEach>
				<tr><td>${pagination }</td></tr>
				<tr>
					<td>
						<div class="addreply">
							<html:form action="/reply">
								<html:hidden property="action" value="add" />
								<html:hidden property="thread.id" value="${thread.id }" />
								<html:hidden property="reply.title" value="Re:${thread.title }" />
								
								<div class="form-group col-sm-2">
									<span id="addreply" class="glyphicon glyphicon-pencil"></span>发表评论
								</div>
								<div class="form-group col-sm-11">
									<textarea id="editor" name="reply.content" class="form-control"
										rows="3"></textarea>
								</div>
								<div class="form-group col-sm-2">
									<button type="submit" id="publish" class="btn btn-info">发表</button>
								</div>

							</html:form>
						</div></td>
				</tr>
			</table>
		</div>

	</div>

</div>
<jsp:include flush="true" page="../footer.jsp"></jsp:include>