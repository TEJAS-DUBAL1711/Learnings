package DSA.Patterns.Star;
import java.util.Scanner;
public class P1 {

    static void Print(int row){


        for(int i=0; i<row;i++){
            for(int j=0; j<=i;j++){
                System.out.print("* ");
            }
            System.out.println();
        }

    }
    public static void main(String[]args){
        Scanner sc=new Scanner(System.in);
        System.out.println("Enter Row number");
        int row=sc.nextInt();
      //  System.out.println(2<2); false
        Print(row);

    }
}
