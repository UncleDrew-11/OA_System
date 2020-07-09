<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>聊天界面</title>

<link rel="stylesheet" type="text/css" href="images/font-icon/iconfont.css">
<link rel="stylesheet" type="text/css" href="css/demo1.css">

</head>
<body>

<div class="header">
	<div class="icon-box">
		<i class="iconfont icon">&#xe637;</i>
	</div>
</div>
<div class="chatbar">
	<div class="chatbar-box">
		<div class="chatbar-contacts">
			<div class="contacts-search-box">
				<i class="iconfont">&#xe651;</i>
				<input type="text" class="search-text" placeholder="请输入要搜索的联系人">
			</div>
			<ul class="chatbar-contacts-uls">
				<!-- <li>
					<i class="iconfont">&#xe752;</i>
					<p>黄小小</p>
				</li> -->
			</ul>
		</div>
		<div class="chatbar-messages">
			<div class="messages-title">
				<i class="iconfont">&#xe752;</i>
				<h4>黄小小</h4>
				<i class="iconfont return-icon">&#xe61a;</i>
			</div>
			<div class="messages-text" id="messages-text">
				<!-- <ul class="messages-text-uls">
					<li class="messages-text-lis">
						<h4><i></i><span>黄小小</span><span class="time">2017/2/23 13:56</span></h4>
						<p>您好！请问您是谁？我和你认识吗？你是哪里人?</p>
					</li>
				</ul> -->
			</div>
			<div class="messages-box">
				<textarea class="messages-content" name="" id="" cols="30" rows="10"></textarea>
				<input class="message-btn" type="button" value="发送" id="message-btn">
			</div>
		</div>
	</div>
</div>

<script src="js/jquery.min1.js"></script>
<script src="js/demo1.js"></script>
</body>
</html>

