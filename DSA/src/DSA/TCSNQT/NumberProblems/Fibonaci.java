package DSA.TCSNQT.NumberProblems;

import java.io.*;

//Fibonacci Sequence*: Generate Fibonacci numbers up to a certain limit.
public class Fibonaci {


    public static void main(String[] args)throws IOException {
        BufferedReader br=new BufferedReader(new InputStreamReader(System.in));
        int num=Integer.parseInt(br.readLine());

        int a=0;
        int b=1;
        int i=1;
        while(i<=num){
            System.out.println(a);
            int c=a+b;
            a=b;
            b=c;
            i++;
        }
    }
}
