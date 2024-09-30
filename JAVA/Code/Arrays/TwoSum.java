package Arrays;

import java.util.HashMap;
import java.util.HashSet;

class Solution3 {
    public int[] twoSum(int[] nums, int target) {

        HashMap<Integer,Integer> hm=new HashMap<>();
        HashSet<Integer> hs=new HashSet<>();

        int num1=0;
        int num2=0;
        int[]ret=new int[2];

        for(int i=0; i<nums.length;i++){

            if(hm.containsKey(target-nums[i])){

                num1=i;
                num2=hm.get(target-nums[i]);


                ret[0]=num1;
                ret[1]=num2;
                return ret;
            }else{
                hm.put(nums[i],i);
            }

        }

        return ret;


    }

    public static void main(String[] args) {
        int[]arr=new int[]{2,7,11,15};

        int[]ret=new Solution3().twoSum(arr,9);

        for(int i=0; i<ret.length;i++){
            System.out.println(ret[i]);
        }

    }
}