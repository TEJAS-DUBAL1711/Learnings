package DSA.TCSNQT.Array;
//find all repeating elements in an array:
import java.util.*;
public class p8 {

    public static void main(String[] args) {
        int arr[]=new int[]{1,2,3,2,3,4,5,4,6,7};

        Map<Integer,Integer> mp=new HashMap<>();


        for(int i=0; i<arr.length;i++){
            mp.put(arr[i],mp.getOrDefault(arr[i],0)+1);
        }

    }
}

