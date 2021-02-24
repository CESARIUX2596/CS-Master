package decorator;

class SausageDecorator extends PizzaDecorator {
    public SausageDecorator(Pizza pizza) {
        super(pizza);
    }

    @Override
    public String createPizza() {
        return pizza.createPizza() + addSausage();
    }

    private String addSausage() {
        return " + Sausage";
    }
}
