<%@page import="model.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
User loginUser = (User) session.getAttribute("loginUser");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>どこつぶ</title>
</head>
<body>
	<h1>どこつぶへようこそ</h1>
	<% if (loginUser != null) { %>
	<p>ログインに成功しました!!</p>
	<p>
		ようこそ<%= loginUser.getName() %>さん
	</p>
	<a href="/docoTsubu/Main">つぶやき投稿・閲覧</a>
	<% } else { %>
	<p>ログインに失敗しました!!</p>
	<a href="/docoTsubu/">TOPへ</a>
	<% } %>
</body>
</html>