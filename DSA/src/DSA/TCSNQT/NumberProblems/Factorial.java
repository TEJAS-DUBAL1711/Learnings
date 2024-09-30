package DSA.TCSNQT.NumberProblems;
//*Factorial*: Compute the factorial of a number.
public class Factorial {
    public static void main(String[] args) {
        int num=5;
        int fact=1;
        for(int i=1; i<=num;i++){
            fact=fact*i;

        }
        System.out.println(fact);
    }
}
