package HelpDeskPackage;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/InsertServelet1")
public class InsertServelet1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 String firstname=request.getParameter("firstname");
		 String lastname=request.getParameter("lastname");
		 String email=request.getParameter("email");
		 String password=request.getParameter("password");
		 String confirmpassword=request.getParameter("confirmpassword");
		 String phonenumber=request.getParameter("phonenumber");
		 
		 boolean isTrue;
		 
		 isTrue = SignUpControl.insertData(firstname, lastname, email, password, confirmpassword,phonenumber);
		 
		 if(isTrue == true) {
			 String alertMessage = "Data Insert Succesful";
			 response.getWriter().println("<script>alert('"+alertMessage+"')</script>");
			 RequestDispatcher dis = request.getRequestDispatcher("home.jsp");
				dis.forward(request, response);
		 }
		 
		 else {
			 RequestDispatcher dis2 = request.getRequestDispatcher("wrong.jsp");
			 dis2.forward(request, response);
		 }
	}

}
