package com.OOP.Abstract;


abstract public class AbstractDemo {
    int x;

    static void fun() {
        System.out.println("we can define static method in abstract class\nbecause static dont have any relation with instance ");
    }

    abstract void career();
    void gun(){
        System.out.println("in abstract class their is 0 to 100 abstraction we can define all methodes abstract also");
    }
}
class CHILD extends  AbstractDemo{
    void career(){
        System.out.println("Coder");
    }
}
class Client{
    public static void main(String[] args) {
        AbstractDemo.fun();
        CHILD obj=new CHILD();
        obj.gun();
        obj.career();
    }
}