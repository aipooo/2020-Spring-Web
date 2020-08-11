<%@ page language="java" import="java.util.*,java.sql.*" contentType="text/html; charset=utf-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String msg ="";
	String connectString = "jdbc:mysql://103.26.79.35:3306/teaching"
					+ "?autoReconnect=true&useUnicode=true"
					+ "&characterEncoding=UTF-8"; 
	StringBuilder table=new StringBuilder("");
	try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection(connectString, "user", "123");
		Statement stmt = con.createStatement();
		ResultSet rs = stmt.executeQuery("select * from stu");
		table.append("<table>");
		table.append("<tr><th>id</th><th>学号</th><th>姓名</th><th>-</th></tr>");
		while(rs.next()) {
			table.append("<tr>");
			table.append("<td>" + rs.getString("id") + "</td>");
			table.append("<td>" + rs.getString("num") + "</td>");
			table.append("<td>" + rs.getString("name") + "</td>");
			table.append("<td>");
			String url1 = "updateStu17341178.jsp?pid=" + rs.getString("id");
			table.append("<a href='" + url1 + "'>修改</a> ");
			String url2 = "deleteStu17341178.jsp?pid=" + rs.getString("id");
			table.append("<a href='" + url2 + "'>删除</a></td>");
			table.append("</tr>");
		}
		table.append("</table");
		rs.close();
		stmt.close();
		con.close();
	}
	catch (Exception e){
		msg = e.getMessage();
	}
%>
<!DOCTYPE  html>
<html  lang="zh-cn">
	<head>
		<style>
			td, th{
				border: solid 1px black;
				width: 150px;
				height: 30px;
			}
			table{
				border-collapse: collapse;
			}
			.container{
				width: 600px;
				margin: auto;
				text-align: center;
			}
			.add{
				float: left;
			}
		</style>
		<title>浏览学生名单</title>
	</head>
	<body>
		<div class="container">
			<h1>浏览学生名单</h1>  
			<div>
				<%=table%>
			</div>
			<div class="add">
				<br><br><a href="addStu17341178.jsp">新增</a><br><br>
			</div>
		</div>
	</body>
</html>