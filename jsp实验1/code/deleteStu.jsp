<%@ page language="java" import="java.util.*,java.sql.*" contentType="text/html; charset=utf-8"%>
<% 
	request.setCharacterEncoding("utf-8");
	String msg = "";
	String connectString = "jdbc:mysql://103.26.79.35:3306/teaching"
			+ "?autoReconnect=true&useUnicode=true&characterEncoding=UTF-8"; 
	String user="user"; String pwd="123";
	String num = request.getParameter("num");
	String name = request.getParameter("name");
	String pid = request.getParameter("pid");
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection(connectString, user, pwd); 
	Statement stmt = con.createStatement();
	try{ 	
		String sql = "delete from stu where id=" + pid;
		int cnt = stmt.executeUpdate(sql);
		if(cnt>0)
			msg = "Delete Success!";
		stmt.close();
		con.close();
	}
	catch (Exception e){
		msg = e.getMessage();
	}
%>
<!DOCTYPE HTML>
<html>
	<head>
		<style>
			.container {
				margin: auto;
				width: 500px;
				text-align: center;
			}
		</style>
		<title>删除学生记录</title>
	</head>
	<body>
		<div class="container">
			<h1>删除学生记录</h1>
			<%=msg%><br><br>
			<a href='browseStu17341178.jsp'>返回</a>
		</div>
	</body>
</html>
