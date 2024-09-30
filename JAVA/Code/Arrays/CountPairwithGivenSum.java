package Arrays;

import java.util.HashSet;
/*
class Solution7 {
    int getPairsCount(int[] arr, int n, int k) {
        HashSet<Integer> hs=new HashSet();
        int count=0;
        for(int i=0; i<arr.length;i++){

            if(hs.contains(k-arr[i])){
                count++;
                hs.add(arr[i]);
            }else{
                hs.add(arr[i]);
            }
        }
        return count;
    }

    public static void main(String[] args) {
        int[]arr=new int[]{1, 5, 7, 1};
        System.out.println(new Solution7().getPairsCount(arr,4,6));
    }

} */
