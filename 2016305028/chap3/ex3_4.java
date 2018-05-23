import javax.servlet.http.*;
import javax.servlet.*;
import java.io.*;

public class ex3_4 extends HttpServlet {
	public void doGet(HttpServletRequest request,
						HttpServletResponse response)
						throws ServletException, IOException {

							int total = 0;
							for(int i=0;i<=100;i++) {
								total += i;
							}

							request.setAttribute("result", total);
							RequestDispatcher rd = request.getRequestDispatcher("ex3_4.jsp");
							rd.forward(request, response);
						}
}

//ex) javac 1.java -encoding UTF8