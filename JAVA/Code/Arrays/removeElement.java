package Arrays;
import  java.util.*;

class Solution4 {
    public int removeElement(int[] nums, int val) {
        Arrays.sort(nums);

        int newIndex=0;

        for (int num : nums) {

            if (num != val) {
                nums[newIndex]=num;
                newIndex++;
            }

        }
        return newIndex ;
    }

    public static void main(String[] args) {
        int []arr=new int[]{0,1,2,2,3,0,4,2};

        System.out.println(new Solution4().removeElement(arr,2));
        
    }
}