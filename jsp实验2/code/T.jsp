<%@ page language="java" pageEncoding="GB2312" import="java.util.*,java.io.*"
contentType="text/html;charset=GB2312"%>
<!DOCTYPE  html>
<html  lang="zh-cn">
<head>
<title>Decoding</title>
</head>
<body>
  <h1>Decoding</h1>
  <% 
     String s = request.getParameter("username"); 
  %>
  <%=s%>
</body>
</html>