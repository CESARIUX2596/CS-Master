package payment;
import java.io.*;
import java.time.LocalDateTime;

public class PantryVouchers extends Payment{
    private int folio;
    private float amount;
    private int p100,p50,p20,p10,p5,p1;
    private int[] vouchers = new int[]{p100,p50,p20,p10,p5,p1};
    private String[] vAmounts = new String[]{"Hundred", "Fifty", "Twenty", "Ten", "Fives", "Ones"};


    public int getFolio() {
        return folio;
    }

    public void setFolio(int folio) {
        this.folio = folio;
    }

    @Override
    public float getAmount() {
        return amount;
    }

    @Override
    public void setAmount(float amount) {
        this.amount = amount;
    }

    public PantryVouchers(String currency, LocalDateTime date, float amount, int folio) {
        super(currency, date, amount);
        this.folio = folio;
    }


    public PantryVouchers(int folio, float amount) {
        this.folio = folio;
        this.amount = amount;
    }

    @Override
    public float calculateType() {
        float inPantryVouchers = 0;
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));

        System.out.println("How many Pantry Vouchers do you have?");
        try {
            int cnt = 0;
            String in  = "";
            for (int voucher :vouchers) {
                System.out.printf("How many %s dollar voucher do you have?: ", vAmounts[cnt]);
                System.out.flush();
                in = br.readLine();
                vouchers[cnt] = tryParseInt(in);
                cnt++;
            }
        } catch (IOException ioe){
            // handle this latter;
        }
        inPantryVouchers =(float)(vouchers[0]*100+vouchers[1]*50+vouchers[2]*20+vouchers[3]*10+vouchers[4]*5+vouchers[5]*1);
        float change = inPantryVouchers-super.getAmount();
        System.out.printf("you paid $%.2f with $%.2f in vouchers, and the change was $%.2f",super.getAmount(), inPantryVouchers,change);
        System.out.flush();
        return change;
    }
    public int tryParseInt(String value) {
        try {
            return Integer.parseInt(value);
        } catch (NumberFormatException e) {
            return 0;
        }
    }
}
