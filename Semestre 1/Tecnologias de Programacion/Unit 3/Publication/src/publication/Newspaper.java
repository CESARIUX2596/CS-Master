package publication;

import java.util.ArrayList;

public class Newspaper extends Publication{
    // Variables
    private ArrayList<String> sections = new ArrayList<>();

    // Getter and Setters
    public ArrayList<String> getSections() {
        return this.sections;
    }
    public void setSections(ArrayList<String> sections) {
        this.sections = sections;
    }

    // Class Constructors
    public Newspaper() {
        super();
        sections.add("No Sections");
    }
    public Newspaper(ArrayList<String> sections) {
        super();
        this.sections = sections;
    }
    public Newspaper(int pages, String title, float price, ArrayList<String> sections) {
        super(pages, title, price);
        this.sections = sections;
    }

    // Class Methods
    public int countSections() {
        return this.sections.size();
    }
    public void showData() {
        super.print();
        System.out.print("Sections:");
        int counter = 1;
        for (String section : sections) {
            System.out.printf("\n\t[%d] \t %s", counter, section);
            System.out.flush();
            counter++;
        }
        System.out.println("\n");
    }
}
