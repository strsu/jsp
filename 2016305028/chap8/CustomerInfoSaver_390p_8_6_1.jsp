<%@page contentType="text/html; charset=utf-8"%>

<jsp:useBean class="mall.PersonalInfo_384p_8_4" id="pinfo" scope="request" />
<jsp:setProperty name="pinfo" property="name" value="박영재" />
<jsp:setProperty name="pinfo" property="gender" value="남" />
<jsp:setProperty name="pinfo" property="age" value="23" />
<jsp:forward page="CustomerInfoViewer_390p_8_6_2.jsp" />
