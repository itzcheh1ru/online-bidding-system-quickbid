package model;

public class bidderdetail {
	private int id;
	private String bname;
	private String btelephone;
	private String bNIC;
	private String busername;
	private String bpassword;
	public bidderdetail(int id, String bname, String btelephone, String bNIC, String busername, String bpassword) {
		super();
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
	
	public String getBname() {
		return bname;
	}
	
	public String getBtelephone() {
		return btelephone;
	}
	
	public String getbNIC() {
		return bNIC;
	}
	
	public String getBusername() {
		return busername;
	}
	
	public String getBpassword() {
		return bpassword;
	}
	
	
	
	

}
