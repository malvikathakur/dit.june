package test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Try")
public class Try extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
     * @see HttpServlet#HttpServlet()
     */
    public Try() {
    	super();
    }
    /**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    
    protected void doGet(HttpServletRequest request,HttpServletResponse response){
    	
    	//step 1 set the content type
    	response.setContentType("text/html");
    	
    	
    	//step 2 printwriter
    	PrintWriter out;
		try {
			out = response.getWriter();
		
    	
    	//step3 generating html code
    	out.println("<html><body>");
    	
    	out.println("<h3> Hello World</h3>");
    	out.println("<hr>");
    	out.println("Time on the server is: "+ new java.util.Date());
    	
    	out.println("</body></html>");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    	
    }
}
	
	
	
	
	
	
	
	
	
	
	


