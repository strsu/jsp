import javax.servlet.http.*;
import javax.servlet.*;
import java.io.*;

public class ex2_5 extends HttpServlet {
	public void doPost(HttpServletRequest request,
						HttpServletResponse response)
						throws ServletException, IOException {
							response.setCharacterEncoding("utf-8");

							String name = request.getParameter("name");
							String title = request.getParameter("title");
							String content = request.getParameter("content");

							PrintWriter out = response.getWriter();

							out.println("<HTML>");
							out.println("<HEAD><TITLE>게시판</TITLE></HEAD>");
							out.println("<BODY>");
							out.printf("이름 : %s <br>", name);
							out.printf("제목 : %s <br>", title);
							out.println("-------------<br>");
							out.printf("<pre> %s </pre>", content);
							out.println("-------------<br>");
							out.println("저장되었습니다.");
							out.println("</BODY>");
							out.println("</HTML>");
						}
}
