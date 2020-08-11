<%@ page language="java" import="java.util.*,java.sql.*" 
         contentType="text/html; charset=utf-8"
%><%request.setCharacterEncoding("utf-8");
response.addHeader("Access-Control-Allow-Origin", "*");
String msg="";
String name="";

String id = request.getParameter("id");

if(id==null){
  msg = "参数错误：没有id!";
}
else{
    String connectString = "jdbc:mysql://localhost:3306/test"
				+ "?autoReconnect=true&useUnicode=true"
				+ "&characterEncoding=UTF-8"; 
    String user="user";
    String pwd="123";
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection(connectString, user, pwd);
    Statement stmt=con.createStatement();
    name = request.getParameter("name"); 
    try{
	 String sql="update stu set name='" + name +  "' where id="+id;
	 int cnt=stmt.executeUpdate(sql);
	 if (cnt>0)
	    msg="修改成功!";
	 else
	    msg="修改失败!";
	
     }catch (Exception e){
        msg = e.getMessage();
     }
     finally{
      stmt.close();
      con.close();
    }
}
%>
<%=msg%>


