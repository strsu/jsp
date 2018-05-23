<%@page contentType="text/html; charset=utf-8"%>
<% 
	Cookie[] cookies = request.getCookies();
%>
<!DOCTYPE html>
<html>
<head>
	<title>쿠키 데이터 읽기</title>
</head>
<body>
	직업 : <%=getCookiesValue(cookies, "JOB")%> <br>
</body>
</html>

<%! 
	private String getCookiesValue(Cookie[] cookies, String name) {
		String value = null;
		if (cookies == null)
			return null;
		for(Cookie cookie : cookies) {
			if(cookie.getName().equals(name))
				return cookie.getValue();
		}
		return null;
	}
%>