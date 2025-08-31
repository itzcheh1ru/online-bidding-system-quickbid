package model;

public class listproduct {
	
	private int id;
	private String pname;
	private String pdescription;
	private Double pprice;
	private int psellerid;
	private int pbidderid;
	public listproduct(int id, String pname, String pdescription, Double pprice, int psellerid, int pbidderid) {
		
		this.id = id;
		this.pname = pname;
		this.pdescription = pdescription;
		this.pprice = pprice;
		this.psellerid = psellerid;
		this.pbidderid = pbidderid;
	}
	public int getId() {
		return id;
	}
	
	public String getPname() {
		return pname;
	}
	
	public String getPdescription() {
		return pdescription;
	}
	
	public Double getPprice() {
		return pprice;
	}
	
	public int getPsellerid() {
		return psellerid;
	}
	
	public int getPbidderid() {
		return pbidderid;
	}
	
	

}
