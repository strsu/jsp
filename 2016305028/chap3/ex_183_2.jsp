<%@page contentType="text/html; charset=utf-8"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>사칙 연산</title>
</head>
<body>
	
		덧셈의 결과는? <%=request.getAttribute("SUM")%> <br>
		뺄셈의 결과는? <%=request.getAttribute("DIFFERENCE")%> <br>
		곱셈의 결과는? <%=request.getAttribute("PRODUCT")%> <br>
		나눗셈의 결과는? <%=request.getAttribute("QUOTIENT")%> <br>
	
</body>
</html>