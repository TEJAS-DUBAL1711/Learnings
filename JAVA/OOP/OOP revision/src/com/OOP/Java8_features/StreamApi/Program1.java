package com.OOP.Java8_features.StreamApi;

import java.util.Arrays;
import java.util.List;
import java.util.function.BinaryOperator;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.stream.Stream;

public class Program1 {


    public static void main(String[] args) {
        List<Integer> list= Arrays.asList(1, 2, 3, 4, 5, 6, 7);

//        Consumer<Integer> obj= i -> System.out.println(i);
//
//        list.forEach(obj);
//        int sum=0;
//        for(int i:list){
//            if(i%2==0){
//                int n=i*2;
//                sum=sum+n;
//            }
//        }
//        System.out.println(sum);

        //Predicate<Integer> predicate= n -> n%2==0; filter Predicate interface parameter ghete.
       // Function<Integer,Integer>funcation=i-> i*2; map Funcation interface parameter ghete.

        //Using stream api you and apply filters and more 
//        Stream<Integer> stream=list.stream();
//        int result=stream.filter(i->i%2==0).map(i-> i*2).reduce(0,(c,e)->c+e);
//        System.out.println(result);

        Stream<Integer> stream=list.stream();
        Stream<Integer> result=stream.filter(i->i%2==0).sorted();
        result.forEach(i-> System.out.println(i));
    }
}
// their are some extra important topics in their telusko cource check it out Parallel Stream,Optional class,Method Reference,Constructor reference