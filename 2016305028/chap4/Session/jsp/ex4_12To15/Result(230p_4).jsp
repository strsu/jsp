<%@page contentType="text/html; charset=utf-8"%>
<% String result = request.getParameter("RESULT");%>

<!DOCTYPE html>
<html>
<head>
	<title>회원가입</title>
</head>
<body>
	<h3>회원가입 결과</h3>
	<%
		if(result.equals("SUCCESS")) {
			out.println("가입되었습니다.");
		} else {
			out.println("가입되지 않았습니다.");
		}
	%>
	<a href="../../../4.html">돌아가기</a>
</body>
</html>