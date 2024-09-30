package DSA.TCSNQT.NumberProblems;
//*GCD (Greatest Common Divisor)*: Compute the GCD of two numbers.

import java.util.ArrayList;

public class GCD {

    public static void main(String[] args) {

        int num1=18;
        int num2=48;
        int GCD=0;


        for(int i=1; i<num1;i++){
            int temp=0;
            if(num1%i==0&&num2%i==0){

                temp=i;
            }
            if(GCD<temp){
                GCD=temp;

            }
        }


        System.out.println(GCD);

    }
}
