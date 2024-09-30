package Arrays;
import java.util.*;


class Solution6 {

    static ArrayList<Integer> leaders(int arr[], int n) {

        ArrayList<Integer> al = new ArrayList();
        int max = arr[n - 1];
        al.add(arr[n - 1]);
        for (int i = n - 2; i >= 0; i--) {

            if (arr[i] > max) {
                al.add(arr[i]);
                max=arr[i];
            }

        }

        return al;
    }


    public static void main(String[] args) {

        int[] arr = new int[]{16, 17, 4, 3, 5, 2};
        Solution6 obj = new Solution6();
        ArrayList<Integer> al = obj.leaders(arr, 6);

        for(int x:al){
            System.out.println(x);
        }
    }
}