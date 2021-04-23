package payment;

import java.time.LocalDateTime;

public class Cash extends Payment{
    private float changeCash;
    private String currencyCash;

    public Cash(String currency, LocalDateTime date, float amount) {
        super(currency, date, amount);
    }

    @Override
    public float calculateType() {
        return 0;
    }
}
