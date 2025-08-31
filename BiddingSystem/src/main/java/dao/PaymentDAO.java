package dao;

import model.Payment;
import utill.DBConnect;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class PaymentDAO {

   // private static final String INSERT_PAYMENT_SQL = "INSERT INTO Paymentss (user_id, amount, payment_type, recite, item_name) VALUES (?, ?, ?, ?, ?)";
    private static final String SELECT_PAYMENT_BY_ID = "SELECT id, user_id, amount, payment_type, recite, item_name FROM Paymentss WHERE id = ?";
    private static final String SELECT_ALL_PAYMENTS = "SELECT * FROM Paymentss";
    private static final String DELETE_PAYMENT_SQL = "DELETE FROM Paymentss WHERE id = ?";
    private static final String UPDATE_PAYMENT_SQL = "UPDATE Paymentss SET user_id = ?, amount = ?, payment_type = ?, recite = ?, item_name = ? WHERE id = ?";

    public int insertPayment(Payment payment) throws SQLException {
        String INSERT_PAYMENT_SQL = "INSERT INTO paymentss (user_id, amount, payment_type, recite, item_name) VALUES (?, ?, ?, ?, ?)";
        int generatedId = 0;

        try (Connection connection = DBConnect.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(INSERT_PAYMENT_SQL, Statement.RETURN_GENERATED_KEYS)) {
            preparedStatement.setInt(1, payment.getUserId());
            preparedStatement.setDouble(2, payment.getAmount());
            preparedStatement.setString(3, payment.getPaymentType());
            preparedStatement.setBytes(4, payment.getRecite());
            preparedStatement.setString(5, payment.getItemName());

            preparedStatement.executeUpdate();

            // Retrieve the generated ID
            ResultSet generatedKeys = preparedStatement.getGeneratedKeys();
            if (generatedKeys.next()) {
                generatedId = generatedKeys.getInt(1);
            }
        }
        return generatedId; // Return the ID of the inserted payment
    }


    public Payment selectPayment(int id) throws SQLException {
        Payment payment = null;
        try (Connection connection = DBConnect.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_PAYMENT_BY_ID)) {
            preparedStatement.setInt(1, id);
            ResultSet rs = preparedStatement.executeQuery();
            if (rs.next()) {
                int userId = rs.getInt("user_id");
                double amount = rs.getDouble("amount");
                String paymentType = rs.getString("payment_type");
                byte[] recite = rs.getBytes("recite");
                String itemName = rs.getString("item_name");
                payment = new Payment(userId, amount, paymentType, recite, itemName);
                payment.setId(id);
            }
        }
        return payment;
    }

    public List<Payment> selectAllPayments() throws SQLException {
        List<Payment> payments = new ArrayList<>();
        try (Connection connection = DBConnect.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_PAYMENTS)) {
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                int userId = rs.getInt("user_id");
                double amount = rs.getDouble("amount");
                String paymentType = rs.getString("payment_type");
                byte[] recite = rs.getBytes("recite");
                String itemName = rs.getString("item_name");
                Payment payment = new Payment(userId, amount, paymentType, recite, itemName);
                payment.setId(id);
                payments.add(payment);
            }
        }
        System.out.println("Number of payments retrieved: " + payments.size()); // Debugging line
        return payments;
    }

    public boolean deletePayment(int id) throws SQLException {
        try (Connection connection = DBConnect.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(DELETE_PAYMENT_SQL)) {
            preparedStatement.setInt(1, id);
            return preparedStatement.executeUpdate() > 0;
        }
    }

    public boolean updatePayment(Payment payment) throws SQLException {
    	
        try (Connection connection = DBConnect.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(UPDATE_PAYMENT_SQL)) {
            preparedStatement.setInt(1, payment.getUserId());
            preparedStatement.setDouble(2, payment.getAmount());
            preparedStatement.setString(3, payment.getPaymentType());
            preparedStatement.setBytes(4, payment.getRecite());
            preparedStatement.setString(5, payment.getItemName());
            preparedStatement.setInt(6, payment.getId());
            return preparedStatement.executeUpdate() > 0;
        }
    }
}