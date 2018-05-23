<%@page contentType="text/html; charset=utf-8"%>
<% 
	Cookie[] cookies = request.getCookies();
%>
<!DOCTYPE html>
<html>
<head>
	<title>쿠키 데이터 저장하기</title>
</head>
<body>
	이름 : <%=getCookiesValue(cookies, "NAME")%> <br>
	성별 : <%=getCookiesValue(cookies, "GENDER")%> <br>
	나이 : <%=getCookiesValue(cookies, "AGE")%> <br>
</body>
</html>

<%! 
	private String getCookiesValue(Cookie[] cookies, String name) {
		if (cookies == null)
			return null;
		for(Cookie cookie : cookies) {
			if(cookie.getName().equals(name))
				return cookie.getValue();
		}
		return null;
	}
%>