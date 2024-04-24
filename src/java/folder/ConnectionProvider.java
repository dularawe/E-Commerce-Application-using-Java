/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package folder;
import java.sql.*;
public class ConnectionProvider {
    public static Connection getCon()
    {
        try{
           class.forName("com.mysql.cj.jdbc.Driver") ;
        }
       catch(Exception e)
       {
           
       } 
    
    }
}
