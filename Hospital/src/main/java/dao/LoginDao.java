package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;



import moduls.User;

public class LoginDao {
	
	public static User authenticate(String email , String password) {
		
		String query ="SELECT idUser, fullName,phoneNumber, role FROM user WHERE email = ? AND password = ?";
		 User user = null;
		try {
		Connection connection = DataBaseConnection.getConnection();
		
		PreparedStatement pdst = connection.prepareStatement(query);
		
		pdst.setString(1, email);
		pdst.setString(2, password);
		System.out.println("Executing query: " + pdst.toString()); // Log de la requête
		
		ResultSet rs = pdst.executeQuery();
		
		if(rs.next()) {
			user = new User();
            user.setIdUser(rs.getInt("idUser"));
            System.out.println("the id is = " +user.getIdUser());
            user.setFullName(rs.getString("fullName"));
            user.setPhoneNumber(rs.getString("phoneNumber"));
            user.setRole(rs.getString("role"));
			
		}
		
	} catch (SQLException e) {
        e.printStackTrace();
    }
		System.out.println(user);
		return user;
		
	}


}
