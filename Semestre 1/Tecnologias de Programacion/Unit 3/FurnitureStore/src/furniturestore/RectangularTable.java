package furniturestore;

public class RectangularTable extends Table{
    private float tableWidth;
    private float tableHeight;

    public float getTableWidth() {
        return tableWidth;
    }

    public void setTableWidth(float tableWidth) {
        this.tableWidth = tableWidth;
    }

    public float getTableHeight() {
        return tableHeight;
    }

    public void setTableHeight(float tableHeight) {
        this.tableHeight = tableHeight;
    }

    public RectangularTable() {
        super();
        this.tableHeight = 100f;
        this.tableWidth = 100f;
    }

    public RectangularTable(float tableWidth, float tableHeight) {
        super();
        this.tableWidth = tableWidth;
        this.tableHeight = tableHeight;
    }

    public RectangularTable(String maker, float weight, float cost, float height, String material, float tableWidth, float tableHeight) {
        super(maker, weight, cost, height, material);
        this.tableWidth = tableWidth;
        this.tableHeight = tableHeight;
    }

    public float tableSurface(){
        return (float)(tableHeight*tableWidth);
    }

    public void printing() {
        System.out.println("***Rectangular Table***");
        super.print();
        System.out.printf("\tWidth: %.02fm. \n\tHeight: %.02fm. \n\tArea: %.02fm^2.\n",tableWidth,tableHeight,tableSurface());
        System.out.flush();
    }
}
