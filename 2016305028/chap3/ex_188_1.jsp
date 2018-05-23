<%@page contentType="text/html; charset=utf-8"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>오늘의 메뉴</title>
</head>
<body>
	<h3>오늘의 메뉴</h3>
	- 짜장면 <br>
	- 볶음밥 <br>
	- 짬뽕 <br>
	<%
		out.flush();
		RequestDispatcher dispatcher = request.getRequestDispatcher("ex_188_2.jsp");
		dispatcher.include(request, response);
	%>
		
</body>
</html>