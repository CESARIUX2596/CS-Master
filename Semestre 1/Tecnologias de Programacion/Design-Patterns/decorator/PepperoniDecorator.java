package decorator;

public class PepperoniDecorator extends PizzaDecorator {
    public PepperoniDecorator(Pizza pizza) {
        super(pizza);
    }

    @Override
    public String createPizza() {
        return pizza.createPizza() + addPepperoni();
    }

    private String addPepperoni() {
        return " + Pepperoni";
    }
}
