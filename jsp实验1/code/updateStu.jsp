<%@ page language="java" import="java.util.*,java.sql.*" contentType="text/html; charset=utf-8"%>
<% 
	request.setCharacterEncoding("utf-8");
	String msg = "";
	String connectString = "jdbc:mysql://103.26.79.35:3306/teaching"
			+ "?autoReconnect=true&useUnicode=true&characterEncoding=UTF-8"; 
	String num = request.getParameter("num");
	String name = request.getParameter("name");
	String pid = request.getParameter("pid");
	try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection(connectString, "user", "123"); 
		Statement stmt = con.createStatement();
		if(request.getParameter("sub") == null){	//表单未提交
			String sql = "select * from stu where id=" + pid;
			ResultSet rs = stmt.executeQuery(sql);
			if(rs.next()){
				num = rs.getString("num");
				name = rs.getString("name");	
			}
		}
		else{	//表单提交更新
			String sql = "update stu set num='" + num + "', name='" + name + "' where id=" + pid;
			int cnt = stmt.executeUpdate(sql);
			if(cnt>0)
				msg = "Update Success!";
			stmt.close();
			con.close();
		}	
	}
	catch(Exception e){
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
		<title>修改学生记录</title>
	</head>
	<body>
		<div class="container">
			<h1>修改学生记录</h1>
			<form action="updateStu17341178.jsp?pid=<%=pid%>" method="post" name="f">
				学号：<input id="num" name="num" type="text" value="<%=num%>"><br><br>
				姓名：<input id="name" name="name" type="text" value="<%=name%>"><br><br>
				<input type="submit" name="sub" value="修改">
				<input type="reset" name="reset" value="清空"><br><br>
			</form>
			<%=msg%><br><br>
			<a href='browseStu17341178.jsp'>返回</a>
		</div>
	</body>
</html>
