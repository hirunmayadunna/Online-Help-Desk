package HelpDeskPackage;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/LoginServelet")
public class LoginServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String Email = request.getParameter("email");
		String Password = request.getParameter("password");
		boolean isTrue;
		
		isTrue = SignUpControl.validate(Email, Password);
		
		if (isTrue == true) {
				RequestDispatcher dis = request.getRequestDispatcher("home.jsp");
				dis.forward(request, response);
		} else {
				out.println("<script type ='text/javascript'>");
				out.println("alert('Your email or password is incorrect');");
				out.println("location='login.jsp'");
				out.println("</script>");
		}
		
	}

}
