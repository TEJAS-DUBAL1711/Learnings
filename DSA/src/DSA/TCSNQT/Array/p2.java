package DSA.TCSNQT.Array;
//Find second Smallest and Second largest element in array
public class p2 {


    public static void main(String[] args) {
        int[]arr=new int[]{87,90,45,2346,678,345,};


        int min=Integer.MAX_VALUE;
        int secondMin=Integer.MAX_VALUE;
        int max=Integer.MIN_VALUE;
        int secondMax=Integer.MIN_VALUE;

        for(int i=0; i<arr.length;i++){

            if(arr[i]>max){
                secondMax=max;
                max=arr[i];
            }else if(arr[i]>secondMax&&arr[i]<max){
                secondMax=arr[i];

            }
            if(arr[i]<min){
                secondMin=min;
                min=arr[i];
            }else if(secondMin>arr[i]&&arr[i]>min){
                secondMin=arr[i];
            }
        }

        System.out.println(secondMax);
        System.out.println(secondMin);

    }
}
