<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<jsp:include flush="true" page="../header.jsp"></jsp:include>
<div id="main">
	<div class="container">
		<table class="table table-striped">
			<tr>
				<td>
					<strong>添加类别</strong>
					<span class="col-sm-offset-1 text-danger">${message }</span>				
				</td>
			</tr>
			<tr>
				<td>
					<form class="form-horizontal" role="form" action="category_add.action" method="post">
						<div class="form-group">
							<label for="addcategory" class="col-sm-2 control-label">请输入要添加的类别</label>
							<div class="col-sm-5">
								<input type="text" class="form-control" id="addcategory" name="categoryName">
							</div>
							<div class="col-sm-2">
								<button type="submit" class="btn btn-info">确定</button>
							</div>
						</div>
					</form>
				</td>
			</tr>
		</table>
	</div>
</div>
<jsp:include flush="true" page="../footer.jsp"></jsp:include>