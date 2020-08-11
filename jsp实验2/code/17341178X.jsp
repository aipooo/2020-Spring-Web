<%@ page language="java" import="java.util.*,java.io.*" pageEncoding="utf-8" 
contentType="text/html;charset=utf-8"%>
<!DOCTYPE  html>
<% 
	session.setAttribute("course", "移动Web应用设计" + " --- " + new Date());
	String id = session.getId();
%>
<html lang="zh-cn">
	<head>
		<title>Session X</title>
	</head>
	<body>
		<h1>Session X</h1>
		session ID: <%=id%><br><br>
		<a href="17341178Y.jsp">Y.jsp</a><br><br>
		<a href="17341178Z.jsp">Z.jsp</a>
	</body>
</html>
