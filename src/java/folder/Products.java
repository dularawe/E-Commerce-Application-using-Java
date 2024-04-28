package folder;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Products {
    private Statement st;
    
    public void insertProducts(String ProductsName, int Price, int ProductsQuantity, String ProductsDescription, String ProductsImage){
        connectToDB();
        String query = "INSERT INTO products (ProductsName, Price, ProductsQuantity, ProductsDescription, ProductsImage) VALUES ('" + ProductsName + "', '" + Price + "', '" + ProductsQuantity + "', '" + ProductsDescription + "', '" + ProductsImage + "')"; 
     
        try{
            st.executeUpdate(query);
            System.out.println("Record inserted");
        } catch (SQLException ex){
            System.out.println(ex.getMessage());
        }
    }
    
    private void connectToDB(){
        String driver = "com.mysql.jdbc.Driver";
        String url = "jdbc:mysql://localhost:3306/ecommerce";
        
        try{
            Class.forName(driver);
            Connection con = DriverManager.getConnection(url, "root", "");
            st = con.createStatement();
            
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(Products.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    

            }