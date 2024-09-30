package DSA.Array.SUBARRAY;

import java.util.Scanner;

// find the shortest subArray  contanning max and min return length
public class p1 {

    public static void main(String[] args) {
        Scanner sc=new Scanner(System.in);
        System.out.println("Enter a array size:");
        int size=sc.nextInt();

        int[]arr=new int[size];
        System.out.println("Enter a array elements:");
        for(int i=0; i<arr.length;i++){
            arr[i]=sc.nextInt();
        }

        for(int i=0; i<arr.length;i++){
            for(int j=i; j<arr.length; j++){
                for(int k=i; k<=j;k++){
                    System.out.print(arr[k]);
                }
                System.out.println();
            }
        }


    }

}
