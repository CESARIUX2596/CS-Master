package payment;

import java.time.LocalDateTime;
import java.io.*;
import java.util.ArrayList;


public class Main {

    public static void main(String[] args) {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        Item lp = new Item("les Paul Custom Shop", 3499.99f, "Dollars");
        Item jag = new Item("Fender Jaguar Custom Shop", 2987.35f, "Dollars");
        Item amp = new Item("Mesa Boogie Mark V Combo",2351.86f, "Dollars");
        System.out.println("Guitar Store\nProducts:\n\t[1] Gibson Les Paul Custom \n\t\tPrice:\t$3500.00 USD" +
                            "\n\t[2] Fender Jaguar Custom Shop\n\t\tPrice:\t$2987.35 Dollars" +
                            "\n\t[3] Mesa Boogie Mark V Combo\n\t\tPrice:\t$2351.86 Dollars");
        ArrayList<Item> itemList = new ArrayList<>();
        itemList.add(lp);
        itemList.add(jag);
        itemList.add(amp);
        System.out.println("****************Select an Item****************");
        String purchaseText = "Select an Item to purchase: ";
        int itemSelect ;
        itemSelect = validate(0,3,purchaseText);
        System.out.println("****************Payment Methods****************");
        String pMethodText = "\t[1] Cash\n\t[2] Credit\n\t[3] Pantry Vouchers\n\t[4] In Kind\nSelect a payment method: \t";
        int paymentSelected;
        paymentSelected = validate(1,4 ,pMethodText);
        Item i = itemList.get(itemSelect-1);
        switch (paymentSelected){
            case 1:
                System.out.println("****************Cash Payment****************");
                System.out.println("****************Currency****************");
                String currencyText = "Select the currency you are paying:\n\t[1] Dollars\n\t[2] Pesos\nSelect a Currency: \t";
                int currencySelected;
                currencySelected = validate(0,2 ,currencyText);
                String currency;
                currency = ( currencySelected == 1) ? "Dollars":"Pesos";
                float payment;
                System.out.printf("Total : $%.2f %s",i.price,i.currency);
                System.out.flush();
                System.out.println();
                Cash cash = new Cash(i.getCurrency(),LocalDateTime.now(),i.getPrice());
                cash.setCurrencyCash(currency);
                float total = cash.calculateType();
                payment = validatePayment(total,999999999f,String.format("Enter an amount that is equal or exceeds $%.2f %s: ",total,currency));
                cash.setAmountCash(payment);
                System.out.printf("Your change is: $%.2f %s",cash.calculateChange(),currency);
                System.out.flush();
                cash.print();
            case 2:
                System.out.println("****************Credit Payment****************");
                System.out.println("***Credit Card Info***");
                Credit credit = new Credit(i.getCurrency(),LocalDateTime.now(),i.getPrice());
                String owner = "";
                System.out.println("Owner: ");
                try {
                    owner = br.readLine();
                }catch (IOException e) {
                    // handle exception code here.
                }
                int cNumber = validate(1,999999999,"Card Number: ");
                credit.setOwner(owner);
                credit.setCardNumber(cNumber);
                System.out.printf("Your Current Balance is: $%.2f \n",credit.balance());
                System.out.flush();
                System.out.printf("Purchase Finished Successfully! \nNew Balance is: $%.2f ", credit.chargeAmount());
                System.out.flush();
                credit.print();
            case 3:
                System.out.println("****************Pantry Vouchers****************");
                PantryVouchers pv = new PantryVouchers(i.getCurrency(),LocalDateTime.now(),i.getPrice(),1313);
                float pvTotal = pv.calculateType();
                System.out.printf("Your total was: $%.2f", pvTotal);
                pv.print();
            case 4:
                System.out.println("****************In Kind****************");
                InKind ik = new InKind(i.getCurrency(),LocalDateTime.now(),i.getPrice());
                String description = "";
                System.out.println("Description of your item: ");
                try{
                    description = br.readLine();
                } catch (IOException e) {
                    // Handle Here
                }
                ik.setDescription(description);
                float value = validatePayment(i.getPrice(),999999999f,"Give a valid price for your exchange");
                ik.setkAmount(value);
                float newValue = ik.extractValue();
                System.out.printf("Transaction Complete\nThe New Value Is: %.2f ",newValue);
                ik.print();
        }
    }
    // Auxiliary methods
    public static int validate(int min, int max, String params){
        int out = 0;
        boolean valid = true;
        while (valid){
            System.out.println(params);
            BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
            try{
                String sIn = br.readLine();
                out = tryParseInt(sIn);
            } catch (IOException ioe){
            // handle this latter;
            }
            if (out >= min && out <= max)
                valid = false;
        }
        return out;
    }
    public static float validatePayment(float min, float max, String params){
        float out = 0;
        boolean valid = true;
        while (valid){
            System.out.println(params);
            BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
            try{
                String sIn = br.readLine();
                out = tryParseFloat(sIn);
            } catch (IOException ioe){
                // handle this latter;
            }
            if (out > min && out <= max)
                valid = false;
        }
        return out;
    }
    public static int tryParseInt(String value) {
        try {
            return Integer.parseInt(value);
        } catch (NumberFormatException e) {
            return 0;
        }
    }
    public static float tryParseFloat(String value) {
        try {
            return Float.parseFloat(value);

        } catch (NumberFormatException e) {
            return 0;
        }
    }
}
