<%@ page language="java" import="java.util.*,java.io.*" contentType="text/html; charset=utf-8"%>
<!DOCTYPE  html>
<html  lang="zh-cn">
	<head>
		<meta charset="utf-8">
		<title>40个随机数</title>
	</head>
	<body>
		<h1>40个随机数</h1>
		<%
			Random rnd= new Random(50); 	// 局部变量rnd初始化50为种子
			for (int i=0; i<40; i++) {
				int n = rnd.nextInt(1000);		// 返回0~999之间的随机数
				out.print(n);
				out.print('  ');
			}
		%>
	</body>
</html>