package furniturestore;

public class Stool extends Seat{
    private int legNumber;

    public int getLegNumber() {
        return legNumber;
    }
    public void setLegNumber(int legNumber) {
        this.legNumber = legNumber;
    }

    public Stool() {
        super();
        legNumber = 0;
    }
    public Stool(int legNumber) {
        super();
        this.legNumber = legNumber;
    }
    public Stool(String maker, float weight, float cost, float height, String material, int legNumber) {
        super(maker,weight,cost,height,material);
        this.legNumber = legNumber;
    }
    
    public void printing() {
        System.out.println("***Stool***");
        super.print();
        System.out.printf("\tArms Number: %d\n", legNumber);
    }
}
