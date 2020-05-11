package test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class helloWorld
 */
@WebServlet("/helloWorld")
public class helloWorld extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public helloWorld() {
        super();
    }


	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)  {
		response.setContentType("text/html");
		
PrintWriter out;
		try{
			out=response.getWriter();
			out.println("<html><title>just checking</title><body>");
			out.println("<h1>WASTING TIME</h1>");
			out.println("<p>Hey! I am just checking while wasting my time that does this p tag works in this servlet?</p><br>");
			out.println("<p> I am feeling so sleepy and I am hating this cuz I have to wait for my certificate. Gaawwwddd this is the only thing I am HATING in this Government thing. LIKE COME ON TIME IS PRECIOUS FOR EVERYONE but still Iam trying to use it in a slightly better way. GOD HELP MEEE.");
			out.println("</body></html>");
		} catch(IOException e){
			e.printStackTrace();
		}

	}

	

}
