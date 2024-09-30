package DSA.IterateOnHashMap;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

//Using enhancedForloop or also called as ForEach loop
public class Method3 {

    public static void main(String[] args) {
        HashMap<Integer,String> hm=new HashMap<>();
        hm.put(10,"Tejas");
        hm.put(20,"Shrenik");

       for(Map.Entry<Integer,String> entry:hm.entrySet()){
           System.out.println(entry.getKey()+"::"+entry.getValue());


        }
    }

}
