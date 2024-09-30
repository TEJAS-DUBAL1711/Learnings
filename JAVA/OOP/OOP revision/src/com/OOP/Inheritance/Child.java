package com.OOP.Inheritance;

public class Child extends Parent {

    int y=0;

    public static void main(String[] args) {

        Parent obj=new Child();
        System.out.println(obj.car);
        System.out.println(obj.str);
      // System.out.println(obj.y); /// you cant access variable in child if you are using  Parent to store it.
      //  Child obj1= new Parent(); you can't store parent in child
        Child obj3= new Child();// you can access all the methodes and variables of both.

        System.out.println(obj3.str);
        System.out.println(obj3.y);
        System.out.println(obj3.car);
    }

}
