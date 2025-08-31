package biddingsignuppackage;

public class signupModel {
	private int id;
	private String username;
	private String email;
	private String pword;
	
public signupModel(int id, String username, String email, String pword) {
		super();
		this.id = id;
		this.username = username;
		this.email = email;
		this.pword = pword;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPword() {
		return pword;
	}

	public void setPword(String pword) {
		this.pword = pword;
	}


	

}
