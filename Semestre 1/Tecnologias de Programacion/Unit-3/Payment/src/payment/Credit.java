package payment;

import java.time.LocalDateTime;

public class Credit extends Payment{
    private int cardNumber;
    private String owner;
    private float balance;

    public Credit(String currency, LocalDateTime date, float amount) {
        super(currency, date, amount);
    }

    @Override
    public float calculateType() {
        return 0;
    }
}
