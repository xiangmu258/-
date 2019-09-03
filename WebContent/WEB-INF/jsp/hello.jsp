<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<script type="text/javascript" src="${pageContext.request.contextPath}/scripts/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
function getContent(){
	//ajax请求的action的url
	var url="${pageContext.request.contextPath}/abc/content";
	//ajax请求的参数
	var param={};
	//发送ajax请求，并弹出获取的内容
	$.post(url,param,function(data){
		alert(data);//弹出获取内容
	});
}
</script>
<body>
<input type="button" id="btn" value="获取内容">
<input type="button" id="btn" onclick="getContent()" value="获取内容">

	HelloWorld!
</body>
</html>