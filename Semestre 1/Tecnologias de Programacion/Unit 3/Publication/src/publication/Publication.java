package publication;

public class Publication {
    // Variables
    private int pages;
    private String title;
    private float price;

    // Getter Setter Methods
    public int getNumPages() {
        return this.pages;
    }
    public void setNumPages(int pages) {
        this.pages = pages;
    }
    public String getTitle() {
        return this.title;
    }
    public void setTitle(String title) {
        this.title = title;
    }
    public float getPrice() {
        return this.price;
    }
    public void setPrice(float price) {
        this.price = price;
    }

    // Class Constructors
    public Publication(){
        this.title = "Untitled";
    }
    public Publication(int pages, String title, float price) {
        this.pages = pages;
        this.title = title;
        this.price = price;
    }

    // Class Methods
    public void print() {
        System.out.println("Information");
        System.out.printf("Title: %s%nPages: %d%nPrice: $%.02f%n", title, pages, price);
        System.out.flush();
    }
}
