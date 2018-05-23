import javax.servlet.http.*;
import javax.servlet.*;
import java.io.*;

public class ex2_8 extends HttpServlet {
	public void doPost(HttpServletRequest request,
						HttpServletResponse response)
						throws ServletException, IOException {

							//response.setCharacterEncoding("utf-8");

							response.setContentType("text/html; charset=utf-8");

							String name = request.getParameter("name");
							String id = request.getParameter("id");
							String pw = request.getParameter("password");

							String gen = request.getParameter("gen");

							if (gen.equals("man")) {
								gen = "남";
							} else {
								gen = "여";
							}

							String[] mail = {request.getParameter("notice"), request.getParameter("ad"), request.getParameter("conf")};

							String job = request.getParameter("sel");

							PrintWriter out = response.getWriter();

							out.println("<HTML>");
							out.println("<HEAD><TITLE>게시판</TITLE></HEAD>");
							out.println("<BODY>");
							out.printf("이름 : %s <br>", name);
							out.printf("아이디 : %s <br>", id);
							out.printf("패스워드 : %s <br>", pw);
							out.printf("성별 : %s <br>", gen);
							out.printf("공지 메일 : %s <br>", mail[0]);
							out.printf("광고 메일 : %s <br>", mail[1]);
							out.printf("배송 확인 메일 : %s <br>", mail[2]);
							out.printf("직업 : %s <br>", job);
							out.println("</BODY>");
							out.println("</HTML>");
						}
}

//ex) javac 1.java -encoding UTF8