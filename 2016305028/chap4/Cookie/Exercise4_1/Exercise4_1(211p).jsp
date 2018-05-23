<%@page contentType="text/html; charset=utf-8"%>
<% Cookie[] cookies = request.getCookies(); %>
<!DOCTYPE html>
<html>
<head>
	<title>쿠키 목록</title>
</head>
<body>
	<%
		if(cookies == null) {
			out.println("쿠키가 없습니다.");
		} else {
			for(Cookie cookie : cookies)
				out.println(cookie.getName() + " - " + cookie.getValue() + "<br>");
		}
	%>
</body>
</html>