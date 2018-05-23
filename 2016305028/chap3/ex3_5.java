import javax.servlet.http.*;
import javax.servlet.*;
import java.io.*;
import java.util.Random;

public class ex3_5 extends HttpServlet {
	public void doGet(HttpServletRequest request,
						HttpServletResponse response)
						throws ServletException, IOException {

							int arr[] = new int[5];
							Random random = new Random();

							for(int i=0;i<arr.length; i++) {
								arr[i] = random.nextInt(10000000);
							}

							request.setAttribute("ARR", arr);
							RequestDispatcher rd = request.getRequestDispatcher("ex3_5.jsp");
							rd.forward(request, response);
						}
}

//ex) javac 1.java -encoding UTF8