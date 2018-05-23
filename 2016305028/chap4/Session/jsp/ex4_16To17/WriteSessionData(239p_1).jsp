<%@page contentType="text/html; charset=utf-8"%>
<%
	session.setAttribute("NAME", "박영재");
	session.setAttribute("AGE", new Integer(23));
	session.setAttribute("GENDER", "남");
%>
<!DOCTYPE html>
<html>
<head>
	<title>세션 데이터를 저장하는 JSP 페이지</title>
</head>
<body>
	세션 데이터가 저장되었습니다. <br><br>
	<a href=<%=response.encodeURL("ReadSessionData(239p_2).jsp")%>>세션 데이터 읽기</a>
</body>
</html>