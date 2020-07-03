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
			<h3 class="panel-title">员工列表</h3>
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
								姓名
							</th>
							<th>
								年龄
							</th>
							<th>
								部门
							</th>
							<th>
								工资
							</th>
							<th>
								delete
							</th>
							<th>
								update
							</th>
						</tr>
						<c:forEach var="u" items="${allStaff }">
							<tr>
								<td>${u.id }</td><!--id是结果集的列名  -->
								<td>${u.logname }</td>
								<td>${u.staff_age }</td>
								<td>${u.staff_class }</td>
								<td>${u.staff_salary }</td>
								<td><a href="deleteStaff">解雇员工</a></td>
								<td><a href="updateStaff">更新员工信息</a></td>
								<td><a href="registerStaff">新增员工</a></td>
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
										<li><a href="handle/selectAllStaffByPage?currentPage=${currentPage-1}">上一页</a></li>
									</c:if>
									<c:if test="${currentPage != totalPage}">
										<li><a href="handle/selectAllStaffByPage?currentPage=${currentPage+1}">下一页</a></li>
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