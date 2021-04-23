package publication;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;

public class Main {
    public static void main(String[] args) throws IOException {

        // Variables
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        Book morellonomicon;
        Newspaper fakeNewsTimes;
        Magazine stonkNews;

        ArrayList<String> sections = new ArrayList<>();
        sections.add("Front Page");
        sections.add("Sports");
        sections.add("Stonks");
        sections.add("Variety");

        // Empty constructor example
        morellonomicon = new Book();
        // Only data from child constructor
        fakeNewsTimes = new Newspaper(sections);
        // All parameters into constructor
        stonkNews = new Magazine(35, "Stonk News", 2.55f, 45, 12,
                                "December", "ApesTogether Strong");

        // Print Info after creating the objects
        System.out.println("*****Book*****");
        morellonomicon.showData();
        System.out.println("*****Newspaper*****");
        fakeNewsTimes.showData();
        System.out.println("*****Magazine*****");
        stonkNews.showData();

        // Alter Objects

        // Book
        morellonomicon.setNumPages(1313);
        morellonomicon.setTitle("Morellonomicon");
        morellonomicon.setPrice(50000f);
        morellonomicon.setCoverType("Hard Cover");
        morellonomicon.setIsbn(3131);
        morellonomicon.setAuthor(" Ryan Morello Scott");
        morellonomicon.setEditorial("Rito Games");

        // Newspaper
        fakeNewsTimes.setNumPages(10);
        fakeNewsTimes.setTitle("Fake News Times");
        fakeNewsTimes.setPrice(10f);
        ArrayList<String> tmpList = fakeNewsTimes.getSections();
        boolean another = true;
        System.out.printf("Current Amount of Sections: %d %n", fakeNewsTimes.countSections());
        System.out.flush();
        System.out.println("Adding Sections for Fake News Times");
        while (another){
           System.out.println("Insert name for new section: ");
           String newSection = br.readLine();
           tmpList.add(newSection);
           System.out.printf("Current Amount of Sections: %d %n", fakeNewsTimes.countSections());
           System.out.println("Add Another Section? Y/n");
           String continueAdding = br.readLine();
           if(continueAdding.equalsIgnoreCase("y") || continueAdding.equalsIgnoreCase("yes")){
               continue;
           }
           else another = false;
        }
        // Magazine
        System.out.println("Adding a 13% price increment to Stock News Magazine");
        stonkNews.setPrice(stonkNews.getPrice()*1.13f);
        // Show Updated Information

        System.out.println("*****Book Updated Info*****");
        morellonomicon.showData();
        System.out.println("*****Newspaper Updated Info*****");
        fakeNewsTimes.showData();
        System.out.println("*****Magazine Updated Info*****");
        stonkNews.showData();
    }
}