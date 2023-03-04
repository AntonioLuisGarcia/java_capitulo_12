package modelos;

public class Carta implements Comparable<Carta>{
    public static final String[] palos={"Oros", "Copas", "Espadas", "Bastos"};
    public static final String[] numerosYFiguras={"Uno", "Dos", "Tres", "Cuatro", "Cinco", "Seis", "Siete", "Sota", "Caballo", "Rey"};
    private int codigo;
    public Carta(int cod){
        this.codigo = cod;
    }

    int getCodigo(){
        return this.codigo;
    }

    String getPalo(){
        return Carta.palos[(int)(this.codigo/10)];
    }

    String getNumeroAsString(){
        return Carta.numerosYFiguras[(int)(this.codigo%10)];
    }

    public int getNumeroAsInt(){
        return (int)(this.codigo%10);
    }

    @Override
    public boolean equals(Object d){
        if(d.getClass() == this.getClass()){
            Carta c = (Carta) d;
            if(c.getPalo() == this.getPalo() && c.getNumeroAsInt() == this.getNumeroAsInt()){
                return true;
            }else{
                return false;
            }
        }else{
            return false;
        }
    }

    @Override
    public int compareTo(Carta c){
        if(c.getNumeroAsInt() > this.getNumeroAsInt()){
            return -1;
        }else if(c.getNumeroAsInt() < this.getNumeroAsInt()){
            return 1;
        }else{
            if(c.getCodigo()/10 > this.getCodigo()/10){
                return -1;
            }else if(c.getCodigo()/10 < this.getCodigo()/10){
                return 1;
            }else{
                return 0;
            }
        }
    }

    public boolean esMenor(int numero){
        
        if(this.getNumeroAsInt()<numero){
            return true;
        }else{
            return false;
        }
        
    }
}