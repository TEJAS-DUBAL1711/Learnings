package com.OOP.Comparable_Comparator;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

class Company {

    String name;
    int id;

    public Company(String name, int id) {
        this.name = name;
        this.id = id;
    }

    @Override
    public String toString() {

        return "["+name+" : "+id+"]";
    }
}
class TJ7{
    public static void main(String[] args) {

        List <Company>list=new ArrayList<>();
        list.add(new Company("Tejas",119));
        list.add(new Company("Atharv",128));
        list.add(new Company("Ashish",117));
        list.add(new Company("Sahil",116));
        list.add(new Company("Rakesh",115));

        Comparator<Company> obj=( o1,o2 )-> o1.id %10<o2.id%10 ? 1:-1;
        System.out.println(list);
        Collections.sort(list,obj);
        for(Company c:list){
            System.out.println(c);
        }


    }
}
