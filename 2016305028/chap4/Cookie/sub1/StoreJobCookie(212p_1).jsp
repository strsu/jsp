<%@page contentType="text/html; charset=utf-8"%>
<% 
	Cookie cookie = new Cookie("JOB", "programmger");
	cookie.setPath("/ex/chap4/Cookie/sub1");
	response.addCookie(cookie);
%>
<!DOCTYPE html>
<html>
<head>
	<title>쿠키 데이터 저장하기</title>
</head>
<body>
	JOB 쿠기가 저장되었습니다.<br>
</body>
</html>
