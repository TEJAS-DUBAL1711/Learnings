package DSA.TCSNQT.NumberProblems;
//*Strong Number*: Check if a number is a strong number (where the sum of the factorial of its digits equals the number itself).


import java.util.Scanner;

public class Strong {


    public static void main(String[] args) {
        System.out.println("Enter number:");
        int num= new Scanner(System.in).nextInt();
        int temp =num;
        int sum=0;

        while(temp!=0){
            int rem=temp%10;
            int fact=1;

            for(int i=1; i<=rem;i++){

                fact=fact*i;

            }

            sum=sum+fact;
            temp=temp/10;

        }

        if(num==sum){
            System.out.println("its strong:");
            System.out.println(sum);
        }else{
            System.out.println("Its not");
            System.out.println(sum);
        }
    }

}
