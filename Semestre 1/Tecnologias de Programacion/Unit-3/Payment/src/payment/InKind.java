package payment;

import java.time.LocalDateTime;

public class InKind extends Payment{
    private String description;

    private float kAmount;

    public InKind(String currency, LocalDateTime date, float price) {
        super(currency, date, price);
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public float getkAmount() {
        return kAmount;
    }

    public void setkAmount(float kAmount) {
        this.kAmount = kAmount;
    }

    public InKind(String currency, LocalDateTime date, float amount, String description, float kAmount) {
        super(currency, date, amount);
        this.description = description;
        this.kAmount = kAmount;
    }

    public InKind(String description, float kAmount) {
        this.description = description;
        this.kAmount = kAmount;
    }

    @Override
    public float calculateType() {
        return 0;
    }

    public float extractValue(){
        return kAmount-super.getAmount();
    }

}
