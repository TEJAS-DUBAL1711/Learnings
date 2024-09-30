package DSA.TCSNQT.NumberProblems;

import java.io.*;

public class Prime_number {
    public static void main(String[] args)throws IOException {
        BufferedReader br=new BufferedReader(new InputStreamReader(System.in));
        int Num;
        System.out.println("Enter Number to Verify:");
        Num=Integer.parseInt(br.readLine());
        int count=0;
        for(int i=1; i<=Num; i++){

            if(Num%i==0){
                count++;
            }

        }
        if(count==2){
            System.out.println("Entered Number is Prime$$$$");
        }else{
            System.out.println("Not a Prime number");
        }


    }
}
