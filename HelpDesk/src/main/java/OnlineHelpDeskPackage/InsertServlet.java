package OnlineHelpDeskPackage;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/InsertServlet")
public class InsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int tid = 0;
		int uid = Integer.parseInt(request.getParameter("uid"));
		String name = request.getParameter("name");
		String topic = request.getParameter("topic");
		String subject = request.getParameter("subject");
		String description = request.getParameter("description");
		String status = request.getParameter("status");
	
		boolean isTrue = TicketController.insertdata(tid, uid, name, topic, subject, description, status);
	
		if (isTrue) {
			// Set request attributes
			request.setAttribute("uid", uid);
			request.setAttribute("name", name);
			request.setAttribute("topic", topic);
			request.setAttribute("subject", subject);
			request.setAttribute("description", description);
			request.setAttribute("status", status);
	
			// Forward to confirmation.jsp
			RequestDispatcher dispatcher = request.getRequestDispatcher("confirmation.jsp");
			dispatcher.forward(request, response);
		} else {
			RequestDispatcher dis2 = request.getRequestDispatcher("wrong.jsp");
			dis2.forward(request, response);
		}
	}

}
