package musicalassociation;

public class Choir extends Musician implements IWhoIs{
    private int voiceType;

    public Choir(String name, int voiceType) {
        super(name);
        this.voiceType = voiceType;
    }

    public void setVoiceType(int voiceType) {
        this.voiceType = voiceType;
    }

    @Override
    void printData() {
        String vType = "";
        if (voiceType == 0){
            vType = "sopranos";
        }
        if (voiceType == 1){
            vType = "contraltos";
        }
        if (voiceType == 2){
            vType = "tenors";
        }
        if (voiceType == 3){
            vType = "bass";
        }
        System.out.printf("%s is part of the %s\n", super.whatsYourName(), vType);
        System.out.flush();
    }

    @Override
    public boolean doYouSing() {
        return true;
    }
}
