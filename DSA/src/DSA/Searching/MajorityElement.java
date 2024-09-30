package DSA.Searching;

import java.util.HashMap;
import java.util.Map;

public class MajorityElement {

// Majority number is greater than n/2
    public static void main(String[] args) {
        int[]arr=new int[]{4,4,2,4,2,5,4,2,4,2,4,6,4,4};

//        Map<Integer,Integer> mp=new HashMap<>(); //we are taking extra variable that is not valid
//
//        for(int i=0;i<arr.length;i++){
//
//            mp.put(arr[i],mp.getOrDefault(arr[i],0)+1);
//        }
//
//        for(Map.Entry<Integer, Integer> x:mp.entrySet()){
//
//            if(arr.length/2< x.getValue()){
//                System.out.println(x.getKey());
//                return;
//
//            }
//        }
//        System.out.println("not found");

        //Moore's Voting Algorithm

        int ele = 0;
        int count=0;
        for(int i=0; i<arr.length;i++){

            if(count==0){
                ele=arr[i];
            }else if(arr[i]==ele){
                count++;
            }else{
                count--;
            }

        }
        count=0;
        for(int i=0; i<arr.length;i++){
            if(ele==arr[i]){
                count++;
            }
        }

        if(count>arr.length/2){
            System.out.println(ele);
        }else{
            System.out.println("not found");
        }

    }
}
