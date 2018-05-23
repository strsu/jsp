<%@page contentType="text/html; charset=utf-8"%>
<%@page import="org.apache.commons.dbcp2.*"%>
<%@page import="org.apache.commons.pool2.impl.*"%>

<%
	GenericObjectPool objectPool = new GenericObjectPool(null);
	DriverManagerConnectionFactory connectionFactory = new DriverManagerConnectionFactory("jdbc:mysql://localhsot:3306/webdb?serverTimezone=UTC","root","mysql");
	new PoolableConnectionFactory(connectionFactory, objectPool, null, null, false, true);
	PoolingDriver driver = new PoolingDriver();
	driver.registerPool("/webdbpool", objectPool);
%>

<html>
<head>
	<title>데이터베이스 커넥션 풀 생성하기</title>
</head>
<body>
	<h3>데이터베이스 커넥션 풀 생성하기</h3>
	데이터베이스 커넥션 풀을 생성하고등록했습니다. <br><br>
	풀 이름 : /webdb_pool
</body>
</html>
Context context = new InitialContext();
		DataSource ds = (DataSource) context.lookup("java:comp/env/jdbc/wdbpool");
		conn = ds.getConnection();