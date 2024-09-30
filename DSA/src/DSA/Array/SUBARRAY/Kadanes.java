package DSA.Array.SUBARRAY;

import java.util.Arrays;
import java.util.Scanner;

public class Kadanes {

    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);
        System.out.println("Enter a array size:");
        int size = sc.nextInt();

        int[] arr = new int[size];
        System.out.println("Enter a array elements:");
        for (int i = 0; i < arr.length; i++) {
            arr[i] = sc.nextInt();
        }

        int maxSum = 0;
        int currentSum = 0;

        for (int i = 0; i < arr.length; i++) {

            currentSum += arr[i];
            if (arr[i] < 0) {
                currentSum = 0;
            }
            maxSum = Math.max(currentSum, maxSum);
        }
        System.out.println(maxSum);
    }
}
