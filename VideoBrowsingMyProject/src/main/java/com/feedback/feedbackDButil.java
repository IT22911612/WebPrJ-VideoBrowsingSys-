package com.feedback;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class feedbackDButil {
	public static boolean isSuccess;
	
	public static boolean createfeedback( String name, String email, String feedback) {
		
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
				    String sql = "insert into feedback values('"+name+"',  '"+email+ "','" +feedback+ "')";
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
	
	  public static List<feedback> getfeedback(String email) {
		
		ArrayList<feedback> feedb = new ArrayList<>();
		
		try {
			
			//create database connection
			String url ="jdbc:mysql://localhost:3306/video";
			String user = "root";
			String pass = "We1c0me@002";
							
			Class.forName("com.mysql.jdbc.Driver");			
		    Connection con = DriverManager.getConnection(url, user, pass);		    
		    Statement stmt = con.createStatement();	
		    
		    System.out.println("database connect una");
			
			String sql = "select * from feedback where email='"+email+"'";
			ResultSet rs = stmt.executeQuery(sql);
			
			System.out.println("query eka run una");
			
			while (rs.next()) {
				
				String name = rs.getString(1);
				String email1 = rs.getString(2);
				String feedback = rs.getString(3);

				
				feedback fd = new feedback(name, email1,feedback);
				feedb.add(fd);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return feedb;	
	}
	  
	  public static boolean updatefeedback(String name,String email,String feedback ) {
			
			try {
				
				String url ="jdbc:mysql://localhost:3306/video";
				String user = "root";
				String pass = "We1c0me@002";
								
				Class.forName("com.mysql.jdbc.Driver");			
			    Connection con = DriverManager.getConnection(url, user, pass);		    
			    Statement stmt = con.createStatement();	
			    
				String sql = "update feedback set name='"+name+"' , feedback='"+feedback+"'" + "where email='"+email+"'";
				
				
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

	public static boolean deleteFeedback(String Email) {
		
		
		try {
			
			String url ="jdbc:mysql://localhost:3306/video";
			String user = "root";
			String pass = "We1c0me@002";
							
			Class.forName("com.mysql.jdbc.Driver");			
		    Connection con = DriverManager.getConnection(url, user, pass);		    
		    Statement stmt = con.createStatement();	
			String sql = "delete from feedback where email ='"+Email+"'";
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


		