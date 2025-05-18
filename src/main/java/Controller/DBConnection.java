package Controller;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {
    
	 private static final String url = "jdbc:mysql://localhost:3306/`hospitalmanagementsystem`";
     private static final String user = "root";
     private static final String password = "admin";
     
     public static Connection connect;
     
     public static Connection getConnection () {
    	 try {
           Class.forName ("com.mysql.jdbc.Driver");
           connect = DriverManager.getConnection(url, user, password);
     }
    	 
     catch(Exception e) {
     
     System.out.println("Database Not Connect !");
     }
     return connect;
     }
}
