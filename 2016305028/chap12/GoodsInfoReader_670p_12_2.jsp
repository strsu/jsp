<%@page contentType="text/html; charset=utf-8" errorPage="DBError_672p_12_4.jsp"%>
<%@page import="java.sql.*"%>

<%
	String code = request.getParameter("CODE");

	Connection conn = null;
	Statement stmt = null;
	try {
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/webdb?serverTimezone=UTC","root","mysql");
		if(conn == null) {
			throw new Exception("Could't access DataBase. <br>");
		}
		stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery("select * from goodsinfo where code = '" + code + "';");
		if(rs.next()) {
			String title = rs.getString("title");
			String writer = rs.getString("writer");
			int price = rs.getInt("price");
			request.setAttribute("CODE", code);
			request.setAttribute("TITLE", toUnicode(title));
			request.setAttribute("WRITER", toUnicode(writer));
			request.setAttribute("PRICE", new Integer(price));
		}
	} finally {
		try {
			stmt.close();
		} catch(Exception ignored) {

		}
		try {
			conn.close();
		} catch (Exception ignored) {

		}

		RequestDispatcher dispatcher = request.getRequestDispatcher("GoodsInfoViewer_671p_12_3.jsp");
		dispatcher.forward(request, response);
	}
%>

<%!
	private String toUnicode(String str) {
		try {
			byte[] b = str.getBytes("ISO-8859-1");
			return new String(b);
		} catch(java.io.UnsupportedEncodingException use) {
			System.out.println(use.getMessage());
			return null;
		}
	}
%>