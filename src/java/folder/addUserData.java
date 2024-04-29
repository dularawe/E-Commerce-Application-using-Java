package folder;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class addUserData {

    private Connection con;

    public addUserData() {
        connectToDB();
    }

  public boolean insertUserData(String fname, String lname, String address, String gender, int mobNo, String email) {
    String query = "INSERT INTO users (FirstName, LastName, Address, Gender, Mobile, Email) VALUES (?, ?, ?, ?, ?, ?)";
    try (PreparedStatement pst = con.prepareStatement(query)) {
        pst.setString(1, fname);
        pst.setString(2, lname);
        pst.setString(3, address);
        pst.setString(4, gender);
        pst.setInt(5, mobNo);
        pst.setString(6, email);
        int rowsAffected = pst.executeUpdate();
        System.out.println("Record inserted");
        return rowsAffected > 0; // Return true if at least one row was affected
    } catch (SQLException ex) {
        Logger.getLogger(addUserData.class.getName()).log(Level.SEVERE, null, ex);
        return false; // Return false if an exception occurred
    }
}
public boolean loadUserData(String id) {
    String query = "SELECT * FROM users WHERE ID = ?";
    try (PreparedStatement pst = con.prepareStatement(query)) {
        pst.setString(1, id);
        ResultSet rs = pst.executeQuery();
        if (rs.next()) {
            // Retrieve user data from the result set
            String fname = rs.getString("FirstName");
            String lname = rs.getString("LastName");
            String address = rs.getString("Address");
            String gender = rs.getString("Gender");
            int mobNo = rs.getInt("Mobile");
            String email = rs.getString("Email");
            
            // You can use the retrieved data here as needed
            // For example, you can print it or use it to populate an object
            
            System.out.println("User data loaded successfully");
            return true;
            //return new UserData(fname, lname, address, gender, mobNo, email);
        } else {
            System.out.println("No user found with ID: " + id);
            return false;
        }
    } catch (SQLException ex) {
        ex.printStackTrace(); // Print the stack trace for debugging
        return false; // Return false if an exception occurred
    }
}

<<<<<<< Updated upstream
}
        public UserData loadUserData(String id) {
        String query = "SELECT * FROM users WHERE ID = ?";
        try (PreparedStatement pst = con.prepareStatement(query)) {
            pst.setString(1, id);
            ResultSet rs = pst.executeQuery();
            if (rs.next()) {
                // Retrieve user data from the result set
                String fname = rs.getString("fname");
                String lname = rs.getString("lname");
                String dob = rs.getString("dob");
                String address = rs.getString("address");
                String gender = rs.getString("gender");
                int mobNo = rs.getInt("mobNo");
                String email = rs.getString("email");

                // Create a new UserData object and return it
                return new UserData(fname, lname, dob, address, gender, mobNo, email);
            } else {
                System.out.println("No user found with ID: " + id);
                return null;
            }
        } catch (SQLException ex) {
            ex.printStackTrace(); // Print the stack trace for debugging
            return null; // Return null if an exception occurred
        }
    }


=======
  
  
>>>>>>> Stashed changes
    private void connectToDB() {
        String driver = "com.mysql.jdbc.Driver";
        String url = "jdbc:mysql://localhost:3306/ecommerce";
        try {
            Class.forName(driver);
            con = DriverManager.getConnection(url, "root", "");
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(addUserData.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    boolean insertUserData(String fname, String lname, String address, String gender, int mobNo, String email) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
