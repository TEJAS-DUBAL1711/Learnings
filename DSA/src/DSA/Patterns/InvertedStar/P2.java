package DSA.Patterns.InvertedStar;
import java.util.Scanner;
public class P2 {

    static void Print1(int lines){

        for(int i=1; i<=lines;i++){
            for(int j=1; j<=lines-i+1;j++){
                System.out.print(j+" ");
            }
            System.out.println();
        }
        System.out.println("///////////////////////////////////////////######$######////////////////////////////////////////////////////");

    }
    static void Print2(int lines){
        int num=1;
        for(int i=1; i<=lines;i++){
            for(int j=1; j<=lines-i+1;j++){
                System.out.print(num+" ");
                num++;
            }
            System.out.println();
        }
        System.out.println("///////////////////////////////////////////######$######////////////////////////////////////////////////////");

    }
    static void Print3(int lines){

        for(int i=1; i<=lines;i++){
            int num=lines-i+1;
            for(int j=1; j<=lines-i+1;j++){
                System.out.print(num+" ");
                num--;
            }
            System.out.println();
        }
        System.out.println("///////////////////////////////////////////######$######////////////////////////////////////////////////////");

    }
    static void Print4(int lines){

        for(int i=1; i<=lines;i++){
            int num=96;
            for(int j=1; j<=lines-i+1;j++){
                System.out.print((char)(num+j)+" ");

            }
            System.out.println();
        }
        System.out.println("///////////////////////////////////////////######$######////////////////////////////////////////////////////");

    }
    static void Print5(int lines){

        for(int i=1; i<=lines;i++){
            int num=i;
            for(int j=1; j<=lines-i+1;j++){
                System.out.print(num+" ");
                num++;

            }
            System.out.println();
        }
        System.out.println("///////////////////////////////////////////######$######////////////////////////////////////////////////////");

    }
    static void Print6(int lines){

        for(int i=1; i<=lines;i++){
            int num=i;
            for(int j=1; j<=lines-i+1;j++){
                System.out.print(num+" ");
                num++;

            }
            System.out.println();
        }
        System.out.println("///////////////////////////////////////////######$######////////////////////////////////////////////////////");

    }
    static void Print7(int lines) {
        char ch1=(char)(96+lines);
        char ch2=(char)(64+lines);
        for (int i = 1; i <= lines; i++) {
            for (int j = 1; j <= lines - i + 1; j++) {

                if(i%2==0){
                    System.out.print(ch2 + " ");

                }else {
                    System.out.print( ch1+ " ");

                }
            }
            ch1--;
            ch2--;
            System.out.println();
        }
        System.out.println("///////////////////////////////////////////######$######////////////////////////////////////////////////////");

    }
    static void Print8(int lines) {


        for (int i = 1; i <= lines; i++) {
            char ch2 = (char) ((64 + lines)-i+1);
            for (int j = 1; j <= lines - i + 1; j++) {

                    System.out.print(ch2 + " ");
              ch2--;
            }
            System.out.println();
        }
        System.out.println("///////////////////////////////////////////######$######////////////////////////////////////////////////////");

    }
    static void Print9(int lines) {



        for (int i = 1; i <= lines; i++) {

              int num=lines-i+1;

            char ch = (char) ((64 + lines)-i+1);
            for (int j = 1; j <= lines - i + 1; j++) {
                if(i%2==0){
                    System.out.print(ch+" ");
                }else{
                    System.out.print(num+" ");
                }
                num--;
                ch--;

            }
            System.out.println();
        }
        System.out.println("///////////////////////////////////////////######$######////////////////////////////////////////////////////");

    }
    static void Print10(int lines) {

        int num=1;
        for (int i = 1; i <= lines; i++) {
            for (int j = 1; j <= lines - i + 1; j++) {

                System.out.print(num + " ");
                num++;
            }
            num=num-1;
            System.out.println();
        }
        System.out.println("///////////////////////////////////////////######$######////////////////////////////////////////////////////");

    }
    static void Print11(int lines) {

        int num;
        for (int i = 1; i <= lines; i++) {
            num=lines;
            for (int j = 1; j <= lines - i + 1; j++) {

                System.out.print(num + " ");
                num--;
            }
            System.out.println();
        }
        System.out.println("///////////////////////////////////////////######$######////////////////////////////////////////////////////");

    }
    static void factRange(int start,int end){


        for(int i=start; i<=end;i++){
            int fact=1;
            for(int j=1; j<=i;j++){
                fact*=j;
            }
            System.out.println("Factorial of "+i+" is"+fact);
        }
    }
        public static void main(String[] args) {


        Scanner sc=new Scanner(System.in);
        System.out.println("Enter A number of lines:");
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
        Print10(Rows);
        Print11(Rows);
        factRange(1,5);

    }
}
