package furniturestore;

public class Furniture {
    private String maker;
    private float weight;
    private float cost;
    private float height;
    private String material;

    // Getter and Setters
    public String getMaker() {
        return maker;
    }

    public void setMaker(String maker) {
        this.maker = maker;
    }

    public float getWeight() {
        return weight;
    }

    public void setWeight(float weight) {
        this.weight = weight;
    }

    public float getCost() {
        return cost;
    }

    public void setCost(float cost) {
        this.cost = cost;
    }

    public float getHeight() {
        return height;
    }

    public void setHeight(float height) {
        this.height = height;
    }

    public String getMaterial() {
        return material;
    }

    public void setMaterial(String material) {
        this.material = material;
    }

    // Class Constructors

    public  Furniture(){
        this.maker = "Unknown";
        this.material = "Unknown";
        this.height = 1.34f;
    }

    public Furniture(String maker, float weight, float cost, float height, String material) {
        this.maker = maker;
        this.weight = weight;
        this.cost = cost;
        this.height = height;
        this.material = material;
    }

    // Class Methods
    public void print(){
        System.out.printf("Furniture Information: \n\tMaker: %s \n\tWeight: %.02fKg. \n\t" +
                            "Cost: $%.02f \n\tHeight: %.02fm. \n\tMaterial: %s\n", maker,weight,cost,height,material);
        System.out.flush();
    }
}
