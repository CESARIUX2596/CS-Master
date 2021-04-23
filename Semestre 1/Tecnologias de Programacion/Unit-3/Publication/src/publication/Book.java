package publication;

public class Book extends  Publication{
    // Variables
    private String coverType;
    private int isbn;
    private String author;
    private String editorial;

    // Getter Setter Methods
    public String getCoverType() {
        return this.coverType;
    }
    public void setCoverType(String coverType) {
        this.coverType = coverType;
    }
    public int getIsbn() {
        return this.isbn;
    }
    public void setIsbn(int isbn) {
        this.isbn = isbn;
    }
    public String getAuthor() {
        return this.author;
    }
    public void setAuthor(String author) {
        this.author = author;
    }
    public String getEditorial() {
        return this.editorial;
    }
    public void setEditorial(String editorial) {
        this.editorial = editorial;
    }

    // Class Constructors
    public Book() {
        super();
        this.author = "Unknown";
        this.editorial = "Unknown";
        this.coverType = "Unknown";
    }
    public Book(String coverType, int isbn, String author, String editorial) {
        super();
        this.coverType = coverType;
        this.isbn = isbn;
        this.author = author;
        this.editorial = editorial;
    }
    public Book(int pages, String title, float price, String coverType, int isbn, String author, String editorial) {
        super(pages, title, price);
        this.coverType = coverType;
        this.isbn = isbn;
        this.author = author;
        this.editorial = editorial;
    }

    // Class Methods
    public void showData() {
        super.print();
        System.out.printf("Cover Type: %s%nISBN: %d%nAuthor: %s%nEditorial: %s", coverType, isbn, author, editorial);
        System.out.flush();
        System.out.println("\n");
    }
}
