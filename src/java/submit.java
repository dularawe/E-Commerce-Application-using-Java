

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(urlPatterns = {"/submit"})
public class submit extends HttpServlet {

    protected void doget(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            string_username=request.getParameter("username");
            string_password=request.getParameter("password");
            if (_username != null && _password != null ){
                if(_username.equals("ranjith") && _password.equals("12345")){
                    response.sendRedirect("welcome.jsp");
                }else {
                    out.println("invalid user or password");
                }
            } else {
                out.println("empty username or password");
            }
        }
    }
    

 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
   
    
}
