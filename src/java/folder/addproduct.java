package folder;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class addproduct {

    private Statement st;

    public void insertproduct(String ProductName, int Price, int ProductQuantity, String ProductDescription) {
        connectToDB();
        String query = "INSERT INTO products VALUES('" + ProductName + "'," + Price + "," + ProductQuantity + ",'" + ProductDescription + "')";
        try {
            st.executeUpdate(query);
            System.out.println("Record inserted");
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
    }

    private void connectToDB() {
        String driver = "com.mysql.jdbc.Driver";
        String url = "jdbc:mysql://localhost:3306/ecommerce";
        try {
            Class.forName(driver);
            Connection con = DriverManager.getConnection(url, "root", "");
            st = con.createStatement();
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(addproduct.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public static List<addproduct> getAllBooks() {
        throw new UnsupportedOperationException("Not supported yet.");
    }
}
