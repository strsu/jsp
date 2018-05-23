import javax.servlet.http.*;
import javax.servlet.*;
import java.io.*;

public class ResultServlet_223p_3 extends HttpServlet {
	public void doGet(HttpServletRequest request,
						HttpServletResponse response)
						throws ServletException, IOException {
		HttpSession session = request.getSession();	// 세션을 얻어옴
		String food = (String) session.getAttribute("FOOD");
		String animal = request.getParameter("ANIMAL");
		session.invalidate();	// 세션을 끝내는 메서드
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println("<html>");
		out.println("<head><title>성격 테스트</title></head>");
		out.println("<body>");
		out.printf("당신은 %s와 %s를 좋아하는 성격입니다.",food,animal);
		out.println("</body>");
		out.println("</html>");
	}
}

//ex) javac 1.java -encoding UTF8