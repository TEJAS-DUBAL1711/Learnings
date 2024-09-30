package DSA.TCSNQT.NumberProblems;
//*Perfect Number*: Check if a number is a perfect number
public class PerfectNo {

    public static void main(String[] args) {


        int perfect=28;
        int sum=0;

        for(int i=1; i<perfect;i++){

            if(perfect%i==0){
                sum+=i;
            }
        }
        if(perfect==sum){
            System.out.println("its perfect");
            System.out.println(sum);
        }
    }
}
