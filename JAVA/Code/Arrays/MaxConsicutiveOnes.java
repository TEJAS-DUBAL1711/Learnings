package Arrays;
import java.util.*;
class Solution8 {

    public int findMaxConsecutiveOnes(int[] nums) {

        int count=0;
        int max=0;
        for(int i=0;i<nums.length;i++){
            if(nums[i]==0){

                if(count>max){
                    max=count;
                }
                count=0;
            }else{
                count++;
            }
        }
        if(count>max){
            max=count;
        }
        return max;
    }

    public static void main(String[] args) {
        int[]arr=new int[]{1,0,1,1,0,1};
        System.out.println(new Solution8().findMaxConsecutiveOnes(arr));
    }
}