package DSA.IterateOnHashMap;


import java.security.Key;
import java.util.HashMap;
import java.util.Map;
//using ForEach  (Lambda Expression)
public class Method4 {

    public static void main(String[] args) {
        HashMap<Integer,String> hm=new HashMap<>();
        hm.put(10,"Tejas");
        hm.put(20,"Shrenik");
        hm.put(30,"as");
        hm.put(50,"ik");
        hm.put(60,"Tejas");
        hm.put(70,"nik");
        hm.put(80,"Tas");
        hm.put(90,"Shrik");

        hm.forEach((Key, Value)->{
            System.out.println(Key+":"+Value);


        });


    }


}

