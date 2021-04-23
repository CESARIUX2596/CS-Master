package payment;

import java.time.LocalDateTime;

public class InKind extends Payment{
    private String description;
    private float amount;
    
    public InKind(String currency, LocalDateTime date, float amount) {
        super(currency, date, amount);
    }

    @Override
    public float calculateType() {
        return 0;
    }
}
