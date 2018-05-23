<%@page contentType="text/html; charset=utf-8"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>정수를 순서대로</title>
</head>
<body>
	<h3>정수를 순서대로</h3>
	<%
		String str = request.getParameter("MAX");
		int max = Integer.parseInt(str);
		for (int i=0;i<=max;i++) {
			out.println(i + "<br>");
		}
	%>
</body>
</html>