package decorator;

public class BasePizza implements Pizza {
    @Override
    public String createPizza() {
        return "Base Pizza";
    }
}
