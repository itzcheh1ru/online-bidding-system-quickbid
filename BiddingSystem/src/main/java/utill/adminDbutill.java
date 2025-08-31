package utill;

import java.sql.Connection;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


import model.admin;
import model.admindetail;
import model.bidder;
import model.bidderdetail;
import model.biddetails;
import model.feedbackdetails;
import model.listproduct;
import model.seller;
import model.sellerdetail;






public class adminDbutill {

	private static boolean isSuccess;
	private static Connection con ;
	private static Statement stmt;
	private static ResultSet rs ;
	
	
	//admin login validate
	public static boolean validate(String ausername,String apassword) {
		
		try {
			
			con = DBConnect.getConnection();//connecting data base
			stmt = con.createStatement();
			String sql="select * from admin where AdminUsername='"+ausername+"' and AdminPassword='"+apassword+"'";
			rs= stmt.executeQuery(sql);
		
			
			if(rs.next()) {
				
				isSuccess = true;
				
			}
			else
			{
				isSuccess = false;
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
			System.out.println("adminDbutill connection error!!!");
		}
		
		
		return isSuccess;
	}
	
	//bidder login validate
	public static boolean validate1(String busername,String bpassword) {
		
		try {
			
			con = DBConnect.getConnection();//connecting data base
			stmt = con.createStatement();
			String sql="select * from bidder where BidderUsername='"+busername+"' and BidderPassword='"+bpassword+"'";
			rs= stmt.executeQuery(sql);
		
			
			if(rs.next()) {
				
				isSuccess = true;
				
			}
			else
			{
				isSuccess = false;
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
			System.out.println("adminDbutill connection error!!!");
		}
		
		
		return isSuccess;
	}
	
	//seller login validate
	public static boolean validate2(String susername,String spassword) {
		
		try {
			
			con = DBConnect.getConnection();//connecting data base
			stmt = con.createStatement();
			String sql="select * from seller where SellerUsername='"+susername+"' and SellerPassword='"+spassword+"'";
			rs= stmt.executeQuery(sql);
		
			
			if(rs.next()) {
				
				isSuccess = true;
				
			}
			else
			{
				isSuccess = false;
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
			System.out.println("adminDbutill connection error!!!");
		}
		
		
		return isSuccess;
	}
	
	//get admin detalis
	public static List<admin> getadmin(String auserName){
		ArrayList<admin> adm=new ArrayList<>();
		
		try {
			con = DBConnect.getConnection(); 
			stmt = con.createStatement();
			String sql="select * from admin where AdminUsername='"+auserName+"'";
			rs= stmt.executeQuery(sql);
			
			while(rs.next()) {
				int id = rs.getInt(1);
				String name=rs.getString(2);
				String phone=rs.getString(3);
				String NIC=rs.getString(4);
				String username=rs.getString(5);
				String password=rs.getString(6);
				
				admin cus = new admin(id,name,phone,NIC,username,password);
				adm.add(cus);
			}
			
		}
		catch(Exception e) {
			
		}
		
		return adm;
		
	}
	
	
	//get bidder details
	public static List<bidder> getbidder(String buserName){
		ArrayList<bidder> bid=new ArrayList<>();
		
		try {
			con = DBConnect.getConnection(); 
			stmt = con.createStatement();
			String sql="select * from bidder where BidderUsername='"+buserName+"'";
			rs= stmt.executeQuery(sql);
			
			while(rs.next()) {
				int id = rs.getInt(1);
				String name=rs.getString(2);
				String phone=rs.getString(3);
				String NIC=rs.getString(4);
				String username=rs.getString(5);
				String password=rs.getString(6);
				
				bidder cus = new bidder(id,name,phone,NIC,username,password);
				bid.add(cus);
			}
			
		}
		catch(Exception e) {
			
		}
		return bid;
		
	}
	
	
	//get seller details
		public static List<seller> getseller(String suserName){
			ArrayList<seller> sel=new ArrayList<>();
			
			try {
				con = DBConnect.getConnection(); 
				stmt = con.createStatement();
				String sql="select * from seller";
				rs= stmt.executeQuery(sql);
				
				while(rs.next()) {
					int id = rs.getInt(1);
					String name=rs.getString(2);
					String phone=rs.getString(3);
					String NIC=rs.getString(4);
					String username=rs.getString(5);
					String password=rs.getString(6);
					
					seller cus = new seller(id,name,phone,NIC,username,password);
					sel.add(cus);
				}
				
			}
			catch(Exception e) {
				
			}
			
			return sel;
		}
		
	
	//get item details
	 public static List<listproduct> getproductDetails() {
	    	
	    
	    	
	    	ArrayList<listproduct> pro = new ArrayList<listproduct>();
	    	
	    	try {
	    		
	    		con = DBConnect.getConnection();
	    		stmt = con.createStatement();
	    		String sql = "select * from products  ";
	    		rs = stmt.executeQuery(sql);
	    		
	    		while(rs.next()) {
	    			int id = rs.getInt(1);
	    			String pname = rs.getString(2);
	    			String pdescription = rs.getString(3);
	    			Double pprice = rs.getDouble(4);
	    			int psellerid = rs.getInt(5);
	    			int pbidderid = rs.getInt(6);
	    			
	    			listproduct c = new listproduct (id,pname,pdescription,pprice,psellerid,pbidderid);
	    			pro.add(c);
	    		}
	    		
	    	}
	    	catch(Exception e) {
	    		e.printStackTrace();
	    		System.out.println("dbutill display item connection error!!");
	    	}	
	    	return pro;	
	    }
	
	 
	
	
	 //display feedback details
	 public static List<feedbackdetails> getfeedbackDetails() {
	    	
		    
	    	
	    	ArrayList<feedbackdetails> cus = new ArrayList<feedbackdetails>();
	    	
	    	try {
	    		
	    		con = DBConnect.getConnection();
	    		stmt = con.createStatement();
	    		String sql = "select * from feedback  ";
	    		rs = stmt.executeQuery(sql);
	    		
	    		while(rs.next()) {
	    			int id = rs.getInt(1);
	    			String feedbackdescription = rs.getString(2);
	    			int sellerid = rs.getInt(3);
	    			int bidderid = rs.getInt(4);
	    			
	    			
	    			feedbackdetails c = new feedbackdetails (id,feedbackdescription,sellerid,bidderid);
	    			cus.add(c);
	    		}
	    		
	    	}
	    	catch(Exception e) {
	    		e.printStackTrace();
	    		System.out.println("dbutill display feedback connection error!!");
	    	}	
	    	return cus;	
	    }
	 
	//display bid details
		 public static List<biddetails> getbidDetails() {
		    	
			    
		    	
		    	ArrayList<biddetails> abc = new ArrayList<biddetails>();
		    	
		    	try {
		    		
		    		con = DBConnect.getConnection();
		    		stmt = con.createStatement();
		    		String sql = "select * from bid  ";
		    		rs = stmt.executeQuery(sql);
		    		
		    		while(rs.next()) {
		    			int id = rs.getInt(1);
		    			String feedbackdescription = rs.getString(2);
		    			int sellerid = rs.getInt(3);
		    			int bidderid = rs.getInt(4);
		    			
		    			
		    			biddetails c = new biddetails (id,feedbackdescription,sellerid,bidderid);
		    			abc.add(c);
		    		}
		    		
		    	}
		    	catch(Exception e) {
		    		e.printStackTrace();
		    		System.out.println("dbutill display feedback connection error!!");
		    	}	
		    	return abc;	
		    }
		 
	 
	 //update item details
	 public static boolean updateitem(String id, String name, String description, String price, String sellerid, String bidderid) {
	    	
	    	try {
	    		
	    		con = DBConnect.getConnection();
	    		stmt = con.createStatement();
	    		String sql = "update products set ProductName='"+name+"',Productdescription='"+description+"',BidPrice='"+price+"',Sellerid='"+sellerid+"',Category='"+bidderid+"'"
	    				+ "where ProductID='"+id+"'";
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
	    		System.out.println("dbutill update connection error!!");
	    	}
	    	
	    	return isSuccess;
	    }
	 
	//update feedback details
		 public static boolean updatefeedback(String id, String description, String sellerid, String bidderid) {
		    	
		    	try {
		    		
		    		con = DBConnect.getConnection();
		    		stmt = con.createStatement();
		    		String sql = "update feedback set feedbackdescription='"+description+"',sellerid='"+sellerid+"',bidderid='"+bidderid+"'"
		    				+ "where id='"+id+"'";
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
		    		System.out.println("dbutill update connection error!!");
		    	}
		    	
		    	return isSuccess;
		    }
		 
		//update feedback details
		 public static boolean updatebid(String id, String description, String sellerid, String bidderid) {
		    	
		    	try {
		    		
		    		con = DBConnect.getConnection();
		    		stmt = con.createStatement();
		    		String sql = "update bid set ProductID='"+description+"',BidderID='"+sellerid+"',BidPrice='"+bidderid+"'"
		    				+ "where BidID='"+id+"'";
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
		    		System.out.println("dbutill update connection error!!");
		    	}
		    	
		    	return isSuccess;
		    }
	 
	//update bidder details
		 public static boolean updatebidder(String id, String name, String telephone, String NIC, String username, String password) {
		    	
		    	try {
		    		
		    		con = DBConnect.getConnection();
		    		stmt = con.createStatement();
		    		String sql = "update bidder set Biddername='"+name+"',BidderTelephone='"+telephone+"'BidderNIC='"+NIC+"',BidderUsername='"+username+"',BidderPassword='"+password+"'"
		    				+ "where BidderID='"+id+"'";
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
		    		System.out.println("dbutill update connection error!!");
		    	}
		    	
		    	return isSuccess;
		    }
	 
	 //insert admin details
	 public static boolean insertadmin(String name, String phone, String NIC, String username, String password) {
		 
		 boolean isSuccess = false;
		 
		 try {
	    		
	    		con = DBConnect.getConnection();
	    		stmt = con.createStatement();
	    		String sql = "insert into admin values(0,'"+name+"','"+phone+"','"+NIC+"','"+username+"','"+password+"')";
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
	    		System.out.println("dbutill insert connection error!!");
	    	}	
 		
		 
		 
		 
		 return isSuccess;
		 
		 
	 }
	 
	//insert seller details
		 public static boolean insertseller(String name, String phone, String NIC, String username, String password) {
			 
			 boolean isSuccess = false;
			 
			 try {
		    		
		    		con = DBConnect.getConnection();
		    		stmt = con.createStatement();
		    		String sql = "insert into seller values(0,'"+name+"','"+phone+"','"+NIC+"','"+username+"','"+password+"')";
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
		    		System.out.println("dbutill insert connection error!!");
		    	}	
	 		
			 
			 
			 
			 return isSuccess;
			 
			 
		 }
	 
	//insert bidder details
		 public static boolean insertbidder(String name, String phone, String NIC, String username, String password) {
			 
			 boolean isSuccess = false;
			 
			 try {
		    		
		    		con = DBConnect.getConnection();
		    		stmt = con.createStatement();
		    		String sql = "insert into bidder values(0,'"+name+"','"+phone+"','"+NIC+"','"+username+"','"+password+"')";
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
		    		System.out.println("dbutill insert connection error!!");
		    	}	
	 		
			 
			 
			 
			 return isSuccess;
			 
			 
		 }
	 
 //insert item details
	 
	 public static boolean insertitem(String id, String name, String desc, String price, String sid, String bid) {
		 
		 boolean isSuccess = false;
		 
		 try {
	    		
	    		con = DBConnect.getConnection();
	    		stmt = con.createStatement();
	    		String sql = "insert into products values('"+id+"','"+name+"','"+desc+"','"+price+"','"+sid+"','"+bid+"')";
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
	    		System.out.println("dbutill insert connection error!!");
	    	}	
 		
		 
		 
		 
		 return isSuccess;
		 
		 
	 }
	 
	//insert feedback details
	 
		 public static boolean insertfeedback(String id, String feedback,String sid, String bid) {
			 
			 boolean isSuccess = false;
			 
			 try {
		    		
		    		con = DBConnect.getConnection();
		    		stmt = con.createStatement();
		    		String sql = "insert into feedback values('"+id+"','"+feedback+"','"+sid+"','"+bid+"')";
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
		    		System.out.println("dbutill insert connection error!!");
		    	}	
	 		
			 
			 
			 
			 return isSuccess;
			 
			 
		 }
	 
		//insert bid details
		 
		 public static boolean insertbid(String id, String feedback,String sid, String bid) {
			 
			 boolean isSuccess = false;
			 
			 try {
		    		
		    		con = DBConnect.getConnection();
		    		stmt = con.createStatement();
		    		String sql = "insert into bid values('"+id+"','"+feedback+"','"+sid+"','"+bid+"')";
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
		    		System.out.println("dbutill insert connection error!!");
		    	}	
	 		
			 
			 
			 
			 return isSuccess;
			 
			 
		 }
	 //delete product
	 
	 public static boolean deleteproduct(String id) {
		 int convId = Integer.parseInt(id);
		 
		 try {

	    		con = DBConnect.getConnection();
	    		stmt = con.createStatement();
	    		String sql = "delete from products where ProductID='"+convId+"'";
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
	    		System.out.println("dbutill delete connection error!!");
	    	}	
		 
		 
		 return isSuccess;
	 }
	 
	 //delete feedback
	 
	 public static boolean deletefeedback(String id) {
		 int convId = Integer.parseInt(id);
		 
		 try {

	    		con = DBConnect.getConnection();
	    		stmt = con.createStatement();
	    		String sql = "delete from feedback where id='"+convId+"'";
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
	    		System.out.println("dbutill delete connection error!!");
	    	}	
		 
		 
		 return isSuccess;
	 }
	 
	//delete feedback
	 
		 public static boolean deletebid(String id) {
			 int convId = Integer.parseInt(id);
			 
			 try {

		    		con = DBConnect.getConnection();
		    		stmt = con.createStatement();
		    		String sql = "delete from bid where BidID='"+convId+"'";
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
		    		System.out.println("dbutill delete connection error!!");
		    	}	
			 
			 
			 return isSuccess;
		 }
	 
	 
	//delete bidder
	 
		 public static boolean deletebidder(String id) {
			 int convId = Integer.parseInt(id);
			 
			 try {

		    		con = DBConnect.getConnection();
		    		stmt = con.createStatement();
		    		String sql = "delete from bidder where BidderID='"+convId+"'";
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
		    		System.out.println("dbutill delete connection error!!");
		    	}	
			 
			 
			 return isSuccess;
		 }
		 
	 //view admin details
	 public static List<admindetail> getadminDetails() {
	    	
		    
	    	
	    	ArrayList<admindetail> cus = new ArrayList<admindetail>();
	    	
	    	try {
	    		
	    		con = DBConnect.getConnection();
	    		stmt = con.createStatement();
	    		String sql = "select * from admin  ";
	    		rs = stmt.executeQuery(sql);
	    		
	    		while(rs.next()) {
	    			int id = rs.getInt(1);
	    			String aname = rs.getString(2);
	    			String atelephone = rs.getString(3);
	    			String aNIC = rs.getString(4);
	    			String ausername = rs.getString(5);
	    			String apassword = rs.getString(6);
	    			
	    			admindetail c = new admindetail (id,aname,atelephone,aNIC,ausername,apassword);
	    			cus.add(c);
	    		}
	    		
	    	}
	    	catch(Exception e) {
	    		e.printStackTrace();
	    		System.out.println("dbutill display item connection error!!");
	    	}	
	    	return cus;	
	    }
	 
	//display seller details
		 public static List<sellerdetail> getsellerDetails() {
		    	
			    
		    	
		    	ArrayList<sellerdetail> sel1 = new ArrayList<sellerdetail>();
		    	
		    	try {
		    		
		    		con = DBConnect.getConnection();
		    		stmt = con.createStatement();
		    		String sql = "select * from seller";
		    		rs = stmt.executeQuery(sql);
		    		
		    		while(rs.next()) {
		    			int id = rs.getInt(1);
		    			String sname = rs.getString(2);
		    			String stelephone = rs.getString(3);
		    			String sNIC = rs.getString(4);
		    			String susername = rs.getString(5);
		    			String spassword = rs.getString(6);
		    			
		    			
		    			sellerdetail c = new sellerdetail (id,sname,stelephone,sNIC,susername,spassword);
		    			sel1.add(c);
		    		}
		    		
		    	}
		    	catch(Exception e) {
		    		e.printStackTrace();
		    		System.out.println("dbutill display seller connection error!!");
		    	}	
		    	return sel1;	
		    }
	 
	 //get bidder details
	 public static List<bidderdetail> getbidderDetails() {
	    	
		    
	    	
	    	ArrayList<bidderdetail> bid = new ArrayList<bidderdetail>();
	    	
	    	try {
	    		
	    		con = DBConnect.getConnection();
	    		stmt = con.createStatement();
	    		String sql = "select * from bidder  ";
	    		rs = stmt.executeQuery(sql);
	    		
	    		while(rs.next()) {
	    			int id = rs.getInt(1);
	    			String bname = rs.getString(2);
	    			String btelephone = rs.getString(3);
	    			String bNIC = rs.getString(4);
	    			String busername = rs.getString(5);
	    			String bpassword = rs.getString(6);
	    			
	    			bidderdetail c = new bidderdetail (id,bname,btelephone,bNIC,busername,bpassword);
	    			bid.add(c);
	    		}
	    		
	    	}
	    	catch(Exception e) {
	    		e.printStackTrace();
	    		System.out.println("dbutill display item connection error!!");
	    	}	
	    	return bid;	
	    }
	 //update admin details
	
	 public static boolean updateadmindetail(String id, String aname, String atelephone, String aNIC, String ausername, String apassword) {
	    	
	    	try {
	    		
	    		con = DBConnect.getConnection();
	    		stmt = con.createStatement();
	    		String sql = "update admin set Adminname='"+aname+"',AdminTelephone='"+atelephone+"',AdminNIC='"+aNIC+"',AdminUsername='"+ausername+"',AdminPassword='"+apassword+"'"
	    				+ "where AdminID='"+id+"'";
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
	    		System.out.println("dbutill update admin connection error!!");
	    	}
	    	
	    	return isSuccess;
	    }
	 
	 //update seller details
		
	 public static boolean updatesellerdetail(String id, String sname, String stelephone, String sNIC, String susername, String spassword) {
	    	
	    	try {
	    		
	    		con = DBConnect.getConnection();
	    		stmt = con.createStatement();
	    		String sql = "update seller set Sellername='"+sname+"',SellerTelephone='"+stelephone+"',SellerNIC='"+sNIC+"',SellerUsername='"+susername+"',SellerPassword='"+spassword+"'"
	    				+ "where SellerID='"+id+"'";
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
	    		System.out.println("dbutill update admin connection error!!");
	    	}
	    	
	    	return isSuccess;
	    }
	 
	//update bidder details
		
		 public static boolean updatebidderdetail(String id, String bname, String btelephone, String bNIC, String busername, String bpassword) {
		    	
		    	try {
		    		
		    		con = DBConnect.getConnection();
		    		stmt = con.createStatement();
		    		String sql = "update bidder set Biddername='"+bname+"',BidderTelephone='"+btelephone+"',BidderNIC='"+bNIC+"',BidderUsername='"+busername+"',BidderPassword='"+bpassword+"'"
		    				+ "where BidderID='"+id+"'";
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
		    		System.out.println("dbutill update admin connection error!!");
		    	}
		    	
		    	return isSuccess;
		    }
	 
	 // admin account delete
	 public static boolean deleteadminaccount(String aNIC) {
		 
		 
		 try {

	    		con = DBConnect.getConnection();
	    		stmt = con.createStatement();
	    		String sql = "delete from admin where AdminNIC='"+aNIC+"'";
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
	    		System.out.println("dbutill delete admin account connection error!!");
	    	}	
		 
		 
		 return isSuccess;
	 }
	 
	// bidder account delete
		 public static boolean deletebidderaccount(String bNIC) {
			 
			 
			 try {

		    		con = DBConnect.getConnection();
		    		stmt = con.createStatement();
		    		String sql = "delete from bidder where BidderNIC='"+bNIC+"'";
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
		    		System.out.println("dbutill delete admin account connection error!!");
		    	}	
			 
			 
			 return isSuccess;
		 }


// seller account delete
public static boolean deleteselleraccount(String sNIC) {
	 
	 
	 try {

   		con = DBConnect.getConnection();
   		stmt = con.createStatement();
   		String sql = "delete from seller where SellerNIC='"+sNIC+"'";
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
   		System.out.println("dbutill delete admin account connection error!!");
   	}	
	 
	 
	 return isSuccess;
}

}

