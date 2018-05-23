<%@page contentType="text/html; charset=utf-8"%>
<%@page buffer="4kb"%>
<html>
<head>
	<title>출력 버퍼의 크기 지정</title>
</head>
<body>
	출력 버퍼의 크기 : <%= out.getBufferSize() %>
</body>
</html>