package model;

public class biddetails {

	private int id;
	private String feedbackdescription;
	private int sellerid;
	private int bidderid;
	public biddetails(int id, String feedbackdescription, int sellerid, int bidderid) {
		super();
		this.id = id;
		this.feedbackdescription = feedbackdescription;
		this.sellerid = sellerid;
		this.bidderid = bidderid;
	}
	public int getId() {
		return id;
	}
	
	public String getFeedbackdescription() {
		return feedbackdescription;
	}
	
	public int getSellerid() {
		return sellerid;
	}
	
	public int getBidderid() {
		return bidderid;
	}
}
