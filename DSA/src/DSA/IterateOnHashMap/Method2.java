
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

//using keySet()
public class Method2 {

    public static void main(String[] args) {
        HashMap<Integer,String> hm=new HashMap<>();
        hm.put(10,"Tejas");
        hm.put(20,"Shrenik");

        Iterator<Integer> ketSet=hm.keySet().iterator();

        while(ketSet.hasNext()){
            Integer key=ketSet.next();
            System.out.println(key);
            System.out.println(hm.get(key));
        }
    }

}
