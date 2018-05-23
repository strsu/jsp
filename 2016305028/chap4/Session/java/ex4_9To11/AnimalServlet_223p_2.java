import javax.servlet.http.*;
import javax.servlet.*;
import java.io.*;

public class AnimalServlet_223p_2 extends HttpServlet {
	public void doGet(HttpServletRequest request,
						HttpServletResponse response)
						throws ServletException, IOException {
		String food = request.getParameter("FOOD");
		HttpSession session = request.getSession();
		session.setAttribute("FOOD", food);
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println("<html>");
		out.println("<head><title>성격 테스트</title></head>");
		out.println("<body>");
		out.println("<h3>좋아하는 동물은?</h3>");
		out.println("<form action=ResultServlet_223p_3>");
		out.println("<input type=textfield name=ANIMAL>");
		out.println("<input type=submit value=확인>");
		out.println("</form>");
		out.println("</body>");
		out.println("</html>");
	}
}

//ex) javac 1.java -encoding UTF8