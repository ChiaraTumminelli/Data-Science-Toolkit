import java.math.*;

public class sample_space {
    public static void main(String[] args) {

    //Modificare i possibili esiti    
    String[] elem = { "G", "R" };
    
    //Modificare numero di lanci e esiti
    int esiti = 2;
    int lanci = 2;
    int spazio_campionario = (int) Math.pow(esiti, lanci);
    System.out.println("----------------------\nSpazio campionario: " + spazio_campionario + "\n");
    

    //Aggiungere un ciclo for per ogni lancio (ricorda di aggiungerli anche nella stampa)
    for (int i = 0; i < elem.length; i++) {
        for (int j = 0; j < elem.length; j++) {
            //for (int g = 0; g < elem.length; g++){
                            System.out.println("Sequenza: " + elem[ i] + elem[j]);
           // }
        }
   }

        System.out.println("----------------------");
    
    }
}
