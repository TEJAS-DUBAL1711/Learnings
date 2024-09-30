package DSA.TCSNQT.Array;

import java.util.Arrays;

//Remove Duplicates from unsorted array:
//we can use hashset or hashmap if extra space is allowed
public class p6 {

    public static void main(String[] args) {

        int[]arr=new int[]{1,2,3,4,2,4,6,7};

        Arrays.sort(arr);//first sort the array

        int j=0;
        int n=arr.length;

        for(int i=0; i<n-1;i++){

            if(arr[i]!=arr[i+1]){
                arr[j]=arr[i];
                j++;
            }

        }
        arr[j]=arr[n-1];
      for(int i=0; i<j;i++){
          System.out.println(arr[i]);
      }



    }
}
