/*IT19117874
 * Amarasinghe W.K.P.G
 */
package com.user;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class billDBUtil {
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	

	public static List<bill> validate(String billNo, int patientId){
		
		ArrayList<bill> bil = new ArrayList<>();
		

		
		try {
			con = DBConnection.getConnection();
			stmt = con.createStatement();
			String sql = "select * from bill where IdBill='"+billNo+"' and patientId='"+patientId+"'";
			rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				String bId =rs.getString(1);
				int pId = rs.getInt(2);
				int roomFee = rs.getInt(3);
				int docFee = rs.getInt(4);
				int testCharg = rs.getInt(5);
				int otherFee = rs.getInt(6);
				int totl = rs.getInt(7);
				
				bill b = new bill(bId,pId,roomFee,docFee,testCharg,otherFee,totl);
				bil.add(b);
				
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
		
		
		
		return bil;
		
	}
	
	public static boolean insertbill(String billNo, int patientId, int roomChargers, int doctorFee, int testFee, int otherChargers, int total) {
		boolean isSuccess = false;
		
		
		try {
			con = DBConnection.getConnection();
			stmt = con.createStatement();
			String sql = "insert into bill values ('"+billNo+"','"+patientId+"','"+roomChargers+"','"+doctorFee+"','"+testFee+"','"+otherChargers+"','"+total+"')";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				
				isSuccess = true;
				
			}
			else {
				
				isSuccess = false;
				
			}
			
			
		}
		
		catch (Exception e){
			e.printStackTrace();
		}
		
		
		
		return isSuccess;
		
	}
	
	public static boolean updatebill(String bId, int pId, int roomChar, int docFee, int testsFee, int otherCha, int Total) {
		
try {
    		
    		con = DBConnection.getConnection();
    		stmt = con.createStatement();
    		String sql = "update bill set patientId='"+pId+"',roomChargers='"+roomChar+"',doctorFee='"+docFee+"',testFees='"+testsFee+"',otherChargers='"+otherCha+"',total='"+Total+"'"
    				+ "where IdBill='"+bId+"'";
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

	
	public static List<bill> getbillDetails(String bId ){
		
		ArrayList<bill> bil = new ArrayList<>();
		
		try {
			
			con = DBConnection.getConnection();
			stmt = con.createStatement();
			String sql = "select * from bill where IdBill='"+bId+"'";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				String bid = rs.getString(1);
				int pid =rs.getInt(2);
				int roomCh =rs.getInt(3);
				int doctCh =rs.getInt(4);
				int testFee =rs.getInt(5);
				int otheCh =rs.getInt(6);
				int total =rs.getInt(7);
				
				bill b = new bill(bid, pid, roomCh, doctCh, testFee, otheCh, total);
				bil.add(b);
				
			}
			
		}
		catch(Exception e){
			e.printStackTrace();
		
		}
		
		return bil;
		
	}
	
	public static boolean deletebill(String bId) {
		
		try {
			con = DBConnection.getConnection();
			stmt = con.createStatement();
			String sql = "delete from bill where IdBill='"+bId+"'";
			int r = stmt.executeUpdate(sql);
			
			if(r > 0) {
				
				isSuccess = true;
				
			}
			else {
				
				isSuccess = false;
				
			}
			
		}
		catch(Exception e){
			e.printStackTrace();
		
		}
		
		
		return isSuccess;
		
	}
	
	
}

