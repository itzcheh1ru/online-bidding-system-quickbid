package model;

public class Payment {
    private int id;
    private int userId;
    private double amount;
    private String paymentType;
    private byte[] recite; // For image data
    private String itemName;

    public Payment() {}

    public Payment(int userId, double amount, String paymentType, byte[] recite, String itemName) {
        this.userId = userId;
        this.amount = amount;
        this.paymentType = paymentType;
        this.recite = recite;
        this.itemName = itemName;
    }

    // Getters and Setters
    public int getId() { return id; }
    public void setId(int id) { this.id = id; }

    public int getUserId() { return userId; }
    public void setUserId(int userId) { this.userId = userId; }

    public double getAmount() { return amount; }
    public void setAmount(double amount) { this.amount = amount; }

    public String getPaymentType() { return paymentType; }
    public void setPaymentType(String paymentType) { this.paymentType = paymentType; }

    public byte[] getRecite() { return recite; }
    public void setRecite(byte[] recite) { this.recite = recite; }

    public String getItemName() { return itemName; }
    public void setItemName(String itemName) { this.itemName = itemName; }
    
 
}