package furniturestore;

public class CircularTable extends Table{
    private float diameter;

    public float getDiameter() {
        return diameter;
    }

    public void setDiameter(float diameter) {
        this.diameter = diameter;
    }
    public CircularTable (){
        this.diameter=100f;
    }

    public CircularTable(float diameter) {
        this.diameter = diameter;
    }

    public CircularTable(String maker, float weight, float cost, float height, String material, float diameter) {
        super(maker, weight, cost, height, material);
        this.diameter = diameter;
    }

    public float surface(){
        float radius = diameter/2;
        return  (float)(Math.PI*radius*radius);
    }

    public void printing() {
        System.out.println("***Circular Table***");
        super.print();
        System.out.printf("\tDiameter: %.02fm. \n\tArea: %.02fm^2.\n",diameter,surface());
        System.out.flush();
    }
}
