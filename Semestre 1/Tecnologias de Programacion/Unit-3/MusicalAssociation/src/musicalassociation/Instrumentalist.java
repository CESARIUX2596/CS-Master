package musicalassociation;

public class Instrumentalist extends Musician implements IWhoIs{
    private String instrument;

    public Instrumentalist(String name,String instrument) {
        super(name);
        this.instrument = instrument;
    }

    @Override
    void printData() {
        System.out.printf("%s plays the %s\n", super.whatsYourName(), instrument);
        System.out.flush();
    }

    @Override
    public boolean doYouSing() {
        return false;
    }

}
