package folder;

import static com.mysql.cj.x.protobuf.MysqlxPrepare.Prepare.OneOfMessage.Type.INSERT;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
/**
 *
 * @author LENOVO
 */
public class Products {
    private Statement st;
    
    public void  insertProducts(String ProcuctsName, int Price ProductsQuantity, String ProductsDescription, String ProductsImage){
        connectToDB();
        String query = INSERT INTO products (ProductsName, Price,ProductsQuantity,ProductsDescription, ProductsImage) VALUES ('" + ProductsName + "', " + Price + ", " + ProductsQuantity + ", '" + ProductsDescription + "', '" + ProductsImage + "')"; 
     
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
            Logger.getLogger(addProduct.class.getName()).log(Level.SEVERE, null, ex)
        }
    }
    
    public static List<addProduct> getAllBooks(){
        throw new UnsupportedOperationException("Not supported yet.")
    }
    
}
