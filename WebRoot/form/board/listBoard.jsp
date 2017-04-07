<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include flush="true" page="../header.jsp"></jsp:include>
<div id="main">
	<div class="position container" style="margin-bottom: 20px;">
		<span> 你的位置：
			<span class="text-muted"> <a href="<html:rewrite action='/category?action=list'/>">论坛系统</a>
				<span class="glyphicon glyphicon-chevron-right"></span> ${category.name} 
			</span> 
		</span>
	</div>
	<div class="listboard" style="background-color: rgb(230,230,230);">
		<div class="container" style="background-color: rgb(255,255,255);">
		
			<table class="table">
				<tr>
					<td style="font-size: 20px;">${category.name }</td>
				</tr>
				<c:forEach var="board" items="${category.boards }">
					<tr>
						<td>
							<div class="row">
								<div class="col-sm-1">
									<img src="${board.picture}" class="img-circle" />
								</div>
								<div class="col-sm-9" style="padding-left: 0;">
									<p style="font-size: 20px;">
										<a href="<html:rewrite action='board?action=list'/>&board.id=${board.id}">
										${board.name }</a>
									</p>
									<p class="text-muted">
										<span>主题：${board.threadCount }</span>&nbsp;&nbsp; 
										<span>文章：${board.replyCount }</span>&nbsp;&nbsp; 
										<span>今日：2</span>
									</p>
								</div>
								<div class="col-sm-2">
									<p style="color: rgb(255,102,0);">${board.lastThread.title }</p>
									<p>
										<small>${board.lastThread.dateCreated }</small>
									</p>
								</div>
							</div>
						</td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</div>
</div>
<jsp:include flush="true" page="../footer.jsp"></jsp:include>