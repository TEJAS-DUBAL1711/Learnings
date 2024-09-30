package com.OOP.Generics;

import java.util.ArrayList;

class Parent{


}
class Child1 extends  Parent{


}
class Child2 extends  Parent{

}

public class WildCard {

//? = unknown datatype type is not known we will use it with upperbound and lowerbound
    public static void main(String[] args) {
        ArrayList <? super Parent> list=new ArrayList<>();
        Parent obj1=new Parent();
        Child1 obj2=new Child1();
        Child2 obj3=new Child2();
        Object obj4=new Object();
        list.add(obj1);
        list.add(obj2);
        list.add(obj3);


    }
}
