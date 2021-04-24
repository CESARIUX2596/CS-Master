package payment;

import java.time.LocalDateTime;

public class Credit extends  Payment{
    private int cardNumber;
    private String Owner;
    private float cardBalance = 15613.13f;



    public int getCardNumber() {
        return cardNumber;
    }

    public void setCardNumber(int cardNumber) {
        this.cardNumber = cardNumber;
    }

    public String getOwner() {
        return Owner;
    }

    public void setOwner(String owner) {
        Owner = owner;
    }

    public void setCardBalance(float cardBalance) {
        this.cardBalance = cardBalance;
    }

    public Credit(String currency, LocalDateTime date, float amount) {
        super(currency, date, amount);
    }

    public Credit(String currency, LocalDateTime date, float amount, int cardNumber, String owner) {
        super(currency, date, amount);
        this.cardNumber = cardNumber;
        Owner = owner;
    }

    public Credit(int cardNumber, String owner) {
        this.cardNumber = cardNumber;
        Owner = owner;
    }

    @Override
    public float calculateType() {
        return 0;
    }

    public float balance(){
        return this.cardBalance;
    }

    public float chargeAmount(){
        float a = this.getAmount();
        setCardBalance(cardBalance-a);
        return balance();

    }


}
