<%@page contentType="text/html; charset=utf-8"%>
<%
request.setCharacterEncoding("utf-8");
String id = request.getParameter("ID");
String pw = request.getParameter("PW");
String name = request.getParameter("NAME");
session.setAttribute("ID",id);
session.setAttribute("PW",pw);
session.setAttribute("NAME",name);
%>

<!DOCTYPE html>
<html>
<head>
	<title>회원가입</title>
</head>
<body>
	연락처를 입력하십시오.
	<form action="ex_234_3.jsp" method="post">
		주소 : <input type="text" name="ADDRESS"> <br>
		전화번호 : <input type="text" name="TEL"> <br>
		이메일 : <input type="text" name="EMAIL"> <br>
		<input type="submit" value="확인">
	</form>
</body>
</html>