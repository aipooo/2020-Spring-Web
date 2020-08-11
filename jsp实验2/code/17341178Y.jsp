<%@ page language="java" import="java.util.*,java.io.*" pageEncoding="utf-8" 
contentType="text/html;charset=utf-8"%>
<% 
	String course = (String) session.getAttribute("course");
	String id = session.getId();
%>
<!DOCTYPE  html>
<html lang="zh-cn">
	<head>
		<title>Session Y</title>
	</head>
	<body>
		<h1>Session Y</h1>
		session ID: <%=id%><br><br>
		course: <%=course%><br><br>
		<a href="17341178X.jsp">X.jsp</a><br><br>
		<a href="17341178Z.jsp">Z.jsp</a><br><br>
	</body>
</html>
