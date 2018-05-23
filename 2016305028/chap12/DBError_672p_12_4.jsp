<%@page contentType="text/html; charset=utf-8" isErrorPage="true"%>
<%response.setStatus(200)%>

<html>
<head>
	<title>데이터베이스 에러</title>
</head>
<body>
	<h3>데이터베이스 에러</h3>
	에러 메세지 : <%= exception.getMessage() %>
</body>
</html>