package memento;

import java.util.ArrayList;

public class Caretaker {
    ArrayList<Memento> savedMementos = new ArrayList<Memento>();

    public void addMemento(Memento m) {
        savedMementos.add(m);
    }

    public Memento getMemento(int index) {
        return savedMementos.get(index);
    }
}
