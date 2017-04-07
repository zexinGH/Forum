<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<link rel="stylesheet" href="css/listCategory.css" />
<s:include value="../header.jsp"></s:include>
<div id="main">
	<div class="container">
		<table class="table">
			<tr class="index-info">
				<td>
					<div class="info_box text-muted small">
						<span>今日：2</span> <i class="text-muted">|</i> <span>昨日：4</span> <i
							class="text-muted">|</i> <span>帖子：15766910</span> <i
							class="text-muted">|</i> <span>会员：34385</span> <i
							class="text-muted">|</i> <span>新会员：kuangym29</span>
					</div>
				</td>
			</tr>
			<s:iterator value="categoryList" var="category">
				<tr class="title">
					<td><s:property value="#category.name"/></td>
				</tr>
				<tr class="board"><td>
					<div class="row">
						<s:iterator value="board" var="category.boards">
						<div class="col-md-4">
							<dl class="dl-horizontal">
								<dt>
									<p class="text-left">
										<img src="<s:property value="#board.picture"/>" />
									</p>
								</dt>
								<dd>
									<a href='${pageContext.request.contextPath }/board.action
									&amp;board.id=<s:property value="#board.id"/>'
										class="boardtitle">
										<s:property value="#board.name" />
										</a><br/> 
										<div class="text-muted small"> 
											<span>主题：<s:property value="#board.thread" /></span> 
											<span>文章：<s:property value="#board.reply" /></span>
											<span>今日：1</span><br/> 
											<span><a href="<html:rewrite action='thread?action=list'/>&amp;thread.id=${board.lastThread.id}">
											最新：<s:property value="#board.lastThread.dateCreated"/></a></span>
										</div>
								</dd>
							</dl>
						</div>
						</s:iterator>
					</div>
				</td></tr>
			</s:iterator>
			
		</table>

	</div>
</div>

<s:include value="../footer.jsp"></s:include>
