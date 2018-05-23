<%@page contentType="text/html; charset=utf8" errorPage="DataError_252p_2.jsp"%>
<%
	int num1 = 0, num2 = 0, result = 0;
	//try{
		String str1 = request.getParameter("NUM1");
		String str2 = request.getParameter("NUM2");
		num1 = Integer.parseInt(str1);
		num2 = Integer.parseInt(str2); 
		result = num1 + num2;
	//} catch (NumberFormatException e) {
		//RequestDispatcher rd = request.getRequestDispatcher("DataError_252p_2.jsp");
		//rd.forward(request, response);
	//}
%>

<!DOCTYPE html>
<html>
<head>
	<title>덧셈 프로그램</title>
</head>
<body>
	<%=num1%> + <%=num2%> = <%=result%>
</body>
</html>