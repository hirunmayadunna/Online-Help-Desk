package OnlineHelpDeskPackage;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UpdateServlet")
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int tid = Integer.parseInt(request.getParameter("tid"));
        String description = request.getParameter("description");

        boolean isUpdated = TicketController.updateDescription(tid, description);

        if (isUpdated) {
            request.setAttribute("message", "Ticket description updated successfully.");
        } else {
            request.setAttribute("message", "Failed to update the ticket description.");
        }

        RequestDispatcher dispatcher = request.getRequestDispatcher("GetAllServlet");
        dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
