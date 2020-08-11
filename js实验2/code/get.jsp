<%@ page language="java" import="java.util.*,java.sql.*" 
         contentType="text/html; charset=utf-8"
%><%
        response.addHeader("Access-Control-Allow-Origin", "*");
        request.setCharacterEncoding("utf-8");
        String msg ="";
        String num = "";
        String name = "";

        String id = request.getParameter("id");
        if(id == null || id.isEmpty()){ 
             out.print("id不能为空！");
        }
	
        String connectString = "jdbc:mysql://localhost:3306/test"
					+ "?autoReconnect=true&useUnicode=true"
					+ "&characterEncoding=UTF-8"; 
        String user="user";
        String pwd="123";
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection(connectString, user, pwd);
            Statement stmt=con.createStatement();
            String sql="select * from stu where id=" + id;
            ResultSet rs=stmt.executeQuery(sql);
	  
            if(rs.next()) {
	     num = rs.getString("num");
                     name = rs.getString("name");
            }
            else{
                     out.print("记录不存在！");
            }
            rs.close();
            stmt.close();
            con.close();
        }
       catch (Exception e){
	  msg = e.getMessage();
       } 
%>
id:<%=id%><br>
num:<%=num%><br>
name:<%=name%><br>
msg:<%=msg%><br>