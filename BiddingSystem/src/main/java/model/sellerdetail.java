package model;

public class sellerdetail {
	private int id;
	private String sname;
	private String stelephone;
	private String sNIC;
	private String susername;
	private String spassword;
	public sellerdetail(int id, String sname, String stelephone, String sNIC, String susername, String spassword) {
		super();
		this.id = id;
		this.sname = sname;
		this.stelephone = stelephone;
		this.sNIC = sNIC;
		this.susername = susername;
		this.spassword = spassword;
	}
	public int getId() {
		return id;
	}
	
	public String getAname() {
		return sname;
	}
	
	public String getAtelephone() {
		return stelephone;
	}
	
	public String getaNIC() {
		return sNIC;
	}
	
	public String getAusername() {
		return susername;
	}
	
	public String getApassword() {
		return spassword;
	}
	
	
	
	

}
