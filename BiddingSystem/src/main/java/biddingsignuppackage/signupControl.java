package biddingsignuppackage;

import java.sql.Connection;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


public class signupControl {
	//connect DB
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	
	//Insert data function
	public static boolean insertdata (String username,String email,String pword) {
		boolean isSuccess = false;
		
		try {
			//DB connection call
			con = DBConnection.getConncetion();
			stmt = con.createStatement();
			
			//SQL QUERY
			
			String sql = "Insert into sign values(0,'"+username+"','"+email+"','"+pword+"')";
			int rs = stmt.executeUpdate(sql);
			if(rs > 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}
	//getbyid
	
	public static List<signupModel> getByID (String Id){
		int convertedID = Integer.parseInt(Id);
		ArrayList <signupModel> sign = new ArrayList<>();
		
		try {
			// DB connection
			con=DBConnection.getConncetion();
			stmt=con.createStatement();
			
			//query
			String sql = "select * from sign where id = '"+convertedID+"'";
			
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int id = rs.getInt(1);
				String username = rs.getString(2);
				String email = rs.getString(3);
				String pword = rs.getString(4);
				
				signupModel sg = new signupModel(id,username,email,pword);
				sign.add(sg);
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return sign;
	}
	// get all data
	public static List<signupModel> getAllSign (){
		ArrayList <signupModel> signs = new ArrayList<>();
		try {
			// DB connection
			con=DBConnection.getConncetion();
			stmt=con.createStatement();
			
			//query
			String sql = "select * from sign";
			
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int id = rs.getInt(1);
				String username = rs.getString(2);
				String email = rs.getString(3);
				String pword = rs.getString(4);
				
				signupModel sg = new signupModel(id,username,email,pword);
				signs.add(sg);
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return signs;
	}
	
	//update data
	public static boolean updatedata(String id,String username,String email,String pword) {
		try {
			//DB connection
			con=DBConnection.getConncetion();
			stmt=con.createStatement();
			
			//sql query
			String sql ="update sign set username='"+username+"',email='"+email+"',pword='"+pword+"'"
						+"where id='"+id+"'";
			
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
	//delete Data
	public static boolean deletedata(String id) {
		int convID = Integer.parseInt(id);
		try {
			//DB connection
			con=DBConnection.getConncetion();
			stmt=con.createStatement();
			String sql = "delete from sign where id='"+convID+"'";
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
	
}
