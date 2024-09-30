package Arrays;

import java.util.HashMap;

class Solution1 {

    public static int firstRepeated(int[] arr, int n) {
        HashMap<Integer,Integer> hm=new HashMap();


        for(int i=0; i<arr.length;i++){
            if(hm.containsKey(arr[i])){
                hm.put(arr[i],2);
            }else{
                hm.put(arr[i],1);
            }
        }
        for(int i=0; i<arr.length;i++){
            if(hm.get(arr[i])>=2){
                return  i+1;
            }
        }
        return  -1;
    }

    public static void main(String[] args) {
        int[]arr=new  int[]{1, 5, 3, 4, 3, 5, 6};
        Solution1 obj=new Solution1();
        System.out.println(obj.firstRepeated(arr,7));
    }
}