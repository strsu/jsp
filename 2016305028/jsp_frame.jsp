<%@page contentType="text/html; charset=utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
	<title>복권 당첨 번호</title>
</head>
<body>
	<c:forEach var="num" items="${ARR}">
		${num} <br>
	</c:forEach>
</body>
</html>