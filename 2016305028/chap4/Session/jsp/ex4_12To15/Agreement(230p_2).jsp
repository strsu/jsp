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
	<h3>약관</h3>
	--------------------------------------------------------------<br>
	1. 회원 정보는 웹 사이트의 운영을 위해서만 사용됩니다. <br>
	2. 웹 사이트의 정상 운영을 방해하는 회원은 탈퇴 처리합니다. <br>
	--------------------------------------------------------------<br>
	<form action="Subscribe(230p_3).jsp" method="post">
		위의 약관에 동의하십니까?
		<input type="radio" name="AGREE" value="YES"> 동의함
		<input type="radio" name="AGREE" value="NO"> 동의하지 않음 <br><br>
		<input type="submit" value="확인">
	</form>
</body>
</html>