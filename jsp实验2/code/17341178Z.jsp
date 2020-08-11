<%@ page language="java" import="java.util.*,java.io.*" pageEncoding="utf-8" 
contentType="text/html;charset=utf-8"%>
<%
	String course = (String) session.getAttribute("course");
	String id = session.getId();
%>
<!DOCTYPE  html>
<html lang="zh-cn">
	<head>
		<title>Session Z</title>
	</head>
	<body>
		<h1>Session Z</h1>
		session ID: <%=id%><br><br>
		course: <%=course%><br><br>
		<a href="17341178X.jsp">X.jsp</a><br><br>
		<a href="17341178Y.jsp">Y.jsp</a><br><br>
	</body>
</html>
