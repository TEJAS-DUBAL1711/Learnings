package DSA.TCSNQT.Basic;
import java.util.*;
class Solution {
   static void leftRotate(int arr[], int d) {
       d=d%arr.length;
        int n=arr.length;

        reverse(arr,0,n-1);
        reverse(arr,0,d-1);
        reverse(arr,d,n-1);

        for(int x:arr){
            System.out.println(x);
        }
        // code here


    }

   static void reverse(int[]arr,int start,int end){

        while(start<end){
            int temp=arr[start];
            arr[start]=arr[end];
            arr[end]=temp;
            start++;
            end--;
        }
    }

    public static void main(String[] args) {

       int[]arr=new int[]{1,2,3,4,5};
       int k=2;
       leftRotate(arr,k);

    }
}

