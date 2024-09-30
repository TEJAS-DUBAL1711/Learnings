package Arrays;
import java.util.*;
class Solution {
    public int singleNumber(int[] nums) {

        Arrays.sort(nums);

        if(nums.length==1){
            return nums[0];
        }
        if(nums[0]!=nums[1]){
            return nums[0];
        }
        if(nums[nums.length-1]!=nums[nums.length-2]){
            return nums[nums.length-1];
        }
        for(int i=1; i<nums.length-1;i++){
            if(nums[i]!=nums[i-1]&&nums[i]!=nums[i+1]){
                return nums[i];
            }
        }

        return -1;

    }

    public static void main(String[] args) {
        int[]arr=new int[]{4,1,2,1,2};
        Solution obj=new Solution();
        System.out.println(obj.singleNumber(arr));
    }

}