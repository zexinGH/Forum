<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" href="css/listThread.css" />
<jsp:include flush="true" page="../header.jsp"></jsp:include>
<div id="main">
	<div id="position" class="container">
		<span> 你的位置：
			<span class="text-muted"> <a href="<html:rewrite action='/category?action=list'/>">
				<span class="glyphicon glyphicon-home"></span>首页</a>
				<span class="glyphicon glyphicon-chevron-right"></span> 
				<a href="<html:rewrite action='/board?action=oneCategoryList'/>
				&category.id=${board.category.id}">${board.category.name}</a> 
				<span class="glyphicon glyphicon-chevron-right"></span> ${board.name}
			</span> 
		</span>
	</div>
	<div class="listThread">
		<div class="container">
			<div id="boardTitle" class="text-muted">
				<span id="publishBtn">
					<a href="<html:rewrite action='thread?action=initAdd'/>&board.id=${board.id}">
						<button type="button" class="btn btn-info btn-sm" id="addNewThread">
							<span class="glyphicon glyphicon-pencil"></span>发表新帖
						</button></a>
				</span>
				<p>
					共有主题:<span id="total">${board.threadCount
						}</span>个
				</p>

				<p>${board.description }</p>
			</div>
			<table class="table">
				<tr>
					<td><span>
							<button type="button" class="btn btn-info btn-sm">最新</button> </span> <span>
							<button type="button" class="btn btn-info btn-sm">热门</button> </span>
					</td>
				</tr>
				<c:forEach var="thread" items="${threadList }">
					<tr>
						<td>
							<div class="row">
								<div class="col-sm-1">
									<img src="${thread.author.portrait }" class="img-thumbnail" />
								</div>
								<div class="col-sm-9" style="padding-left: 0;">
									<p>
										<a href="<html:rewrite action='/thread?action=list'/>
										&thread.id=${thread.id}">${thread.title}</a>
									</p>
									<small class="text-muted">
										<span>${thread.author.name }</span>&nbsp;&nbsp; <span>发表于：${thread.dateCreated
											}</span>&nbsp;&nbsp; <span>人气：${thread.hit }</span>&nbsp;&nbsp; <span>回复：${thread.replyCount
											}</span>
									</small>
								</div>
								<div class="col-sm-2">
									<c:if test="${thread.authorLastReplied != null }">
										<p>最后回复：${thread.authorLastReplied.name}</p>
										<p>
											<small>${thread.dateLastReplied }</small>
										</p>
									</c:if>


								</div>
							</div>
						</td>
					</tr>
				</c:forEach>
				<tr>
					<td>${pagination }</td>
				</tr>
				<%--<tr>
					<td>
						<div class="addThread">
							<form role="form" action="thread.do" method="post" form="threadForm">
								<input type="hidden" name="action" value="add"/>
								<input type="hidden" name="board.id"/>
								<div class="form-group col-sm-9">
									<span class="glyphicon glyphicon-pencil"></span>发表新帖
								</div>
								<div class="form-group col-sm-9">
									<input type="text" id="threadTitle" class="form-control"
									 name="thread.title" placeholder="请输入标题" />
								</div>
								<div class="form-group col-sm-9">
									<textarea id="editor" name="thread.content" class="form-control"
										rows="3">									
									</textarea>
									<script type="text/javascript">
										CKEDITOR.replace('editor');
									</script>
								</div>
								<div class="form-group col-sm-9">
									<button type="submit" id="publish" class="btn btn-info">发表</button>
								</div>

							</form>
						</div>
					</td>
				</tr>
			--%></table>
		</div>

	</div>

</div>
<jsp:include flush="true" page="../footer.jsp"></jsp:include>