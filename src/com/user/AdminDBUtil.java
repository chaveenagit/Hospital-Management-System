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

public class AdminDBUtil {
	
	
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	 public static List<Admin> validateAdmin(String uname, String pwd){
		 
		 ArrayList<Admin> admin = new ArrayList<>();
		 
		 
		 //validate and store
		 try {
			 
			//get connection
			 con = DBConnection.getConnection();
			 stmt = con.createStatement();
		 
			 String sql = "select * from admin where uname='"+uname+"' and pwd='"+pwd+"'";
			 rs = stmt.executeQuery(sql);
			
			 if(rs.next()) {
				    
					int idadmin = rs.getInt(1);
					String name = rs.getString(2);
					String unameA = rs.getString(3);
					String pwdA = rs.getString(4);
					
					Admin a = new Admin(idadmin,name,unameA,pwdA);
					admin.add(a);
			 }
			 
			}
		 catch(Exception e) {
			 e.printStackTrace();
		 }
		 
		 return admin;
		 
	 }

}
