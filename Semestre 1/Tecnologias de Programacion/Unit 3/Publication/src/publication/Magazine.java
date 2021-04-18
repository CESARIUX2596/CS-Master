package publication;

public class Magazine extends Publication{
    // Variables
    private int number;
    private int volume;
    private String month;
    private String editorial;

    // Getter and Setters
    public int getNumber() {
        return this.number;
    }
    public void setNumber(int number) {
        this.number = number;
    }
    public int getVolume() {
        return this.volume;
    }
    public void setVolume(int volume) {
        this.volume = volume;
    }
    public String getMonth() {
        return this.month;
    }
    public void setMonth(String month) {
        this.month = month;
    }
    public String getEditorial() {
        return this.editorial;
    }
    public void setEditorial(String editorial) {
        this.editorial = editorial;
    }

    // Class Constructors
    public Magazine() {
        super();
        this.month = "Unknown";
        this.editorial = "Unknown";
    }
    public Magazine(int number, int volume, String month, String editorial) {
        super();
        this.number = number;
        this.volume = volume;
        this.month = month;
        this.editorial = editorial;
    }
    public Magazine(int pages, String title, float price, int number, int volume, String month, String editorial) {
        super(pages, title, price);
        this.number = number;
        this.volume = volume;
        this.month = month;
        this.editorial = editorial;
    }

    // Class Methods
    public void showData() {
        super.print();
        System.out.printf("Number: %d%nVolume: %d%nMonth: %s%nEditorial: %s%n", number, volume, month, editorial);
        System.out.flush();
    }
}
