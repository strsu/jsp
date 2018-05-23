<%@page contentType="text/html; charset=utf-8"%>
<%@taglib prefix="m" uri="http://localhost:8080/chap7/math-functions.tld" %>

<html>
<head>
	<title>제곱근 구하기</title>
</head>
<body>
	${param.NUM}의 제곱근은? ${m:ssqueareroot(param.NUM)} <br>
</body>
</html>