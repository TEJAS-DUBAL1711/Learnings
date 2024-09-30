package DSA.IterateOnHashMap;

import java.security.KeyStore;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public class Method1 {

    public static void main(String[] args) {
        HashMap<Integer,String> hm=new HashMap<>();
        hm.put(10,"Tejas");
        hm.put(20,"Shrenik");

        Iterator<Map.Entry<Integer,String>> iterator=hm.entrySet().iterator();
        while(iterator.hasNext()){
//            System.out.println(iterator.next().getKey());
//            System.out.println(iterator.next().getValue()); you cant do like that because aevery call of next goes to next object it means next call itself iterate , means first call of hext is on the 10 after second next iterator is on 20 after instruction for next iteration of while iterator checks for hasnext() but their is no next thats why so better way we can get that object inside the while means store

            Map.Entry<Integer,String>entry=iterator.next(); // know it on the 20 means second object {means throws existing object and move next }

            System.out.println(entry.getKey()+":"+entry.getValue());
        }
    }
}
