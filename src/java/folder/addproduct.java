/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package folder;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author MSI
 */
class addproduct {

    void insertproduct(String p_name, String description, String image, int price, int quantity) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
     Statement st;
    void insertproduct(String p_name, int price, int quantity, String description, String image) {
            connectToDB();
            String query ="INSERT INTO product VALUES('"+p_name+"',"+price+","+quantity+",'"+description+"','"+image+"')";    
            try {
                st.executeUpdate(query);
                System.out.println("Record inserted");
            } catch (SQLException ex) {
                System.out.println(ex.getMessage());           
 }
}
private void connectToDB() {
        String driver= "com.mysql.jdbc.Driver";
        String url="jdbc:mysql://localhost:3306/ecommerce";
        try {
            Class.forName(driver);
            Connection con = DriverManager.getConnection(url, "root", "");
            st = con.createStatement();
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(addproduct.class.getName()).log(Level.SEVERE, null, ex);
        }
    }


}
   