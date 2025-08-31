
package model;

public class seller {
	private int id;
	private String name;
	private String phone;
	private String NIC;
	private String userName;
	private String password;
	public seller(int id, String name, String phone, String nIC, String userName, String password) {
		
		this.id = id;
		this.name = name;
		this.phone = phone;
		this.NIC = nIC;
		this.userName = userName;
		this.password = password;
	}
	public int getId() {
		return id;
	}
	
	public String getName() {
		return name;
	}
	
	public String getPhone() {
		return phone;
	}
	
	public String getNIC() {
		return NIC;
	}

	public String getUserName() {
		return userName;
	}
	
	public String getPassword() {
		return password;
	}
	
	
	

}

