package DSA.TCSNQT.Array;

public class p1 {

    public static void main(String[] args) {
        int[]arr=new int[]{1,2,3,4,0,4,5,7};

        int min=Integer.MAX_VALUE;

        for(int i=0; i<arr.length;i++){

            if(arr[i]<min){
                min=arr[i];
            }
        }
        System.out.println(min);
    }
}
