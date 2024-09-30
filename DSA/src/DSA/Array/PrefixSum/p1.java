package DSA.Array.PrefixSum;

public class p1 {

    //equilibrium constant
    public static void main(String[] args) {
        //in place prefixsum
        int[]arr=new int[]{-1,1,5,2,-4,3,0};
        int leftsum=arr[0];
        int rightsum=0;
        int sum=0;
        for(int i=0; i<arr.length;i++){
            sum+=arr[i];

        }

        for(int i=1; i<arr.length;i++){

            rightsum=sum-arr[i];
            if(leftsum==rightsum){
                System.out.println("Yes equilibrium constant:" +i);
                return;
            }
            leftsum+=arr[i];
        }


    }
}
