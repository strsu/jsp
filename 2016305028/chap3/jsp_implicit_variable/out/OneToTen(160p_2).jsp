<%@page contentType="text/html; charset=utf-8"%>

<html>
<head>
	<title>1부터 10까지 순서대로</title>
</head>
<body>
	<h3>1부터 10까지 순서대로</h3>
	<% for(int i=1;i<=10;i++) { %>
	<%= i %>
	<% } %>
</body>
</html>