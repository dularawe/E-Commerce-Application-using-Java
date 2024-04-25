package folder;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class addproduct {

    private Connection con;
    private PreparedStatement pst;

    public void insertproduct(String ProductName, int Price, int ProductQuantity, String ProductDescription, String ProductImage) {
        try {
            connectToDB();
            String query = "INSERT INTO products (ProductName, Price, ProductQuantity, ProductDescription, ProductImage) VALUES (?, ?, ?, ?, ?)";
            pst = con.prepareStatement(query);
            pst.setString(1, ProductName);
            pst.setInt(2, Price);
            pst.setInt(3, ProductQuantity);
            pst.setString(4, ProductDescription);
            pst.setString(5, ProductImage);
            pst.executeUpdate();
            System.out.println("Record inserted");
        } catch (SQLException ex) {
            Logger.getLogger(addproduct.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            closeResources();
        }
    }

    private void connectToDB() throws SQLException {
        String url = "jdbc:mysql://localhost:3306/ecommerce";
        String username = "root";
        String password = "";
        con = DriverManager.getConnection(url, username, password);
    }

    private void closeResources() {
        try {
            if (pst != null) {
                pst.close();
            }
            if (con != null) {
                con.close();
            }
        } catch (SQLException ex) {
            Logger.getLogger(addproduct.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
