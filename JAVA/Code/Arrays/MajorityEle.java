package Arrays;
import java.util.Arrays;
import java.util.HashMap;

class Solution5 {
    public int majorityElement(int[] nums) {
        HashMap<Integer,Integer> mp=new HashMap();
        int lenght=nums.length/2;
       Arrays.sort(nums);
        for(int i=1; i<nums.length;i++){

           if(mp.containsKey(nums[i])){
               mp.put(nums[i],mp.get(nums[i])+1);
           }else{
               mp.put(nums[i],1);
           }
           if(mp.get(nums[i])>=lenght){
               return nums[i];
           }

        }
        return 0;
    }

    public static void main(String[] args) {
        int[]arr=new int[]{2,2,1,1,1,2,2};
        Solution5 obj=new Solution5();
        System.out.println(obj.majorityElement(arr));
    }
}