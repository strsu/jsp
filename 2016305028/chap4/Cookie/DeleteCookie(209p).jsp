<%@page contentType="text/html; charset=utf-8"%>
<% 
	Cookie cookie = new Cookie("GENDER", "");
	cookie.setMaxAge(0);
	response.addCookie(cookie);
%>
<!DOCTYPE html>
<html>
<head>
	<title>쿠키 삭제하기</title>
</head>
<body>
	GENDER 쿠키가 삭제되었습니다.<br>
</body>
</html>
