package DSA.Patterns.InvertedStar;
import java.util.Scanner;
public class P1 {
    static void print(int row){

        for(int i=1; i<=row;i++){

            for(int j=1; j<=row-i+1;j++){
                System.out.printf("* ");
            }
            System.out.println();
        }
    }
    public static void main(String[] args) {
        System.out.println("Enter lines to print: ");
        Scanner sc=new Scanner(System.in);
        int lines= sc.nextInt();
        print(lines);
    }
}
