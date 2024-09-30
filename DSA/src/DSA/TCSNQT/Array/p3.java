package DSA.TCSNQT.Array;
//Rearranging array in increasing and decreasing order

import java.util.Arrays;

public class p3 {


    public static void main(String[] args) {
        int arr[] = {1,2,3,4,5,6,7,8,9};

        Arrays.sort(arr);
        int start = arr.length / 2;
        int end = arr.length - 1;

        for (int x : arr) {
            System.out.print(x);
        }
        System.out.println();
        System.out.println("AFTER arranging");

        while (start < end) {
            int temp = arr[start];
            arr[start] = arr[end];
            arr[end] = temp;
            start++;
            end--;
        }
        for (int x : arr) {
            System.out.print(x);
        }
    }
}
