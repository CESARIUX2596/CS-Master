package decorator;

public class DecoratorMain {
    public static void main(String[] args) {
        Pizza pizza = new PineappleDecorator(new SausageDecorator(new PepperoniDecorator(new PepperoniDecorator(new BasePizza()))));
        System.out.println(pizza.createPizza());
    }
}

// https://www.youtube.com/watch?v=j40kRwSm4VE
