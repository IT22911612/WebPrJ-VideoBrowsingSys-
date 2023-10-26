package model;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.writer.writer;

import DBconnection.dbconnection;


public class writerDBUtil {
	
	public static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	public static boolean validate(String NIC){
		
			
			//validate
			try {
				
				con = dbconnection.getConnection();//create connection(connection inside try catch is checking errors in db connection)
				stmt = con.createStatement();
				
			
				String sql = "select * from writer where nic='"+NIC+"'";//sql query to select the suitable writer and get details
				rs = stmt.executeQuery(sql);//run the sql query(Using exceptions in sql)
				
				if(rs.next()) {
					isSuccess = true;	
				}
				else {
					isSuccess = false;
				}
				
			}
			catch(Exception e){ //catch the error
				e.printStackTrace();//print the error
				
			}
			
			return isSuccess;
			
		}
	
	public static List<writer> getWriterDetails2(String NIC){
		ArrayList<writer> writer = new ArrayList<>();
		
		try {
			con = dbconnection.getConnection();
			stmt = con.createStatement();
			
			String sql = "select * from writer where nic='"+NIC+"'";//sql query to select the suitable writer and get details
			rs = stmt.executeQuery(sql);//run the sql query
			
			while(rs.next()) {
				int writerid = rs.getInt(1);
				 String name = rs.getString(2);
				 String email= rs.getString(3);
				 String phone = rs.getString(4);
				 String nic = rs.getString(5);
				 String linkdin= rs.getString(6); 
				 String youtube= rs.getString(7);
				 String website= rs.getString(8);
				 
				 writer cus = new writer(writerid,name,email,phone,nic,linkdin,youtube,website);
				
				 writer.add(cus);
			}
			
			
		}
		catch(Exception e){
			
		}
		
		return writer;
	
}
	//insert data
		public static boolean insertWriter(String name, String email, String phone, String nic, String linkdin, String youtube, String website)  {
			
			
			boolean isSuccess = false;
			
			
			try {//try the content inside block
				
				con = dbconnection.getConnection();
				stmt = con.createStatement();
				
				String sql = "insert into writer values (0,'"+name+"','"+email+"','"+phone+"','"+nic+"','"+linkdin+"','"+youtube+"','"+website+"')";//sql query
	    		int rs = stmt.executeUpdate(sql);//store executeUpdate value in integer variable
	    		//executeUpdate statement return 2 values as 0 and 1
	    		//if value 0 unsuccess and if value 1 Success
	    		if(rs > 0) {
	    			isSuccess = true;
	    		} else {
	    			isSuccess = false;
	    		}
	    		
	    	}
	    	catch (Exception e) {//catch if there is an error
	    		e.printStackTrace();//print that error
	    	}
			
			
			
			return isSuccess;	
			
		}
		
		
		//update data
		public static boolean updateWriter(String writerid, String name, String email, String phone, String nic, String linkdin, String youtube, String website) {//parameters are the variables in updateServlet class
			
			boolean isSuccess = false;
	try {
	    		
	    		con = dbconnection.getConnection();
	    		stmt = con.createStatement();
	    		String sql = "update writer set name='"+name+"',email='"+email+"',phone='"+phone+"',nic='"+nic+"',linkdin='"+linkdin+"',youtube='"+youtube+"',website='"+website+"'"
	    				+ "where writerid='"+writerid+"'";
	    		int rs = stmt.executeUpdate(sql);
	    		
	    		if(rs > 0) {
	    			isSuccess = true;//rs=1
	    		}
	    		else {
	    			isSuccess = false;//rs=0 
	    		}
	    		
	    	}
	    	catch(Exception e) {
	    		e.printStackTrace();
	    	}
			
			return isSuccess;	
			
		}
		
		//retrieve data
		public static List<writer> getWriterDetails(String writerid){//list of student details
			
			int convertedID = Integer.parseInt(writerid);//convert string value into integer value
			
			ArrayList<writer> cus = new ArrayList<>();
			
	try {
	    		stmt = con.createStatement();
	    		String sql = "select * from writer where writerid='"+convertedID+"'";
	    		rs = stmt.executeQuery(sql);
	    		
	    		while(rs.next()) {
	    			int cid = rs.getInt(1);
					 String name = rs.getString(2);
					 String email= rs.getString(3);
					 String phone = rs.getString(4);
					 String nic = rs.getString(5);
					 String linkdin= rs.getString(6); 
					 String youtube= rs.getString(7);
					 String website= rs.getString(8);
					
	    			//pass the values to the object in a student class through a constructor
					 writer c = new writer(cid,name,email,phone,nic,linkdin,youtube,website);//parameterize constructor
	    			cus.add(c);//pass the student object to arraylist object
	    		}
	    		
	    	}
	    	catch(Exception e) {
	    		e.printStackTrace();
	    	}	
			
			return cus;
		}
		
		
		
		//delete profile	
		public static boolean deleteWriter(String writerid) {
			
			int convId = Integer.parseInt(writerid);
			boolean isSuccess = false;
			    	
			    	try {
			    		
			    		con = dbconnection.getConnection();
			    		stmt = con.createStatement();
			    		String sql = "delete from writer where writerid='"+convId+"'";
			    		int r = stmt.executeUpdate(sql);//executeUpdate method is use for insert, update, delete
			    		
			    		if (r > 0) {
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

		 
}
