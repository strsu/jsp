<%@page contentType="text/html; charset=utf-8"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>1부터 10까지의 곱</title>
</head>
<!-- 이것은 JSP에 의해 생성된 HTML 문서입니다. -->
<body>
	<%--  다음은 데이터를 처리하는 스크립틀릿입니다. --%>
	<%
		int result = 1;
		for (int i=1;i<=10;i++) {
			result *= i;
		}
	%>
	1부터 10까지 곱한 값은? <%=result%>
</body>
</html>