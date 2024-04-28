import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class LoginServlet extends HttpServlet {

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        
        
        if ("admin@example.com".equals(email) && "password123".equals(password)) {
            HttpSession session = request.getSession();
            session.setAttribute("loggedInUser", email);
           
            response.sendRedirect("dashboard.jsp");
        } else {
            request.setAttribute("message", "Invalid email or password");
            
            RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
            dispatcher.forward(request, response);
        }
    }
}
