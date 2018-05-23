<%@page contentType="text/html; charset=utf-8"%>

<!DOCTYPE html>
<html>
<head>
	<title>세션 데이터를 읽는 JSP 페이지</title>
</head>
<body>
	이름: <%=session.getAttribute("NAME")%>	<br>
	나이: <%=session.getAttribute("AGE")%>	<br>
	성별: <%=session.getAttribute("GENDER")%>	<br>
</body>
</html>