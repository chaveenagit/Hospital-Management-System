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

public class PatientDBUtil {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	public static boolean addpatient(int id,String name, int age, String phone, String address, String gender, String Blood_group, String description) {
		    
	        boolean isSuccess = false;
	    	
	    	try {
	    		
	    		//get connection
	    		con = DBConnection.getConnection();
				stmt = con.createStatement();
				
				//insert values to patient table
	    	    String sql = "insert into patient values ('"+id+"','"+name+"','"+age+"','"+phone+"','"+address+"','"+gender+"','"+Blood_group+"','"+description+"')";
	   		    int rs = stmt.executeUpdate(sql);
	    		
	    		if( rs > 0 ) {
	    			isSuccess = true;
	    			
	    		} else {
	    			isSuccess = false;
	    			
	    		}	
	    	}
	    	catch (Exception e) {
	    		e.printStackTrace();
	    		
	    	}
	 	
	    	//return (inserted or not)
	    	return isSuccess;
	}


	public static List<Patient> validate(int iduser){
		 
		 ArrayList<Patient> pa = new ArrayList<>();
		 
		 
		 //validate and store
		 try {
			 
			//get connection
			 con = DBConnection.getConnection();
			 stmt = con.createStatement();
		 
			 //select from patient class
			 String sqls = "select * from patient where iduser = '"+iduser+"'";
			 rs = stmt.executeQuery(sqls);
			 
			 if(rs.next()) {
					int id = rs.getInt(1);
					String name = rs.getString(2);
					int age = rs.getInt(3);
					String phone = rs.getString(4);
					String address = rs.getString(5);
					String gender = rs.getString(6);
					String Blood_group = rs.getString(7);
					String description = rs.getString(8);
					
					Patient p = new Patient(id,name,age,phone,address,gender,Blood_group,description);
					pa.add(p);
			 }
			 
			}
		 catch(Exception e) {
			 e.printStackTrace();
		 }
		 
		 return pa;
		 
	}
	
	public static boolean updatepatient(int iduser, String name, int age, String phone, String address, String gender, String Blood_group, String description) {
    	
    	try {
   		
    		//get connection
   		    con = DBConnection.getConnection();
    		stmt = con.createStatement();
    		
    		//update patient table
    		String sql = "update patient set name='"+name+"',age='"+age+"',phone='"+phone+"',address='"+address+"',gender='"+gender+"',Blood_group='"+Blood_group+"',description='"+description+"'" + "where iduser='"+iduser+"'";
    		int rs = stmt.executeUpdate(sql);
    		
    		if(rs > 0) {
    			isSuccess = true;
    		}
    		else {
    			isSuccess = false;
    		}
    		
    	}
    	catch(Exception e) {
    		e.printStackTrace();
    	}
    	
    	return isSuccess;
    }
	
    public static List<Patient> getPatientDetails(int iduser) {
    	
    	ArrayList<Patient> pa = new ArrayList<>();
    	
    	try {
    		//get connection
    		con = DBConnection.getConnection();
    		stmt = con.createStatement();
    		
    		//select query
    		String sql = "select * from patient where iduser ='"+iduser+"'";
    		rs = stmt.executeQuery(sql);
    		
    		while(rs.next()) {
    			int id = rs.getInt(1);
				String name = rs.getString(2);
				int age = rs.getInt(3);
				String phone = rs.getString(4);
				String address = rs.getString(5);
				String gender = rs.getString(6);
				String Blood_group = rs.getString(7);
				String description = rs.getString(8);
    			
				Patient p = new Patient(id,name,age,phone,address,gender,Blood_group,description);
				pa.add(p);
    		}
    		
    	}
    	catch(Exception e) {
    		e.printStackTrace();
    	}	
    	return pa;	
    }
    
    
	public static boolean deletepatient(int iduser) {
    	
    	try {
   		
    		//get connection
   		    con = DBConnection.getConnection();
    		stmt = con.createStatement();
    		
    		//update patient table
    		String sql = "delete from patient where iduser='"+iduser+"'";
    		int r = stmt.executeUpdate(sql);
    		
    		if(r > 0) {
    			isSuccess = true;
    		}
    		else {
    			isSuccess = false;
    		}
    		
    	}
    	catch(Exception e) {
    		e.printStackTrace();
    	}
    	
    	return isSuccess;
    }
	
}
