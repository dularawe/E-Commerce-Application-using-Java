package folder;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "myProfile", urlPatterns = {"/myProfile"})
public class myProfile extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();

        String fname = request.getParameter("FirstName");
        String lname = request.getParameter("LastName");
        String dob = request.getParameter("DoB");
        String address = request.getParameter("Address");
        String gender = request.getParameter("Gender");
        int mobNo = Integer.parseInt(request.getParameter("Number"));
        String email = request.getParameter("Email");

        out.println("User data Added ...");

        addUserData a = new addUserData();
        a.insertUserData(fname, lname, dob, address, gender, mobNo, email);

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

