package DSA.SortingAlgorithems;

import java.util.Arrays;
//Asc
public class SelectionSort {

    public static void main(String[] args) {
        int[]arr=new int[]{6,5,2,9,8,4};
        int size=arr.length;

        System.out.println("Before sorting");
        System.out.println(Arrays.toString(arr));

        for(int i=0; i<size-1;i++){
            int minIndex=i;

            for(int j=i+1; j<size;j++){

                if(arr[j]<arr[minIndex]){
                    minIndex=j;
                }
            }
            int temp =arr[minIndex];
            arr[minIndex]=arr[i];
            arr[i]=temp;

        }
        System.out.println("Before sorting");
        System.out.println(Arrays.toString(arr));
    }
}
