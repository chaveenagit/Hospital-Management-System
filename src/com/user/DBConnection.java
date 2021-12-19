/**
 * IT19114736
 * De Silva K.C.C.C
 * 
 */

package com.user;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {
	//DB connection file
	
	private static String url = "jdbc:mysql://localhost:3306/hospital";
	private static String username = "root";
	private static String password = "Iplay123";
	private static Connection con;

	public static Connection getConnection() {
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			con = DriverManager.getConnection(url, username, password);
			
		}
		catch (Exception e) {
			System.out.println("Database connection is failed");
		}
		
		return con;
	}

}
