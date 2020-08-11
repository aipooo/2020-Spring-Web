<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<!DOCTYPE HTML>
<html>
	<head>
		<title>实现文件上传</title>
	</head>
	<body>
		<form name="fileupload" action="17341178fileUpload.jsp" method="post" enctype="multipart/form-data">
			id：<input type="text" name="id" value="888"><br><br>
			文件名：<input type="file" name="file" size="50"><br><br>
			<input type="submit" name="sub" value="OK"><br><br>
		</form>
	</body>
</html>
