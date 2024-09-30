package DSA.Array.SUBARRAY;

import java.util.Arrays;
import java.util.Scanner;

public class maxSum {

    public static void main(String[] args) {
        Scanner sc=new Scanner(System.in);
        System.out.println("Enter a array size:");
        int size=sc.nextInt();

        int[]arr=new int[size];
        System.out.println("Enter a array elements:");
        for(int i=0; i<arr.length;i++){
            arr[i]=sc.nextInt();
        }
//        int maxSum=0;
//        for(int i=0; i<arr.length;i++){
//
//            for(int j=i; j<arr.length; j++){
//                int sum=0;
//                for(int k=i; k<=j;k++){
//                    sum+=arr[k];
//                    System.out.print(arr[k]);
//
//                }
//                System.out.println();
//                maxSum=Math.max(maxSum,sum);
//
//            }
//        }
//        System.out.println(maxSum);

                    int[]prefixSum=new int[arr.length];
                    prefixSum[0]=arr[0];
                    for(int i=1; i<arr.length;i++){
                        prefixSum[i]+=arr[i];
                    }
                    System.out.println(Arrays.toString(prefixSum));
                    int maxSum=0;
                    for(int i=0; i<arr.length;i++){
                        int sum=0;
                        for(int j=i+1; j<arr.length;j++){
                            sum=prefixSum[i]-arr[j];
                        }
                        maxSum=Math.max(maxSum,sum);
                    }
                    System.out.println(maxSum);

    }
}
