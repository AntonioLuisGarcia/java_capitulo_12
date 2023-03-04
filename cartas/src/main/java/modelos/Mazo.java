package modelos;
import java.util.ArrayList;
import java.util.Collections;
public class Mazo {
    private ArrayList<Carta> mazo;
    private int tamano;
    
    public Mazo(int tamano){
        this.tamano = tamano;
        this.init(tamano);
        this.barajar();
    }
    
    private void init(int longitud){
        mazo = new ArrayList<Carta>();
        for(int i = 1; i <= longitud;i++)
        mazo.add(new Carta(i));
    }
    
    public int getTamano() {
        return tamano;
    }

    public void barajar(){
        Collections.shuffle(mazo);
    }

    public Carta extrae(){
        return mazo.remove(0);
    }
    
}
