package DSA.TCSNQT.NumberProblems;
/**Happy Number*: Determine if a number is a happy number (a number that eventually reaches 1
 when replaced by the sum of the square of its digits).
*/

import java.io.*;
public class Happy {


    public static void main(String[] args) {
        BufferedReader br=new BufferedReader(new InputStreamReader(System.in) );
        int num=23;
        int temp=num;
        int sum=0;
        while(temp!=0){
            int rem=temp%10;
            int s=rem*rem;
            sum=sum+s;

            if(temp==0){
                temp=sum;
            }
            if(sum==1){
                System.out.println("Happy number");
                System.out.println(sum);
                break;
            }
        }
    }
}
