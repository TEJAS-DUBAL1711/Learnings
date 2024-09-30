package com.OOP.Java8_features.StreamApi;

import java.util.Arrays;
import java.util.List;
import java.util.function.Consumer;

// Consumer is funcational interface
public class ForEach {

    public static void main(String[] args) {
        List<Integer> list= Arrays.asList(1, 2, 3, 4, 5, 6, 7);

//        for(int x:list){
//            System.out.println(x);
//        }
        Consumer<Integer> obj= i -> System.out.println(i);

        list.forEach(obj);
    }
}
