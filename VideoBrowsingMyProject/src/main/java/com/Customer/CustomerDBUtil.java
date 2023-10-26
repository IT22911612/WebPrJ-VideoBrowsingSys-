package com.Customer;

import java.sql.Connection;


import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class CustomerDBUtil {
	
	public static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;

   public static boolean validate(String username,String password) {
	   
	   try {
		   con = DBConnect.getConnection();
		   stmt = con.createStatement();
		   String sql = "select * from user where username = '"+username+"' and password = '"+password+"'";
		   rs = stmt.executeQuery(sql);
		   
		   if(rs.next()) {
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
   
   public static List<Customer> getCustomer(String userName){
	   
	   ArrayList <Customer> customer = new ArrayList<>();
	   
	   try {
		   con = DBConnect.getConnection();
		   stmt = con.createStatement();
		   String sql = "select * from user where username = '"+userName+"'";
		   rs = stmt.executeQuery(sql);
		   
		   while(rs.next()) {
			   int id = rs.getInt(1);
			   String name = rs.getString(2);
			   String email = rs.getString(3);
			   String phone = rs.getString(4);
			   String username = rs.getString(5);
			   String password = rs.getString(6);
			   
			   Customer cus = new Customer(id,name,email,phone,username,password);
			   customer.add(cus);
		   }
	   }
	   catch(Exception e) {
		   
	   }
	   
	   return customer;
   }
	
	public static boolean insertuser(String name, String email, String phone, String username, String password){
		
		boolean isSuccess = false;
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "insert into user values(0,'"+name+"' , '"+email+"' , '"+phone+"' , '"+username+"' , '"+password+"')";
			int rs = stmt.executeUpdate(sql);
			   
			if(rs > 0) {
				 isSuccess = true;
			}
		
		  }
		catch(Exception e){
			e.printStackTrace();
		}
		
		
		
		return isSuccess;
	}
	
	public static boolean updatecustomer(String id,String name,String email,String phone,String username,String password) {
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "update user set name='"+name+"' ,email = '"+email+"' , phone= '"+phone+"' , username='"+username+"' , password ='"+password+"'" + "where id='"+id+"'";
			
			
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
	
	public static List <Customer> getCustomerDetails(String Id){
		
		int convertID = Integer.parseInt(Id);
		
		ArrayList <Customer> cus = new ArrayList<>();
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from user where id = '"+convertID+"'";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getNString(2);
				String email = rs.getNString(3);
				String phone = rs.getNString(4);
				String username = rs.getNString(5);
				String password = rs.getNString(6);
				
				Customer c = new Customer(id,name,email,phone,username,password);
				cus.add(c);
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return cus;
	}
	
	public static boolean deleteCustomer(String id) {
		
		int convId = Integer.parseInt(id);
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "delete from user where id ='"+convId+"'";
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