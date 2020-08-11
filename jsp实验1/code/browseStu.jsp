<%@ page language="java" import="java.util.*,java.sql.*" contentType="text/html; charset=utf-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String msg ="";
	Integer pgno = 0;   //当前页号
	Integer pgcnt = 4; 	//每页行数
	String param = request.getParameter("pgno");
	if(param != null && !param.isEmpty()){ 
		pgno = Integer.parseInt(param);
	}
	param = request.getParameter("pgcnt");
	if(param != null && !param.isEmpty()){
		pgcnt = Integer.parseInt(param);
	}
	int pgprev = (pgno>0)?pgno-1:0;
	int pgnext = pgno+1;
	String connectString = "jdbc:mysql://103.26.79.35:3306/teaching"
					+ "?autoReconnect=true&useUnicode=true"
					+ "&characterEncoding=UTF-8";
	StringBuilder table=new StringBuilder("");
	try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection(connectString, "user", "123");
		Statement stmt = con.createStatement();
		String sql = String.format("select * from stu limit %d, %d", pgno*pgcnt, pgcnt);
		ResultSet rs = stmt.executeQuery(sql);
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
			a:link, a:visited{
				color: blue;
			}
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
		</style>
		<title>浏览学生名单</title>
	</head>
	<body>
		<div class="container">
			<h1>浏览学生名单</h1>  
			<div>
				<%=table%>
			</div>
			<div style="float: left;">
				<br><br><a href="addStu17341178.jsp">新增</a><br><br>
			</div>
			<div style="float:right">
				<br><br><a href="browseStu17341178.jsp?pgno=<%=pgprev%>&pgcnt=<%=pgcnt%>">上一页</a>
				<a href="browseStu17341178.jsp?pgno=<%=pgnext%>&pgcnt=<%=pgcnt%>">下一页</a>
			</div>
		</div>
	</body>
</html>