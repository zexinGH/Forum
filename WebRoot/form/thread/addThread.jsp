<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script src="ckeditor/ckeditor.js" type="text/javascript"></script>
<script src="js/jquery.js"></script>
<script src="js/thread.js"></script>
<jsp:include flush="true" page="../header.jsp"></jsp:include>
<div id="main">
	<div class="position container" style="margin-bottom: 20px;">
		<span> 你的位置: <span class="text-muted"> <a
				href="<html:rewrite action='/category?action=list'/>">论坛系统</a> <span
				class="glyphicon glyphicon-chevron-right"></span> <a
				href="<html:rewrite action='/board?action=list'/>
				&board.id=${board.category.id}">${board.category.name}</a>
				<span class="glyphicon glyphicon-chevron-right"></span>
				${board.name} </span> </span>
	</div>
	<div class="listthread" style="background-color: rgb(230,230,230);">
		<div class="container" style="background-color: rgb(255,255,255);">
			<table class="table">
				<tr>
					<td>
						<div class="addThread">
							<html:form action="/thread">
								<html:hidden property="action" value="add" /> 
								<html:hidden property="board.id"/> 
								<div class="form-group col-sm-9">
									<span class="glyphicon glyphicon-pencil"></span>发表新帖
								</div>
								<div class="form-group col-sm-9">
									<input type="text" id="threadTitle" class="form-control"
										name="thread.title" placeholder="请输入标题" />
								</div>
								<div class="form-group col-sm-9">
									<textarea id="editor" name="thread.content"
										class="form-control" rows="3">									
									</textarea>
									<script type="text/javascript">
										CKEDITOR.replace('editor');
									</script>
								</div>
								<div class="form-group col-sm-9">
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