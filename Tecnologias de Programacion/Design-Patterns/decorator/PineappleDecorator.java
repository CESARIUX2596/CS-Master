package decorator;

public class PineappleDecorator extends PizzaDecorator {
    public PineappleDecorator(Pizza pizza) {
        super(pizza);
    }

    @Override
    public String createPizza() {
        return pizza.createPizza() + addPinneapple();
    }

    private String addPinneapple() {
        System.out.println("Wait That's Illegal!");
        return " + Pineapple";
    }
}
