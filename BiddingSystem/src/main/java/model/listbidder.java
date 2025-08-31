package model;

public class listbidder {
	
	private int id;
	private String bname;
	private String btelephone;
	private String bNIC ;
	private String busername;
	private String bpassword;
	public listbidder(int id, String bname, String btelephone, String bNIC, String busername, String bpassword) {
		
		this.id = id;
		this.bname = bname;
		this.btelephone = btelephone;
		this.bNIC = bNIC;
		this.busername = busername;
		this.bpassword = bpassword;
	}
	public int getId() {
		return id;
	}
	
	public String getbname() {
		return bname;
	}
	
	public String getbtelephone() {
		return btelephone;
	}
	
	public String getbNIC() {
		return bNIC;
	}
	
	public String getbusername() {
		return busername;
	}
	
	public String getbpassword() {
		return bpassword;
	}
	
	

}
