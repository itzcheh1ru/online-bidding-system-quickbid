package model;

public class admindetail {
	private int id;
	private String aname;
	private String atelephone;
	private String aNIC;
	private String ausername;
	private String apassword;
	public admindetail(int id, String aname, String atelephone, String aNIC, String ausername, String apassword) {
		super();
		this.id = id;
		this.aname = aname;
		this.atelephone = atelephone;
		this.aNIC = aNIC;
		this.ausername = ausername;
		this.apassword = apassword;
	}
	public int getId() {
		return id;
	}
	
	public String getAname() {
		return aname;
	}
	
	public String getAtelephone() {
		return atelephone;
	}
	
	public String getaNIC() {
		return aNIC;
	}
	
	public String getAusername() {
		return ausername;
	}
	
	public String getApassword() {
		return apassword;
	}
	
	
	
	

}
