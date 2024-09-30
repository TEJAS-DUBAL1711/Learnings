package DSA;

class Solution{
    static int evenlyDivides(int N){

        int ON=N;
        int count=0;

        while(N!=0){

            int rem=N%10;


                if (ON % rem == 0) {
                    count++;
                }

            N=N/10;
        }
        
        return count;
    }

    public static void main(String[] args) {
        System.out.println(evenlyDivides( 2446));
    }
}