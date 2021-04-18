package furniturestore;

public class Main {

    public static void main(String[] args) {
        // Seats
        Armchair armchair = new Armchair("Ikea", 70.45f, 3.13f, 96.43f, "Cotton",4);
        armchair.printing();

        Chair chair = new Chair("Ikea", 3.12f, 24, 1.10f, "Carbon Fiber",2);
        chair.printing();

        Stool stool = new Stool("Gibson", 5.23f, 120, 1.10f, "Aluminum",6);
        stool.printing();

        // Tables
        CircularTable circularTable = new CircularTable();
        circularTable.setCost(250f);
        circularTable.setDiameter(1.8134f);
        circularTable.setHeight(1.23f);
        circularTable.printing();

        RectangularTable rectangularTable = new RectangularTable(2.5f,4f);
        rectangularTable.printing();

    }
}
