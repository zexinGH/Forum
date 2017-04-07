<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<jsp:include flush="true" page="header.jsp"></jsp:include>
<div id="main">
	<div class="title" style="margin-bottom: 0px; border-bottom: 0">
		<strong>发生了错误</strong>
	</div>
	<div class="exception">
		<table>
			<tr>
				<td class="error"><img src="/forum/img/404.jpg" />
				</td>
				<td>
					<p><s:property value="message"/></p> 
					<input type="button" value="返回" class="btn"
					onclick="history.go(-1);" /></td>
			</tr>
		</table>
	</div>

</div>
<jsp:include flush="true" page="footer.jsp"></jsp:include>