<%@page contentType="text/html; charset=utf-8"%>
<% 
	response.addCookie(new Cookie("NAME","박영재"));
	response.addCookie(new Cookie("GENDER","남자"));
	response.addCookie(new Cookie("AGE","23"));
%>
<!DOCTYPE html>
<html>
<head>
	<title>쿠키 데이터 저장하기</title>
</head>
<body>
	쿠키 데이터가 저장되엇습니다. <br><br>
</body>
</html>