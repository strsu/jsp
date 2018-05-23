<%@page contentType="text/html; charset=utf-8"%>

<!DOCTYPE html>
<html>
<head>
	<title>1부터 200까지의 합</title>
</head>
<body>
	<%
		int total = 0;
		for (int i=1;i<=100;i++) {
			total += i;
		}
	%>
	1부터 100까지의 합 = <%=total%> <br>
	<%
		for (int i=101;i<=200;i++) {
			total += i;
		}
	%>
	100부터 200까지의 합 = <%=total%> <br>
</body>
</html>
