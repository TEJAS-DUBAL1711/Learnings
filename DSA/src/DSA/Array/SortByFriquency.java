package DSA.Array;
import java.util.*;
public class SortByFriquency {

    public static void main(String[] args) {
        int[]arr=new int[]{1,2,1,2,3,2,3,4,3,4,4,4,4};

        Map<Integer,Integer> mp=new HashMap();

        for(int i=0; i<arr.length; i++){
            mp.put(arr[i],mp.getOrDefault(arr[i],0)+1);
        }
        List<Map.Entry<Integer,Integer>> list=new ArrayList<>(mp.entrySet());

        Collections.sort(list,(o1, o2)->o1.getValue()-o1.getValue());

        for(Map.Entry<Integer,Integer> entry:list){
            System.out.println(entry.getKey()+":"+entry.getValue());
        }

    }
}
