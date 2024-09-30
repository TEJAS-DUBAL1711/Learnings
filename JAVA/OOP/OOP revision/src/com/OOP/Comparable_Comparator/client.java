package com.OOP.Comparable_Comparator;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;

public class client{


    public static void main(String[] args) {

        List<Student> list=new ArrayList<>();
        list.add(new Student(13,"Omkar"));
        list.add(new Student(11,"Tejas"));
        list.add(  new Student(12,"Shrenik"));


        Comparator<Student> obj=(o1,o2)->o1.sId>o2.sId?1:-1;

        list.forEach((i)-> System.out.println(i.sId+" "+i.name));


        list.sort(obj);
        list.forEach((i)-> System.out.println(i.sId+" "+i.name));


    }

}
