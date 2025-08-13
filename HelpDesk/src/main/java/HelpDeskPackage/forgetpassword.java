package HelpDeskPackage;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/forgetpassword")
public class forgetpassword extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		
		boolean isTrue;
		isTrue = SignUpControl.updatepassword(password, email);
		
		 if(isTrue == true) {
			 String alertMessage = "Change Succesful";
			 response.getWriter().println("<script>alert('"+alertMessage+"')</script>");
			 RequestDispatcher dis = request.getRequestDispatcher("login.jsp");
				dis.forward(request, response);
		 }
		 
		 else {
			 RequestDispatcher dis2 = request.getRequestDispatcher("wrong.jsp");
			 dis2.forward(request, response);
		 }
	}

}
