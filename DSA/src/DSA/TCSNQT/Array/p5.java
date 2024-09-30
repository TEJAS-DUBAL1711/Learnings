package DSA.TCSNQT.Array;

public class p5 {

    public static void main(String[] args) {

        int[]arr=new int[]{1,2,4,5,7,8,9,10};


        if(arr.length%2==0) {
            int ind1=arr.length/2;
            int ind2=(arr.length/2)-1;

            System.out.println(arr[ind1+ind2/2]);


        }else{
            int median = arr.length/2;

            System.out.println(arr[median]);

        }
    }
}
