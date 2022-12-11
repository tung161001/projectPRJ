package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class BaseDAO {
protected Connection connection;
    public BaseDAO() throws SQLException
    {
        //@Students: You are allowed to edit user, pass, url variables to fit 
        //your system configuration
        //You can also add more methods for Database Interaction tasks. 
        //But we recommend you to do it in another class
        // For example : StudentDBContext extends DBContext , 
        //where StudentDBContext is located in dal package, 
        try {
            String user = "sa";
            String pass = "123";
            String url = "jdbc:sqlserver://localhost:1433;databaseName=Booking_Hotel";
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            connection = DriverManager.getConnection(url, user, pass);
        } catch (ClassNotFoundException | SQLException ex) {
            System.out.println("error connection sql");
        }
    }
}
