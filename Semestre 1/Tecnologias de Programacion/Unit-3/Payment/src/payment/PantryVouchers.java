package payment;

import java.time.LocalDateTime;

public class PantryVouchers extends Payment{
    private int folio;
    private float amount;

    public PantryVouchers(String currency, LocalDateTime date, float amount) {
        super(currency, date, amount);
    }

    @Override
    public float calculateType() {
        return 0;
    }
}
