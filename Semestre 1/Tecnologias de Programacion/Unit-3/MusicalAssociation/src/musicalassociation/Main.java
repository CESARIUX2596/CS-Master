package musicalassociation;

public class Main {

    public static void main(String[] args) {
        MusicalAssociation laPachanga = new MusicalAssociation("La Pachanga");
        Choir juan = new Choir("Juan",0);
        Choir maria = new Choir("María",1);
        Choir jose = new Choir("José",2);
        Choir rafael = new Choir("Rafael",3);
        Choir raquel = new Choir("Raquel",0);
        Instrumentalist paco = new Instrumentalist("Paco","fagot");
        Instrumentalist rocio = new Instrumentalist("Rocio","oboe");
        laPachanga.addMember(juan);
        laPachanga.addMember(maria);
        laPachanga.addMember(jose);
        laPachanga.addMember(rafael);
        laPachanga.addMember(raquel);
        laPachanga.addMember(paco);
        laPachanga.addMember(rocio);
        laPachanga.printData();
    }
}