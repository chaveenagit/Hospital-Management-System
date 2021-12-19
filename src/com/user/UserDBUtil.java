/**
 * IT19114736
 * De Silva K.C.C.C
 * 
 */

package com.user;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class UserDBUtil {
	
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	 public static List<User> validate(String userName, String password){
		 
		 ArrayList<User> u = new ArrayList<>();
		 
		 
		 //validate and store
		 try {
			 
			//get connection
			 con = DBConnection.getConnection();
			 stmt = con.createStatement();
		 
			 String sql = "select * from user where username='"+userName+"' and password='"+password+"'";
			 
			 rs = stmt.executeQuery(sql);
			 
			 if(rs.next()) {
					int iduser = rs.getInt(1);
					String name = rs.getString(2);
					int age = rs.getInt(3);
					String phone = rs.getString(4);
					String address = rs.getString(5);
					String gender = rs.getString(6);
					String usernameU = rs.getString(7);
					String passwordU = rs.getString(8);
					
					User us = new User(iduser,name,age,phone,address,gender,usernameU,passwordU);
					u.add(us);
			 }
			 
			}
		 catch(Exception e) {
			 e.printStackTrace();
		 }
		 
		 return u;
		 
	 }
	

}
