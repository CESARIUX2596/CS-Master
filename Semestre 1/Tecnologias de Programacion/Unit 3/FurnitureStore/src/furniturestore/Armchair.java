package furniturestore;

public class Armchair extends Seat{
    private int capacity;

    public int getCapacity() {
        return capacity;
    }
    public void setCapacity(int capacity) {
        this.capacity = capacity;
    }

    public Armchair() {
        super();
        capacity = 3;
    }
    public Armchair(int capacity) {
        super();
        this.capacity = capacity;
    }
    public Armchair(String maker, float weight, float cost, float height, String material, int capacity) {
        super(maker,weight,cost,height,material);
        this.capacity = capacity;
    }

    public void printing() {
        System.out.println("***Armchair***");
        super.print();
        System.out.printf("\tCapacity: %d\n",capacity);
    }
}
