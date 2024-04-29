package folder;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class addUserData {

    private Connection con;

    public addUserData() {
        connectToDB();
    }

    public void insertUserData(String fname, String lname, String dob, String address, String gender, int mobNo, String email) {
    String query = "INSERT INTO users(fname,lname,dob,address,gender,mobNo,email) VALUES (?,?,?,?,?,?,?)";
try (PreparedStatement pst = con.prepareStatement(query)) {
    pst.setString(1, fname);
    pst.setString(2, lname);
    pst.setString(3, dob);
    pst.setString(4, address);
    pst.setString(5, gender);
    pst.setInt(6, mobNo);
    pst.setString(7, email);
    pst.executeUpdate();
    System.out.println("Record inserted");
} catch (SQLException ex) {
    Logger.getLogger(addUserData.class.getName()).log(Level.SEVERE, null, ex);
}

}


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

}
