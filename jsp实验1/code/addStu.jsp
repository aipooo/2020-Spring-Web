<%@ page language="java" import="java.util.*,java.sql.*" contentType="text/html; charset=utf-8"%>
<% 
	request.setCharacterEncoding("utf-8");
	String msg = "";
	String connectString = "jdbc:mysql://103.26.79.35:3306/teaching"
			+ "?autoReconnect=true&useUnicode=true&characterEncoding=UTF-8"; 
	String num = request.getParameter("num");
	String name = request.getParameter("name");
	if(request.getMethod().equalsIgnoreCase("post")){
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection(connectString, "user", "123"); 
		Statement stmt = con.createStatement();
		try{ 
			String sql = "insert into stu(num, name) values('" + num + "', '" + name + "')";
			int cnt = stmt.executeUpdate(sql);
			if(cnt>0)
				msg = "保存成功!";
			stmt.close();
			con.close();
		}
		catch (Exception e){
			msg = e.getMessage();
		}
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
		<title>新增学生记录</title>
	</head>
	<body>
		<div class="container">
			<h1>新增学生记录</h1>
			<form action="addStu17341178.jsp" method="post" name="f">
				学号：<input id="num" name="num" type="text"><br><br>
				姓名：<input id="name" name="name" type="text"><br><br>
				<input type="submit" name="sub" value="保存"><br><br>
			</form>
			<%=msg%><br><br>
			<a href='browseStu17341178.jsp'>返回</a>
		</div>
	</body>
</html>
