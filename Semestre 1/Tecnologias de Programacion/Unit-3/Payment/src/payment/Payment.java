package payment;

import java.time.LocalDateTime;

abstract class Payment {

    private String currency;
    private LocalDateTime date;
    private float amount;

    public Payment(String currency, LocalDateTime date, float amount) {
        this.currency = currency;
        this.date = date;
        this.amount = amount;
    }

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

    // Virtual method, but in java all methods are virtual.
    public void print(){
        System.out.printf("Currency: %s, Amount: %f, Date: s%", currency,amount,date.toString());
    }

    public abstract float calculateType();

}
