package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DataBaseConnection {
    
    private static final String URL = "jdbc:mysql://localhost:3306/hospital";
    private static final String USER = "root";
    private static final String PASSWORD = "root2002";

    // Private constructor to prevent instantiation
    private DataBaseConnection() {}

    // Method to get a new connection
    public static Connection getConnection() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver"); // Loading the MySQL driver
            Connection connection = DriverManager.getConnection(URL, USER, PASSWORD);
            System.out.println("Connection successful!");
            return connection;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return null; // Return null if connection fails
        }
    }
}
