package payment;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

abstract class Payment {

    // Variables
    private String currency;
    private LocalDateTime date;
    private float amount;

    // Getters and setters
    public String getCurrency() {
        return currency;
    }

    public void setCurrency(String currency) {
        this.currency = currency;
    }

    public LocalDateTime getDate() {
        return date;
    }

    public void setDate(LocalDateTime date) {
        this.date = date;
    }

    public float getAmount() {
        return amount;
    }

    public void setAmount(float amount) {
        this.amount = amount;
    }

    // Class Constructors
    public Payment(String currency, LocalDateTime date, float amount) {
        this.currency = currency;
        this.date = date;
        this.amount = amount;
    }
    public Payment(){
        date = LocalDateTime.now();
        amount = 0f;
    }

    // Methods
    // Virtual method, but in java all methods are virtual.
    public void print(){
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
        String formatDateTime = date.format(formatter);
        System.out.printf("\nPayment Information:\n\tCurrency: %s\n\tAmount: %.02f\n\t Date: %s\n\t", currency,amount,formatDateTime);
        System.out.flush();
    }

    public abstract float calculateType();

}
