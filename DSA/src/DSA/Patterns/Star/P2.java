package DSA.Patterns.Star;
import java.util.Scanner;
public class P2 {

    static void Print1(int lines){
        int temp=1;
        for(int i=1; i<=lines; i++){
            for(int j=1; j<=i; j++){
                System.out.print(temp+" ");
                temp++;
            }
            System.out.println();
            /*       1
                     2  3
                     4  5  6
                     7  8  9  10
                                     */
        }
        System.out.println("/********************************/--#--#--/****************************************/");


    }
    static void Print2(int lines){

        for(int i=1; i<=lines; i++) {
            for (int j = 1; j <= i; j++) {
                System.out.print(i + " ");
            }
            System.out.println();
        }
        System.out.println("/********************************/--#--#--/****************************************/");


    }
    static void Print3(int lines){

        for(int i=1; i<=lines; i++) {
            for (int j = 1; j <= i; j++) {
                System.out.print(j + " ");
            }
            System.out.println();
        }
        System.out.println("/********************************/--#--#--/****************************************/");


    }
    static void Print4(int lines){

        int ch=97;

        for(int i=1; i<=lines; i++) {
            for (int j = 1; j <= i; j++) {
                System.out.print((char)ch++ + " ");
            }
            System.out.println();
        }
        System.out.println("/********************************/--#--#--/****************************************/");


    }
    static void Print5(int lines){

        int num=lines;

        for(int i=1; i<=lines; i++) {
            for (int j = 1; j <= i; j++) {
                System.out.print(num+ " ");
            }
            num--;
            System.out.println();
        }
        System.out.println("/********************************/--#--#--/****************************************/");


    }
    static void Print6(int lines){

        int ch=96+lines;

        for(int i=1; i<=lines; i++) {
            for (int j = 1; j <= i; j++) {
                System.out.print((char)ch + " ");
            }
            ch--;
            System.out.println();
        }
        System.out.println("/********************************/--#--#--/****************************************/");


    }
    static void Print7(int lines){

        int ch=96+lines;

        for(int i=1; i<=lines; i++) {
            for (int j = 1; j <= i; j++) {
                System.out.print((char)ch + " ");
            }
            ch--;
            System.out.println();
        }
        System.out.println("/********************************/--#--#--/****************************************/");


    }
    static void Print8(int lines){

        int ch=lines;

        for(int i=1; i<=lines; i++) {
            for (int j = 1; j <= i; j++) {
                System.out.print(ch + " ");
                ch=ch+lines;
            }

            System.out.println();
        }
        System.out.println("/********************************/--#--#--/****************************************/");


    }
    static void Print9(int lines){
        int num=10;
        int ch=64+10;

        for(int i=1; i<=lines; i++) {
            for (int j = 1; j <= i; j++) {
                if(i%2==0){
                    System.out.print((char)ch+" ");
                }else{
                    System.out.print(num+" ");
                }
                ch--;
                num--;
            }

            System.out.println();
        }
        System.out.println("/********************************/--#--#--/****************************************/");


    }
    public static void main(String[] args) {
        Scanner sc=new Scanner(System.in);
        System.out.println("Enter  number rows:");
        int Rows=sc.nextInt();
        Print1(Rows);
        Print2(Rows);
        Print3(Rows);
        Print4(Rows);
        Print5(Rows);
        Print6(Rows);
        Print7(Rows);
        Print8(Rows);
        Print9(Rows);

    }
}
