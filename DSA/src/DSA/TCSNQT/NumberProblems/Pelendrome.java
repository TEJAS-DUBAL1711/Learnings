package DSA.TCSNQT.NumberProblems;
//Palindrome*: Check if a number is a palindrome.
public class Pelendrome {

    public static void main(String[] args) {


        int num=845;
        int temp=num;
        int pel=0;

        while(temp!=0){

            int rem=temp%10;
            pel=pel*10+rem;
            temp=temp/10;
        }
        if(num==pel){
            System.out.println("its pelendrome");
            System.out.println(pel);
        }else{
            System.out.println("not pelendrome");
        }
    }
}
