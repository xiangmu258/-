<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/upload_submit" method="POST" enctype="multipart/form-data">
请选择文件: <input type="file" name="file"/>
<input type="submit" value="上传"/>
</form>

</body>
</html>