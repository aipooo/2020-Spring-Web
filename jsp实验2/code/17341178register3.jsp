<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%request.setCharacterEncoding("utf-8");%>
<%
	String name = request.getParameter("name");
	if(name == "" || name == null)
		name = "张三";
	else
		name += "*";
	String explain = request.getParameter("explain");
	if(explain == null)
		explain = "我选修了Web程序设计";
	else
		explain += "*";
%>
<!DOCTYPE HTML>
<html>
	<head>
		<title>用户注册</title>
		<style>
		</style>
	</head>
	<body>
		<form action="17341178register3.jsp" method="post">
			<input type="hidden" name="stuid" value="12345" />
			同学名：<input type="text" id="txt1" name="name" value="<%=name%>" /><br><br>
			密码：<input type="password" name="password" value="12345678" /><br><br>
			校区：南校区<input type="radio" name="campus" value="south" />
			东校区<input type="radio" name="campus" value="east" />
			北校区<input type="radio" name="campus" value="north" checked="checked"/>
			珠海校区<input type="radio" name="campus" value="zhuhai" />
			深圳校区<input type="radio" name="campus" value="shenzhen" /><br><br>
			年级：<select name="grade">
				<option value="freshman">大学一年级</option>
				<option value="sophomore">大学二年级</option>
				<option value="junior" selected="selected">大学三年级</option>
				<option value="senior">大学四年级</option>
			</select><br><br>
			社团：舞蹈队<input type="checkbox" name="club" value="dance" />
			摄影<input type="checkbox" name="club" value="photo" checked="checked"/>
			篮球<input type="checkbox" name="club" value="basketball" checked="checked"/><br><br>
			<table>
				<tr>
					<td valign="top">说明: </td>
					<td><textarea rows="10" cols="30" name="explain"><%=explain%></textarea></td>
				</tr>
			</table>
			<br/>
			<input type="submit" name="submit1" value="保存" />
			<input type="submit" name="submit2" value="退出" /><br>
		</form>
	</body>
</html>
