package DSA.SortingAlgorithems;

import java.util.Arrays;

public class BubbleSort {


    public static void main(String[] args) {
        int[]arr=new int[]{4,2,5,7,6,14,9,8,};
        int size=arr.length;
        System.out.println(Arrays.toString(arr));


        for(int i=0; i<size;i++){

            for(int j=0;j<size-i-1;j++){

                if(arr[j]>arr[j+1]){
                    int temp=arr[j];
                    arr[j]=arr[j+1];
                    arr[j+1]=temp;
                }
            }
        }
        System.out.println(Arrays.toString(arr));
    }
}
