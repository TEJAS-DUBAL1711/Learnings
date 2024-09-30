package DSA.Array;

import java.text.spi.BreakIteratorProvider;

//Replace all 0's with 5 GFG
public class Program1 {


    static int replace(int num){

        String numStr=Integer.toString(num);

        return Integer.parseInt(numStr.replace('0','5'));

    }
    public static void main(String[] args) {

        System.out.println(replace(1004));

    }


}
