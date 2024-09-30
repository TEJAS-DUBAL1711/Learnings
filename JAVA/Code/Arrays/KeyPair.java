package Arrays;

import java.util.HashSet;

class Solution2 {
    boolean hasArrayTwoCandidates(int arr[], int n, int x) {

        HashSet<Integer> hs=new HashSet<>();

        for(int i=0; i<arr.length;i++){

            int no=x-arr[i];

            if(hs.contains(no)){
                return  true;
            }else{
                hs.add(arr[i]);
            }
        }
        return false;
    }

    public static void main(String[] args) {
        int[]arr=new int[]{1, 2, 4, 3, 6};
        Solution2 obj=new Solution2();
        System.out.println(obj.hasArrayTwoCandidates(arr,6,16));
    }
}