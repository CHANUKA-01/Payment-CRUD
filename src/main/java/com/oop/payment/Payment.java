package com.oop.payment;

public class Payment {
    private int id;
    private String cardholderName;
    private String email;
    private String cardNumber;
    private String amount;
    private String expDate;

    // Getters and setters
    public int getId() { return id; }
    public void setId(int id) { this.id = id; }

    public String getCardholderName() { return cardholderName; }
    public void setCardholderName(String cardholderName) { this.cardholderName = cardholderName; }

    public String getEmail() { return email; }
    public void setEmail(String email) { this.email = email; }

    public String getCardNumber() { return cardNumber; }
    public void setCardNumber(String cardNumber) { this.cardNumber = cardNumber; }

    public String getAmount() { return amount; }
    public void setAmount(String amount) { this.amount = amount; }

    public String getExpDate() { return expDate; }
    public void setExpDate(String expDate) { this.expDate = expDate; }
}