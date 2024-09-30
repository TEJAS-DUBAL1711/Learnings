package com.OOP.Static;

public class Singleton {


    public static void main(String[] args) {

        SingletonDemo obj=SingletonDemo.getx(10,"tejas");
        System.out.println(obj.hashCode());
        SingletonDemo obj1=SingletonDemo.getx(10,"tejas");
        System.out.println(obj1.hashCode());
        System.out.println( obj1.str);
        SingletonDemo obj2=SingletonDemo.getx(15,"dubal");
        System.out.println(obj2.str);
        obj2.str="123";
        System.out.println(obj1.str);
        System.out.println(obj2.hashCode());

    }
}
class SingletonDemo{
    int x;
    String str;

     private SingletonDemo(int x,String str){
        this.x=x;
        this.str=str;
    }
    static SingletonDemo obj;
    static SingletonDemo getx(int x,String str){

        if(obj==null) {
            obj = new SingletonDemo(x, str);
        }
        return obj;
    }
}