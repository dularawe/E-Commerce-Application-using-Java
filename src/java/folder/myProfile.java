package folder;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "myProfile", urlPatterns = {"/myProfile"})
public class myProfile extends HttpServlet {
 private static final Logger logger = Logger.getLogger(myProfile.class.getName());
    @Override
   protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        try {
            String fname = request.getParameter("FirstName");
            String lname = request.getParameter("LastName");
            String address = request.getParameter("Address");
            String gender = request.getParameter("Gender");
            int mobNo = Integer.parseInt(request.getParameter("Number"));
            String email = request.getParameter("Email");
            addUserData a = new addUserData();
            boolean success = a.insertUserData(fname, lname, address, gender, mobNo, email);
            if (success) {
                out.println("User Data Adding Success !!!");
            } else {
                out.println("Failed to add user data.");
                response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
            }
        } catch (Exception e) {
            logger.severe("Error occurred while processing user data: " + e.getMessage());
            out.println("An error occurred while processing your request. Please try again later.");
            response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
        }
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Temporarily set the session ID for testing
        String sessionId = "1";

        // Retrieve user data from the database based on the session ID
        addUserData a = new addUserData();
        UserData userData = a.loadUserData(sessionId);

        // Set user data as request attributes
        request.setAttribute("userData", userData);

        // Forward the request to the JSP page
        RequestDispatcher dispatcher = request.getRequestDispatcher("/myProfile.jsp");
        dispatcher.forward(request, response);
    }


}
