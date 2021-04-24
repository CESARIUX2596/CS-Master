package payment;

import java.time.LocalDateTime;

public class Cash extends Payment {
    private float amountCash;

    private String currencyCash;

    public float getAmountCash() {
        return amountCash;
    }

    public void setAmountCash(float amountCash) {
        this.amountCash = amountCash;
    }

    public String getCurrencyCash() {
        return currencyCash;
    }

    public void setCurrencyCash(String currencyCash) {
        this.currencyCash = currencyCash;
    }

    public Cash(String currency, LocalDateTime date, float amount, float amountCash, String currencyCash) {
        super(currency, date, amount);
        this.amountCash = amountCash;
        this.currencyCash = currencyCash;
    }

    public Cash(String currency, LocalDateTime date, float amount) {
        super(currency, date, amount);
    }

    @Override
    public float calculateType() {
        // Check if product and payment are in the same currency
        if (super.getCurrency().equals(currencyCash) == false){
            if (super.getCurrency().equals("Dollars")){
                // Purposely used 2 different values because buy/sel margin profit.
                return  super.getAmount() * 20.5f;
            }
            else return super.getAmount()/19.75f;
        }
        else return super.getAmount();
    }

    public float calculateChange(){
        float change = (amountCash-calculateType());
        return change;
    }

}
