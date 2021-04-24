package payment;

public class Item {
     public float price;
     public String description;
     public String currency;

    public Item(String description, float price, String currency) {
        this.price = price;
        this.description = description;
        this.currency = currency;
    }

    public float getPrice() {
        return price;
    }

    public String getDescription() {
        return description;
    }

    public String getCurrency() {
        return currency;
    }
}
