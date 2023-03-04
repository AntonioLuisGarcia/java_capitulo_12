package modelos;

public class main {
    public static void main(String[] args) {
        
        Mazo mazo = new Mazo(40);
    
            Carta carta1 = mazo.extrae();
            Carta carta2 = mazo.extrae();
            Carta carta3 = mazo.extrae();

            float suma = 0;

            if(carta1.esMenor(8)){
                suma += carta1.getNumeroAsInt();
            }else{
                suma += (float)1/2;
            }

            if(carta2.esMenor(8)){
                if(carta2.getNumeroAsInt()==0){
                    suma += 1;
                }else{
                    suma += carta2.getNumeroAsInt();
                }
            }else{
                suma += (float)1/2;
            }

            if(carta3.esMenor(8)){
                suma += carta3.getNumeroAsInt();
            }else{
                suma += (float)1/2;
            }

            System.out.print(new CartaTemplate(carta1));
            System.out.print(new CartaTemplate(carta2));
            System.out.println(new CartaTemplate(carta3));

            System.out.print(suma);
    }
}
