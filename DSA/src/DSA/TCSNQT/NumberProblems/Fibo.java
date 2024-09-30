package DSA.TCSNQT.NumberProblems;
//Fibonacci Sequence:
//Generate the Fibonacci sequence up to a given number of terms or find the Nth term.

import java.util.Scanner;

public class Fibo {

    public static void main(String[] args) {
        Scanner sc=new Scanner(System.in);
        System.out.println("Enter a number:");
        int num=sc.nextInt();

        int a=0,b=1;


//        for (int i = 1; i <=num; i++) {
//            System.out.print(a + " ");
//            int nextTerm = a + b;
//            a = b;
//            b = nextTerm;
//        }
        int i=1;
        while(i<=num){
            System.out.println(a+"");
            int nextterm=a+b;
            a=b;
            b=nextterm;
            i++;
        }


    }

}

