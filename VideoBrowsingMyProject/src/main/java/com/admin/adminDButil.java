package com.admin;

import java.sql.Connection;


import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class adminDButil {
	
	public static boolean isSuccess;
	
	public static boolean createad( String companyName, String contactPerson, String email, String phone, String messege) {
		
		boolean isSuccess = false; 
		
				//create database connection
				String url ="jdbc:mysql://localhost:3306/video";
				String user = "root";
				String pass = "We1c0me@002";				
				
				try {
					System.out.print("bd ekat awa");
					Class.forName("com.mysql.jdbc.Driver");			
				    Connection con = DriverManager.getConnection(url, user, pass);		    
				    Statement stmt = con.createStatement();		    
				    String sql = "insert into advertiser values('"+companyName+"', '"+contactPerson+ "', '"+email+ "','"+phone+ "','" +messege+ "')";
				    int rs = stmt.executeUpdate(sql);	
				    
				    if(rs > 0) {
				    	isSuccess = true;
				    }
				    else {
				    	isSuccess = false;
				    }
				}		
				catch (Exception e) {
					e.printStackTrace();
				}
		
		
		
		return isSuccess;
	}
	
	public static List<Advertiser> getadvertiser(String email) {
		
		ArrayList<Advertiser> adv = new ArrayList<>();
		
		try {
			
			//create database connection
			String url ="jdbc:mysql://localhost:3306/video";
			String user = "root";
			String pass = "We1c0me@002";
							
			Class.forName("com.mysql.jdbc.Driver");			
		    Connection con = DriverManager.getConnection(url, user, pass);		    
		    Statement stmt = con.createStatement();	
		    
		    System.out.println("database connect una");
			
			String sql = "select * from advertiser where email='"+email+"'";
			ResultSet rs = stmt.executeQuery(sql);
			
			System.out.println("query eka run una");
			
			while (rs.next()) {
				
				String companyName = rs.getString(1);
				String contactPerson = rs.getString(2);
				String email1 = rs.getString(3);
				String phone = rs.getString(4);
				String messege = rs.getString(5);
				
				Advertiser adv1 = new Advertiser( companyName, contactPerson, email1, phone, messege);
				adv.add(adv1);
				System.out.println("read wengmn");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return adv;	
	}
		
    public static boolean updateadvertiser(String companyName,String contactPerson, String email,String phone,String messege) {
		
		try {
			
			String url ="jdbc:mysql://localhost:3306/video";
			String user = "root";
			String pass = "We1c0me@002";
							
			Class.forName("com.mysql.jdbc.Driver");			
		    Connection con = DriverManager.getConnection(url, user, pass);		    
		    Statement stmt = con.createStatement();	
		    
			String sql = "update advertiser set companyName='"+companyName+"' , contactPerson='"+contactPerson+"', phone= '"+phone+"' , messege='"+messege+"'" + "where email='"+email+"'";
			
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}

public static boolean deleteAdvertiser(String Email) {
	
	
	try {
		
		String url ="jdbc:mysql://localhost:3306/video";
		String user = "root";
		String pass = "We1c0me@002";
						
		Class.forName("com.mysql.jdbc.Driver");			
	    Connection con = DriverManager.getConnection(url, user, pass);		    
	    Statement stmt = con.createStatement();	
		String sql = "delete from advertiser where email ='"+Email+"'";
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
