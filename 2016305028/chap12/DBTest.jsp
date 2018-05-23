<%@page contentType="text/html; charset=utf-8"%>
<%@page import="java.sql.*"%>

<html>
<head>
	<title>데이터베이스로 연결하기</title>
</head>
<body>
<%
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/webdb?serverTimezone=UTC","root","mysql");
	if(conn != null) {
		out.println("webdb 데이터베이스로 연결했습니다. <br>");
		conn.close();
		out.println("webdb 데이터베이스로의 연결을 끊었습니다. <br>");
	} else {
		out.println("webdb 데이터베이스로 연결할 수 없습니다. <br>");
	}
%>
</body>
</html>