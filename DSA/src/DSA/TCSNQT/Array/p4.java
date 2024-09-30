package DSA.TCSNQT.Array;

import java.util.Scanner;

//Rotate array by K elements
public class p4 {
    public static void main(String[] args) {
        int arr[]=new int[]{1,2,3,4,5,6,7,8};
        System.out.println("Enter K:");

        int k=new Scanner(System.in).nextInt();

        if(k>arr.length){
            k=k%arr.length;
        }
        for(int x:arr){
            System.out.print(x);
        }
        System.out.println();
        rotate(arr,0,k-1);
        rotate(arr,k,arr.length-1);
        rotate(arr,0,arr.length-1);
        System.out.println("after rotating ::::=");
        for(int x:arr){
            System.out.print(x);
        }

    }

    static void rotate(int[]arr,int start,int end){

        while(start<end){
            int temp=arr[start];
            arr[start]=arr[end];
            arr[end]=temp;
            start++;
            end--;

        }


    }
}
