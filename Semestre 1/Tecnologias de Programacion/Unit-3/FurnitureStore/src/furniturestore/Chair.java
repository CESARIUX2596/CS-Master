package furniturestore;

public class Chair extends Seat{
    private int armNumber;

    public int getArmNumber() {
        return armNumber;
    }
    public void setArmNumber(int armNumber) {
        this.armNumber = armNumber;
    }

    public Chair() {
        super();
        armNumber = 0;
    }
    public Chair(int armNumber) {
        super();
        this.armNumber = armNumber;
    }
    public Chair(String maker, float weight, float cost, float height, String material,int armNumber) {
        super(maker,weight,cost,height,material);
        this.armNumber = armNumber;
    }
    
    public void printing() {
        System.out.println("***Chair***");
        super.print();
        System.out.printf("\tArms Number: %d\n",armNumber);
    }
}
