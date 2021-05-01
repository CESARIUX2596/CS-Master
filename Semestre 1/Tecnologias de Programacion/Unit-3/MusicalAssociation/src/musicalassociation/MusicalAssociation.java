package musicalassociation;

import java.util.ArrayList;

public class MusicalAssociation {
    private String name;
    private int numChoirMembers;
    private int numOrchestraMembers;
    private ArrayList<Musician> musicians = new ArrayList<>();
    public MusicalAssociation(String name){
        this.name = name;
    }
    public void addMember(Musician mus){
        musicians.add(mus);
        if(((IWhoIs) mus).doYouSing()){
            numChoirMembers ++;
        }
        else {
            numOrchestraMembers ++;
        }
    }
    public void printData(){
        System.out.printf("Association Name: \"%s\"\nChoir Members: %d\nOrchestra Members %d\nList of Members:\n",name,numChoirMembers,numOrchestraMembers);
        System.out.flush();
        for (Musician mus:musicians) {
            mus.printData();
        }
    }

}
