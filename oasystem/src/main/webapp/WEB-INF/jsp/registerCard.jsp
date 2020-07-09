<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
<title>emplist</title>
<meta charset="UTF-8">
<title>员工列表</title>
	<!-- <link rel="stylesheet" type="text/css" href="css/drop-down.css" /> -->
		<link rel="stylesheet" type="text/css" href="css/common.css" /> 		
		<link rel="stylesheet" type="text/css" href="css/rMain.css" /> 	
		<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
		<link rel="stylesheet"  href="js/select-widget-min" />
</head>
	<body>
		<div class="header">
		<div class="wrapper clearfix">
			<div class="navList">
				<ul>
					<li><a href="handle/menu">首页</a></li>
					<li><a href="handle/selectAllStaffByPage?currentPage=1">员工信息管理</a></li>
					<li><a href="handle/selectAllClassByPage?currentPage=1">部门信息管理</a></li>
					<li><a href="handle/selectAllCardByPage?currentPage=1">打卡信息管理</a></li>
					<li><a href="rMain">权限管理</a></li>
				</ul>
			</div>
			<div class="company">元创OA管理</div>
		</div>
	</div>
	<div class="page_">
		<div class="top_ ">
			<p class="h1">打卡签到</p>
		</div>					
				<div id="content">
				<div id="content1">
					<p id="whereami">
					</p>
					<form action="handle/registerCard" method="post">
					<input type="text" class="inputStr" name="id" style="visibility:hidden"/>
					<table class="table">
						<tr>
							<td valign="middle" align="right">员工ID</td>
							<td valign="middle" align="left"><input type="text" class="inputStr" name="staff_id" /></td>
						</tr>
						<tr>
							<td valign="middle" align="right">签到时间</td>
							<td valign="middle" align="left"><input type="text" class="inputStr" name="date_time" /></td>
						</tr>
					</table>
					<br><br>
					<input type="submit" value="确定修改"/>
				</form>
				</div>
			</div>
			<div id="footer">
				<div id="footer_bg">
					第四组作品
				</div>
			</div>
		</div>
	</body>
</html>
