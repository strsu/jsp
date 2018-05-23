<%@page contentType="text/html; charset=utf-8"%>

<html>
<head>
	<title>회원 정보</title>
</head>
<body>
	<jsp:useBean class="mall.PersonalInfo_384p_8_4" id="pinfo" scope="request"/>

	이름 : <jsp:getProperty name="pinfo" property="name" /> <br>
	성별 : <jsp:getProperty name="pinfo" property="gender" /> <br>
	나이 : <jsp:getProperty name="pinfo" property="age" /> <br>
</body>
</html>