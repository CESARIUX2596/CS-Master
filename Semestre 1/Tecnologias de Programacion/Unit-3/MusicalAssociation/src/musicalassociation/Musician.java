package musicalassociation;

abstract class Musician {
    // Class attributes
    private String name;

    // Setters
    public void setName(String name){
        this.name = name;
    }

    // Class Constructors
    public Musician(String name){
        this.name = name;
    }

    // Class Methods
    public String whatsYourName(){
        return this.name;
    }
    abstract void printData();
}
