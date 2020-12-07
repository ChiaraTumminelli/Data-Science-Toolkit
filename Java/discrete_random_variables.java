public class discrete_random_variables {

    //Calcolare la PMF binomiale
    public static double binomial_distribution (int n, double p, int k){
        return ((factorial(n)/(factorial(k)*factorial(n-k))) * Math.pow(p, k) * Math.pow(1-p, n-k));
    }

    //Calcolare la PMG geometrica
    public static double geometric_distribution (double p, int k){
        return (Math.pow(1-p, k-1))*p;
    }

    //Calcolare la PMF di Poisson
    public static double poisson_distribution (double p, int k){
        return (Math.pow(p, k)/factorial(k))*Math.pow(Math.E, -p);
    }

    //Calcolare la media
    public static double expected_value (int [] val, double [] p){
        double r = 0;
        for (int i = 0; i < val.length; i++){
                r = r + (val[i]*p[i]);
        }
        return r;
    }

    //---------------------------------------------------------------
    public static double factorial(int number) {
        double result = 1;

        for (int factor = 2; factor <= number; factor++) {
            result *= factor;
        }

        return result;
    }


    public static void main (String [] args){

        System.out.println("Binomiale: " + binomial_distribution(10, 0.85, 9)); 
        System.out.println("Geometrica: " + geometric_distribution(0.5, 3));
        System.out.println("Poisson: " + poisson_distribution(0.70, 9));

        double x1 = 5/17;
        double x2 = 2/17;
        double x3 = 3/17; 
        double x4 = 1/17;
        double x5 = 3/17;
        double x6 = 3/17;


        double h =  ((-14)*(5/17)) + ((-15)*(2/17)) + ((-14)*(3/17)) + ((-9)*(1/17))+((-7)*(3/17))+((-2)*(3/17)) ;
        System.out.println("HHH" + h );


        //Media - valore atteso - MODIFICARE I VALORI NEGLI ARRAY
        int [] val = {-17, -15, -14, -9, -7, -2};
        double [] p = {x1, x2, x3, x4, x5, x6};
        System.out.println("Media: "+ (double) expected_value(val, p));

    }
    
}
