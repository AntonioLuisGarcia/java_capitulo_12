package modelos;
import java.util.ArrayList;

public class Mano {
    private ArrayList<Carta> mano;

    public Mano(){
        this.mano = new ArrayList<>();
    }

    public void add(Carta c){
        this.mano.add(c);
    }

    public Carta getCard(){
        return this.mano.remove(0);
    }

    public Carta getCard(int index){
        return this.mano.remove(index);
    }

    @Override
    public String toString(){
        String response="";
        for(Carta c : this.mano){
            response += String.format("<a href=\"juego.jsp?carta=%1$d&turno=1&iniciado=1\"><div class=\"carta\"><img src=\"assets/img/%1$02d.png\"></div></a>", c.getCodigo() );
        }
        return response;
    }

}
