<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%  
String path = request.getContextPath();
String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">
<meta charset="UTF-8">
<title>主页面</title>
<!-- Bootstrap -->
<link href="css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
	<div class="panel panel-primary">
		<div class="panel-heading">
			<h3 class="panel-title">部门列表</h3>
		</div>
		
		<div class="panel-body">
			<div class="table table-responsive">
				<table class="table table-bordered table-hover">
					<tbody class="text-center">
						<tr>
							<th>
								id
							</th>
							<th>
								部门名
							</th>
							<th>
								更新部门
							</th>
							<th>
								新增部门
							</th>
						</tr>
						<c:forEach var="u" items="${allClass }">
							<tr>
								<td>${u.id }</td><!--id是结果集的列名  -->
								<td>${u.class_name }</td>
								<td><a href="updateClass">部门更名</a></td>
								<td><a href="registerClass">新增部门</a></td>
							</tr>
						</c:forEach>
						
						<tr>
							<td colspan="5">欢迎${sessionScope.staff.logname }</td>
						</tr>
						<tr>
							<td colspan="5" align="right">
								<ul class="pagination">
									<li><a>第${currentPage}页</a></li>
									<li><a>共${totalPage}页</a></li>
									<c:if test="${currentPage != 1}">
										<li><a href="handle/selectAllClassByPage?currentPage=${currentPage-1}">上一页</a></li>
									</c:if>
									<c:if test="${currentPage != totalPage}">
										<li><a href="handle/selectAllClassByPage?currentPage=${currentPage+1}">下一页</a></li>
									</c:if>
								</ul>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>
</body>
</html>